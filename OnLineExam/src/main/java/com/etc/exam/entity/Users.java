package com.etc.exam.entity;

public class Users {
    private long USERID;

    private String USERNAME;

    private String USERPWD;

    private String USERTYPE;

    public long getUSERID() {
        return USERID;
    }

    public void setUSERID(long USERID) {
        this.USERID = USERID;
    }

    public String getUSERNAME() {
        return USERNAME;
    }

    public void setUSERNAME(String USERNAME) {
        this.USERNAME = USERNAME == null ? null : USERNAME.trim();
    }

    public String getUSERPWD() {
        return USERPWD;
    }

    public void setUSERPWD(String USERPWD) {
        this.USERPWD = USERPWD == null ? null : USERPWD.trim();
    }

    public String getUSERTYPE() {
        return USERTYPE;
    }

    public void setUSERTYPE(String USERTYPE) {
        this.USERTYPE = USERTYPE == null ? null : USERTYPE.trim();
    }

	@Override
	public String toString() {
		return "Users [USERID=" + USERID + ", USERNAME=" + USERNAME + ", USERPWD=" + USERPWD + ", USERTYPE=" + USERTYPE
				+ "]";
	}

	public Users(long uSERID, String uSERNAME, String uSERPWD, String uSERTYPE) {
		super();
		USERID = uSERID;
		USERNAME = uSERNAME;
		USERPWD = uSERPWD;
		USERTYPE = uSERTYPE;
	}
    
    public Users() {
		// TODO Auto-generated constructor stub
	}
}