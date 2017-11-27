package com.etc.exam.entity;

public class UserQuestionsKey {
    @Override
	public String toString() {
		return "UserQuestionsKey [username=" + username + ", questionid=" + questionid + ", testpaperid=" + testpaperid
				+ "]";
	}

	private String username;

    private Short questionid;

    private Short testpaperid;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public Short getQuestionid() {
        return questionid;
    }

    public void setQuestionid(Short questionid) {
        this.questionid = questionid;
    }

    public Short getTestpaperid() {
        return testpaperid;
    }

    public void setTestpaperid(Short testpaperid) {
        this.testpaperid = testpaperid;
    }
}