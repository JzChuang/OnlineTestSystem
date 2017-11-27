package com.etc.exam.controller;

import java.util.regex.Pattern;

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
	/**
	 * �ж��ֻ����Ƿ����
	 * @param userName �û�������ֻ��ţ��û�����
	 * @return
	 */
	@RequestMapping(value="judgeStuIsExis",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String judgeStuIsExis(String userName) {
		regcount=0;
		String regex = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";
		Boolean flag = Pattern.matches(regex, userName);
		Users u = us.selectStuByName(userName);
		if(flag==true) {
			if(u==null) {
				regcount++;
				return "1���ֻ��ſ���ʹ��";	//ǰ�������Ϊ״̬��ʶ����1��ʾ�ֻ��ſ���ע��		
			}
			else{
				return "2���ֻ����ѱ�ע�ᣬ��ֱ�ӵ�¼";//2��ʾ���ֻ����Ѿ���ע��
			}
		}	
		else {
			return "0��������ȷ���ֻ���";
		}
	}
	@RequestMapping(value="regUsers",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String regUsers(String phoneNum,String yanzhengma) {
		int yznum = Integer.parseInt(yanzhengma);
		if(yznum==IndustrySMS.yanZhengNum) {
			return "1��֤����ȷ";
		}
		else {
			return "0��֤�����";
		}
 	}
}
