package com.cts.entity;

import org.hibernate.validator.constraints.Range;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by Liulisen on  2018/01/17.
 */

@Entity
@Table(name = "stu")
public class Stu implements Serializable {

    private int sno;

    @Pattern(regexp = "^[\\w\\u4e00-\\u9fa5]{2,30}$",message = "姓名必须为长度在2~30位的字母数字或中文组成")
    private String sname;

    @Range(min = 5,max = 60,message = "年龄必须是5~60之间的整数")
    private int sage;

    private int ssex;
    private String simage;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date stime;

    private Cls cls;

    public Stu() {
        super();
    }

    public Stu(int sno, String sname, int sage, int ssex, String simage, Date stime, Cls cls) {
        this.sno = sno;
        this.sname = sname;
        this.sage = sage;
        this.ssex = ssex;
        this.simage = simage;
        this.stime = stime;
        this.cls = cls;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getSno() {
        return sno;
    }

    public void setSno(int sno) {
        this.sno = sno;
    }

    public int getSage() {
        return sage;
    }

    public void setSage(int sage) {
        this.sage = sage;
    }

    public String getSname() {
        return sname;
    }

    public void setSname(String sname) {
        this.sname = sname;
    }

    public int getSsex() {
        return ssex;
    }

    public void setSsex(int ssex) {
        this.ssex = ssex;
    }

    public String getSimage() {
        return simage;
    }

    public void setSimage(String simage) {
        this.simage = simage;
    }

    @Column(columnDefinition = "date")
    public Date getStime() {
        return stime;
    }

    public void setStime(Date stime) {
        this.stime = stime;
    }

    @ManyToOne
    @JoinColumn(name = "cno")
    public Cls getCls() {
        return cls;
    }

    public void setCls(Cls cls) {
        this.cls = cls;
    }
}
