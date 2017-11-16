package com.etc.exam.entity;

public class Student {
    private String STUNAME;

    private String NICKNAME;

    private String REALNAME;

    private String SEX;

    private String EMAIL;

    public String getSTUNAME() {
        return STUNAME;
    }

    public void setSTUNAME(String STUNAME) {
        this.STUNAME = STUNAME == null ? null : STUNAME.trim();
    }

    public String getNICKNAME() {
        return NICKNAME;
    }

    public void setNICKNAME(String NICKNAME) {
        this.NICKNAME = NICKNAME == null ? null : NICKNAME.trim();
    }

    public String getREALNAME() {
        return REALNAME;
    }

    public void setREALNAME(String REALNAME) {
        this.REALNAME = REALNAME == null ? null : REALNAME.trim();
    }

    public String getSEX() {
        return SEX;
    }

    public void setSEX(String SEX) {
        this.SEX = SEX == null ? null : SEX.trim();
    }

    public String getEMAIL() {
        return EMAIL;
    }

    public void setEMAIL(String EMAIL) {
        this.EMAIL = EMAIL == null ? null : EMAIL.trim();
    }
}