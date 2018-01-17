package com.cts.dao;

import com.cts.entity.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Liulisen on 2018/01/17
 */
@Repository("userDao")
public class UserDao extends BaseDao {
    //查询所有用户
    public List findUserList(String hql){
        return getSession().createQuery(hql).list();
    }

    //添加用户
    public boolean addUser(User user){
        try {
            getSession().save(user);
            return true;
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
