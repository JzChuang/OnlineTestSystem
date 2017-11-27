package com.etc.exam.entity;

public class USERRECORD {

	private Short recordid;

    private Short testpaperid;

    private String usertime;

    private String testdate;

    private Short grade;

    private String username;

    private TestPaper testpaper;
public USERRECORD() {
	// TODO Auto-generated constructor stub
}

	public TestPaper getTestpaper() {
	return testpaper;
}

public void setTestpaper(TestPaper testpaper) {
	this.testpaper = testpaper;
}

	@Override
public String toString() {
	return "USERRECORD [recordid=" + recordid + ", testpaperid=" + testpaperid + ", usertime=" + usertime
			+ ", testdate=" + testdate + ", grade=" + grade + ", username=" + username + ", testpaper=" + testpaper
			+ "]";
}

	public Short getRecordid() {
        return recordid;
    }

    public void setRecordid(Short recordid) {
        this.recordid = recordid;
    }

    public Short getTestpaperid() {
        return testpaperid;
    }

    public void setTestpaperid(Short testpaperid) {
        this.testpaperid = testpaperid;
    }

    public String getUsertime() {
        return usertime;
    }

    public void setUsertime(String usertime) {
        this.usertime = usertime == null ? null : usertime.trim();
    }

    public String getTestdate() {
        return testdate;
    }

    public void setTestdate(String testdate) {
        this.testdate = testdate == null ? null : testdate.trim();
    }

    public Short getGrade() {
        return grade;
    }

    public void setGrade(Short grade) {
        this.grade = grade;
    }

    public String getUsername() {
        return username;
    }

 

	public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }
}