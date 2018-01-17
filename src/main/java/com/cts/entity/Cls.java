package com.cts.entity;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.io.Serializable;

/**
 * Created by Liulisen on 2018/01/17
 */

@Entity
@Table(name = "cls")
public class Cls implements Serializable {

    private int cno;

    @Pattern(regexp = "^[\\w\\u4e00-\\u9fa5]{4,10}$",message = "班级名称必须为长度在4位到10位的字母数字或中文组成")
    private String cname;

    public Cls() {
    }

    public Cls(int cno, String cname) {
        this.cno = cno;
        this.cname = cname;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getCno() {
        return cno;
    }

    public void setCno(int cno) {
        this.cno = cno;
    }

    public String getCname() {
        return cname;
    }

    public void setCname(String cname) {
        this.cname = cname;
    }
}
