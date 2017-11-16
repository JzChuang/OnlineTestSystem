package com.etc.exam.entity;

public class Teacher {
    private String TEACHERNAME;

    private String NICKNAME;

    private int EXAMTYPEID;

    public String getTEACHERNAME() {
        return TEACHERNAME;
    }

    public void setTEACHERNAME(String TEACHERNAME) {
        this.TEACHERNAME = TEACHERNAME == null ? null : TEACHERNAME.trim();
    }

    public String getNICKNAME() {
        return NICKNAME;
    }

    public void setNICKNAME(String NICKNAME) {
        this.NICKNAME = NICKNAME == null ? null : NICKNAME.trim();
    }

    public int getEXAMTYPEID() {
        return EXAMTYPEID;
    }

    public void setEXAMTYPEID(int EXAMTYPEID) {
        this.EXAMTYPEID = EXAMTYPEID;
    }
}