package com.cts.service;

import com.cts.dao.UserDao;
import com.cts.entity.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by Liulisen on 2018/1/16.
 */
@Service("userService")
public class UserService {

    @Resource(name = "userDao")
    private UserDao userDao;

    //登录
    public User doLogin(User users) {
        String hql = "from User u where u.uname='" + users.getUname() + "'";
        List<User> list = userDao.findUserList(hql); //取出同名的所有 用户
        if (list != null && list.size() > 0) {
            for (User user : list) {
                if (user.getUname().equals(users.getUname()) && user.getUpwd().equals(users.getUpwd())) {
                    return user;
                }
            }
        }
        return null;
    }

    //添加用户
    public boolean addUser(User user){
        return userDao.addUser(user);
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
}
