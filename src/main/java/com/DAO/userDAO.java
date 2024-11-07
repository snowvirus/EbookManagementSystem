package com.DAO;

import com.entity.User;

public interface userDAO {

    public boolean userRegister(User us);
    public User login(String email,String password);
}
