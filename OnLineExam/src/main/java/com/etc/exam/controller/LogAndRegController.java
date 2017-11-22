package com.etc.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.etc.exam.miaodiapi.IndustrySMS;

@Controller
public class LogAndRegController {
	
	/**
	 * ·¢ËÍÑéÖ¤Âë
	 */
	@RequestMapping(value="sendYZM",method=RequestMethod.GET,produces="text/html; charset=UTF-8")
	@ResponseBody
	public String sendYZM(String phoneNum) {
		
		return IndustrySMS.execute(phoneNum);
		
	}
	
	@RequestMapping("aaaaaa")
	@ResponseBody
	public String aaaaaa(String phoneNum) {
		
		return "¹þ¹þ¹þ";
	}
}
