package by.jackson.usermanager.service;

import by.jackson.usermanager.dao.UserDAO;
import by.jackson.usermanager.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class UserServiceImpl implements UserService
{
    @Autowired
    private UserDAO userDAO;

    @Override
    public int createUser(User user) {
        return userDAO.createUser(user);
    }

    @Override
    public User updateUser(User user) {
        return userDAO.updateUser(user);
    }

    @Override
    public void deleteUser(int id) {
        userDAO.deleteUser(id);
    }

    @Override
    public List<User> getAllUsers(int page) {
        return userDAO.getAllUsers(page);
    }

    @Override
    public User getUser(int id) {
        return userDAO.getUser(id);
    }

    @Override
    public List<User> getAllUsers(String userName) {
        return userDAO.getAllUsers(userName);
    }

    @Override
    public int getUserCount() {
        return userDAO.getUserCount();
    }
}
