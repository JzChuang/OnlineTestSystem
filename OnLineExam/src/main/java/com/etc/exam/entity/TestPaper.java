package com.etc.exam.entity;

public class TestPaper {
    private int TESTPAPERID;

    private int EXAMTYPEID;

    private String TESTPAPERNAME;

    private String TESTPAPERTYPE;

    private String PAPERFINISH;

    private String CREATETIME;

    private String CREATEMAN;

    private String TIME;

    public int getTESTPAPERID() {
        return TESTPAPERID;
    }

    public void setTESTPAPERID(int TESTPAPERID) {
        this.TESTPAPERID = TESTPAPERID;
    }

  

	@Override
	public String toString() {
		return "TestPaper [TESTPAPERID=" + TESTPAPERID + ", EXAMTYPEID=" + EXAMTYPEID + ", TESTPAPERNAME="
				+ TESTPAPERNAME + ", TESTPAPERTYPE=" + TESTPAPERTYPE + ", PAPERFINISH=" + PAPERFINISH + ", CREATETIME="
				+ CREATETIME + ", CREATEMAN=" + CREATEMAN + ", TIME=" + TIME + "]";
	}

	public String getTIME() {
		return TIME;
	}

	public void setTIME(String tIME) {
		TIME = tIME;
	}

	public int getEXAMTYPEID() {
        return EXAMTYPEID;
    }

    public void setEXAMTYPEID(int EXAMTYPEID) {
        this.EXAMTYPEID = EXAMTYPEID;
    }

    public String getTESTPAPERNAME() {
        return TESTPAPERNAME;
    }

    public void setTESTPAPERNAME(String TESTPAPERNAME) {
        this.TESTPAPERNAME = TESTPAPERNAME == null ? null : TESTPAPERNAME.trim();
    }

    public String getTESTPAPERTYPE() {
        return TESTPAPERTYPE;
    }

    public void setTESTPAPERTYPE(String TESTPAPERTYPE) {
        this.TESTPAPERTYPE = TESTPAPERTYPE == null ? null : TESTPAPERTYPE.trim();
    }

    public String getPAPERFINISH() {
        return PAPERFINISH;
    }

    public void setPAPERFINISH(String PAPERFINISH) {
        this.PAPERFINISH = PAPERFINISH == null ? null : PAPERFINISH.trim();
    }

    public String getCREATETIME() {
        return CREATETIME;
    }

    public void setCREATETIME(String CREATETIME) {
        this.CREATETIME = CREATETIME == null ? null : CREATETIME.trim();
    }

    public String getCREATEMAN() {
        return CREATEMAN;
    }

    public void setCREATEMAN(String CREATEMAN) {
        this.CREATEMAN = CREATEMAN == null ? null : CREATEMAN.trim();
    }
public TestPaper() {
	// TODO Auto-generated constructor stub
}

}