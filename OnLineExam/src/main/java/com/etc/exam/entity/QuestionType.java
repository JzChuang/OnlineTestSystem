package com.etc.exam.entity;

public class QuestionType {
    private int QTYPEID;

    private String QTYPENAME;

    public int getQTYPEID() {
        return QTYPEID;
    }

    public void setQTYPEID(int QTYPEID) {
        this.QTYPEID = QTYPEID;
    }

    public String getQTYPENAME() {
        return QTYPENAME;
    }

    public void setQTYPENAME(String QTYPENAME) {
        this.QTYPENAME = QTYPENAME == null ? null : QTYPENAME.trim();
    }
}