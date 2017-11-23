package com.etc.exam.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.exam.entity.Users;
import com.etc.exam.miaodiapi.IndustrySMS;
import com.etc.exam.service.UserService;

@Controller
public class LogAndRegController {
	
	@Resource
	private UserService us;
	
	private int regcount=0;//������ʾ��ע����е�����һ��
	/**
	 * ������֤��
	 */
	@RequestMapping(value="sendYZM",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String sendYZM(String phoneNum) {
		
		return IndustrySMS.execute(phoneNum);
		
	}
	
	public String judgeStuIsExis(String userName) {
		regcount=0;
		Users u = us.selectStuByName(userName);
		if(u==null) {
			regcount++;
			return "1���ֻ��ſ���ʹ��";			
		}
		else {
			return "0���ֻ����ѱ�ע�ᣬ��ֱ�ӵ�¼";
		}
	}
}
