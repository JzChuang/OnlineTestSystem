package com.etc.exam.service;

import java.util.List;

import com.etc.exam.entity.UserQuestions;
import com.etc.exam.entity.UserQuestionsKey;

public interface UserQuestionsService {
List<UserQuestions> getalluserquestions(UserQuestionsKey key);
int  getqtcount(UserQuestionsKey key);
}
