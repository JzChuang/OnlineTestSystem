package com.etc.exam.entity;

public class ExamType {
    private int EXAMTYPEID;

    private String EXAMTYPENAME;

    public int getEXAMTYPEID() {
        return EXAMTYPEID;
    }

    public void setEXAMTYPEID(int EXAMTYPEID) {
        this.EXAMTYPEID = EXAMTYPEID;
    }

    public String getEXAMTYPENAME() {
        return EXAMTYPENAME;
    }

    public void setEXAMTYPENAME(String EXAMTYPENAME) {
        this.EXAMTYPENAME = EXAMTYPENAME == null ? null : EXAMTYPENAME.trim();
    }
    
    public ExamType() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "ExamType [EXAMTYPEID=" + EXAMTYPEID + ", EXAMTYPENAME=" + EXAMTYPENAME + "]";
	}

	public ExamType(int eXAMTYPEID, String eXAMTYPENAME) {
		super();
		EXAMTYPEID = eXAMTYPEID;
		EXAMTYPENAME = eXAMTYPENAME;
	}
    
    
}