package com.etc.exam.entity;

import java.util.List;

public class UserQuestions extends UserQuestionsKey {
  

	private String myanswer;

    private String isright;

    private Short correctscore;
    private  List<Question> list;
   



	public List<Question> getList() {
		return list;
	}

	public void setList(List<Question> list) {
		this.list = list;
	}

	public String getMyanswer() {
        return myanswer;
    }

    public void setMyanswer(String myanswer) {
        this.myanswer = myanswer == null ? null : myanswer.trim();
    }

    public String getIsright() {
        return isright;
    }

    public void setIsright(String isright) {
        this.isright = isright == null ? null : isright.trim();
    }

    public Short getCorrectscore() {
        return correctscore;
    }

    public void setCorrectscore(Short correctscore) {
        this.correctscore = correctscore;
    }

	@Override
	public String toString() {
		return "UserQuestions [myanswer=" + myanswer + ", isright=" + isright + ", correctscore=" + correctscore
				+ ", list=" + list + "]";
	}

	
}