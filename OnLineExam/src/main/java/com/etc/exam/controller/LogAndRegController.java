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
	
	private int regcount=0;//用来表示，注册进行到了哪一步
	/**
	 * 发送验证码
	 */
	@RequestMapping(value="sendYZM",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String sendYZM(String phoneNum) {
		
		return IndustrySMS.execute(phoneNum);
		
	}
	/**
	 * 判断手机号是否存在
	 * @param userName 用户输入的手机号（用户名）
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
				return "1该手机号可以使用";	//前面的数字为状态标识符，1表示手机号可以注册		
			}
			else{
				return "2该手机号已被注册，请直接登录";//2表示该手机号已经被注册
			}
		}	
		else {
			return "0请输入正确的手机号";
		}
	}
	@RequestMapping(value="regUsers",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String regUsers(String phoneNum,String yanzhengma) {
		int yznum = Integer.parseInt(yanzhengma);
		if(yznum==IndustrySMS.yanZhengNum) {
			return "1验证码正确";
		}
		else {
			return "0验证码错误";
		}
 	}
}
