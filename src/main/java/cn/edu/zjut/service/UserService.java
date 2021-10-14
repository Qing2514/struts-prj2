package cn.edu.zjut.service;

import cn.edu.zjut.bean.UserBean;

public class UserService
{
    public boolean login(UserBean loginUser)
    {
        return loginUser.getAccount().equals(loginUser.getPassword());
    }
    public boolean register(UserBean loginUser)
    {
        return !loginUser.getAccount().isEmpty() && loginUser.getAccount().equals(loginUser.getPassword()) && loginUser.getPassword().equals(loginUser.getRepassword());
    }
}