package com.longsys.entity;

public class Signatureinfo {
    private String id;    //用户名
    private String username;
    private String name;
    private String ename;
    private String position;
    private String department;
    private String mobile;
    private String tel;
    private String email;
    private String cnaddr;
    private String enaddr;
    private String company;
    private String imagepath;


    public Signatureinfo() {
    }

    public Signatureinfo(String userid, String name, String tel) {
        this.id = userid;
        this.name = name;
        this.tel = tel;
    }

    public Signatureinfo(String id, String username, String name, String ename, String position, String department, String mobile, String tel) {
        this.id = id;
        this.username = username;
        this.name = name;
        this.ename = ename;
        this.position = position;
        this.department = department;
        this.mobile = mobile;
        this.tel = tel;
    }

    public Signatureinfo(String username, String name, String ename, String position, String department, String mobile, String tel, String email, String company) {
        this.username = username;
        this.name = name;
        this.ename = ename;
        this.position = position;
        this.department = department;
        this.mobile = mobile;
        this.tel = tel;
        this.email = email;
        this.company=company;
    }

    public Signatureinfo(String name, String ename, String position, String department, String mobile, String tel, String email, String cnaddr, String enaddr, String company, String imagepath) {
        this.name = name;
        this.ename = ename;
        this.position = position;
        this.department = department;
        this.mobile = mobile;
        this.tel = tel;
        this.email = email;
        this.cnaddr = cnaddr;
        this.enaddr = enaddr;
        this.company = company;
        this.imagepath = imagepath;
    }

    public Signatureinfo(String username, String name, String ename, String position, String department, String mobile, String tel) {
        this.username = username;
        this.name = name;
        this.ename = ename;
        this.position = position;
        this.department = department;
        this.mobile = mobile;
        this.tel = tel;
    }

    public Signatureinfo(String id,String username, String name, String ename, String position, String department, String mobile, String tel, String email, String cnaddr, String enaddr, String company, String imagepath) {
        this.id=id;
        this.username = username;
        this.name = name;
        this.ename = ename;
        this.position = position;
        this.department = department;
        this.mobile = mobile;
        this.tel = tel;
        this.email = email;
        this.cnaddr = cnaddr;
        this.enaddr = enaddr;
        this.company = company;
        this.imagepath = imagepath;
    }

    public String getUsername() {
        return username;
    }

    public String getName() {
        return name;
    }

    public String getEname() {
        return ename;
    }

    public String getPosition() {
        return position;
    }

    public String getDepartment() {
        return department;
    }

    public String getMobile() {
        return mobile;
    }

    public String getEmail() {
        return email;
    }

    public String getTel() {
        return tel;
    }

    public String getCnaddr() {
        return cnaddr;
    }

    public String getEnaddr() {
        return enaddr;
    }

    public String getCompany() {
        return company;
    }

    public String getImagepath() {
        return imagepath;
    }

    public String getId() {
        return id;
    }
}
