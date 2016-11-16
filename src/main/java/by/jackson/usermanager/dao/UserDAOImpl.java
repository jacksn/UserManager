package by.jackson.usermanager.dao;

import by.jackson.usermanager.model.User;
import by.jackson.usermanager.util.HibernateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Repository
public class UserDAOImpl implements UserDAO
{
    @Autowired
    private HibernateUtil hibernateUtil;

    @Override
    public int createUser(User user) {
        user.setCreatedDate(new Timestamp(new Date().getTime()));
        return (int) hibernateUtil.create(user);
    }

    @Override
    public User updateUser(User user) {
        return hibernateUtil.update(user);
    }

    @Override
    public void deleteUser(int id) {
        User user = new User();
        user.setId(id);
        hibernateUtil.delete(user);
    }

    @Override
    public List<User> getAllUsers(int page) {
        return hibernateUtil.fetchAll(User.class, User.ITEMS_PER_PAGE, page);
    }

    @Override
    public User getUser(int id) {
        return hibernateUtil.fetchById(id, User.class);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<User> getAllUsers(String userName) {
        String query = "SELECT e.* FROM users e WHERE e.name like '%" + userName + "%'";
        List<Object[]> userObjects = hibernateUtil.fetchAll(query);
        List<User> users = new ArrayList<User>();
        for (Object[] userObject : userObjects) {
            User user = new User();
            int id = (int) userObject[0];
            String name = (String) userObject[1];
            int age = (int) userObject[2];
            boolean isAdmin = (boolean) userObject[3];
            Timestamp createdDate = (Timestamp) userObject[4];
            user.setId(id);
            user.setName(name);
            user.setAge(age);
            user.setAdmin(isAdmin);
            user.setCreatedDate(createdDate);
            users.add(user);
        }
        System.out.println(users);
        return users;
    }

    @Override
    public int getUserCount() {
        return (int) ((long) hibernateUtil.getCount(User.class));
    }
}