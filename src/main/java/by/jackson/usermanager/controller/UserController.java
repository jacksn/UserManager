package by.jackson.usermanager.controller;

import by.jackson.usermanager.model.User;
import by.jackson.usermanager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.logging.Logger;


@Controller
public class UserController
{
    private static final Logger logger = Logger.getLogger("");

    @Autowired
    private UserService userService;

    public UserController() {
        System.out.println("UserController()");
    }

    @RequestMapping("createUser")
    public ModelAndView createUser(@ModelAttribute User user) {
        logger.info("Creating user. Data: " + user);
        return new ModelAndView("userForm");
    }

    @RequestMapping("editUser")
    public ModelAndView editUser(@RequestParam int id, @ModelAttribute User user) {
        logger.info("Updating the user for the Id " + id);
        user = userService.getUser(id);
        return new ModelAndView("userForm", "userObject", user);
    }

    @RequestMapping("saveUser")
    public ModelAndView saveUser(@ModelAttribute User user) {
        logger.info("Saving the user. Data : " + user);
        if (user.getId() == 0) { // if userService id is 0 then creating the userService other updating the userService
            this.userService.createUser(user);
        } else {
            this.userService.updateUser(user);
        }
        return new ModelAndView("redirect:getAllUsers");
    }

    @RequestMapping("deleteUser")
    public ModelAndView deleteUser(@RequestParam int id) {
        logger.info("Deleting the user. Id : " + id);
        userService.deleteUser(id);
        return new ModelAndView("redirect:getAllUsers");
    }

    @RequestMapping(value = {"getAllUsers", "/"})
    public ModelAndView getAllUsers(@RequestParam(required = false) Integer page) {
        logger.info("Getting all users.");
        if (page == null) page = 1;
        final int userCount = userService.getUserCount();
        int pagesCount = userCount / User.ITEMS_PER_PAGE;
        if (userCount % User.ITEMS_PER_PAGE > 0) pagesCount++;

        if (page > userCount / User.ITEMS_PER_PAGE) {
            page = pagesCount;
        }
        if (userCount <= User.ITEMS_PER_PAGE) {
            page = 1;
        }
        List<User> userList = userService.getAllUsers(page);
        ModelAndView modelAndView = new ModelAndView("userList");
        modelAndView.addObject("userList", userList);
        modelAndView.addObject("page", page);
        modelAndView.addObject("pagesCount", pagesCount);
        modelAndView.addObject("itemsPerPage", User.ITEMS_PER_PAGE);
        return modelAndView;
    }

    @RequestMapping("searchUser")
    public ModelAndView searchUser(@RequestParam("searchName") String searchName) {
        logger.info("Searching the users. Found: " + searchName);
        List<User> userList = userService.getAllUsers(searchName);
        return new ModelAndView("userList", "userList", userList);
    }
}