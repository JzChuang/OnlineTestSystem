package com.etc.exam.entity;

public class Question {
    private int QUESTIONID;//ÌâÄ¿±àºÅ

    private int QTYPEID;

    private int SUBJECTID;

    private String QUESTIONTITLE;

    private String ANSWER;

    private String EXPLAIN;

    private String QOPTION;

    private int SCORE;

    private String TITLEIMG;

    public int getQUESTIONID() {
        return QUESTIONID;
    }

    public void setQUESTIONID(int QUESTIONID) {
        this.QUESTIONID = QUESTIONID;
    }

    public int getQTYPEID() {
        return QTYPEID;
    }

    public void setQTYPEID(int QTYPEID) {
        this.QTYPEID = QTYPEID;
    }

    public int getSUBJECTID() {
        return SUBJECTID;
    }

    public void setSUBJECTID(int SUBJECTID) {
        this.SUBJECTID = SUBJECTID;
    }

    public String getQUESTIONTITLE() {
        return QUESTIONTITLE;
    }

    public void setQUESTIONTITLE(String QUESTIONTITLE) {
        this.QUESTIONTITLE = QUESTIONTITLE == null ? null : QUESTIONTITLE.trim();
    }

    public String getANSWER() {
        return ANSWER;
    }

    public void setANSWER(String ANSWER) {
        this.ANSWER = ANSWER == null ? null : ANSWER.trim();
    }

    public String getEXPLAIN() {
        return EXPLAIN;
    }

    public void setEXPLAIN(String EXPLAIN) {
        this.EXPLAIN = EXPLAIN == null ? null : EXPLAIN.trim();
    }

    public String getQOPTION() {
        return QOPTION;
    }

    public void setQOPTION(String QOPTION) {
        this.QOPTION = QOPTION == null ? null : QOPTION.trim();
    }

    public int getSCORE() {
        return SCORE;
    }

    public void setSCORE(int SCORE) {
        this.SCORE = SCORE;
    }

    public String getTITLEIMG() {
        return TITLEIMG;
    }

    @Override
	public String toString() {
		return "Question [QUESTIONID=" + QUESTIONID + ", QTYPEID=" + QTYPEID + ", SUBJECTID=" + SUBJECTID
				+ ", QUESTIONTITLE=" + QUESTIONTITLE + ", ANSWER=" + ANSWER + ", EXPLAIN=" + EXPLAIN + ", QOPTION="
				+ QOPTION + ", SCORE=" + SCORE + ", TITLEIMG=" + TITLEIMG + "]";
	}

	public void setTITLEIMG(String TITLEIMG) {
        this.TITLEIMG = TITLEIMG == null ? null : TITLEIMG.trim();
    }
}