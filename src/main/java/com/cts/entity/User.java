package com.cts.entity;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Liulisen on 2018/1/16.
 */
@Entity
@Table(name = "user")
public class User implements Serializable {

    private int uno;
    private String uname;
    private String upwd;

    public User() {
    }

    public User(int uno, String uname, String upwd) {
        this.uno = uno;
        this.uname = uname;
        this.upwd = upwd;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getUno() {
        return uno;
    }

    public void setUno(int uno) {
        this.uno = uno;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

}
