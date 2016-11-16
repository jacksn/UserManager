package by.jackson.usermanager.service;

import by.jackson.usermanager.model.User;

import java.util.List;

public interface UserService
{
    int createUser(User user);

    User updateUser(User user);

    void deleteUser(int id);

    List<User> getAllUsers(int page);

    User getUser(int id);

    List<User> getAllUsers(String userName);

    int getUserCount();
}
