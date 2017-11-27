package com.etc.exam.service;

import com.etc.exam.entity.USERRECORD;

public interface correctservice {
	USERRECORD selectrecordebyid(int id);
	int updatascore(USERRECORD u);
}
