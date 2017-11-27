package com.etc.exam.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.etc.exam.entity.USERRECORD;
import com.etc.exam.entity.UserQuestions;
import com.etc.exam.entity.UserQuestionsKey;
import com.etc.exam.service.UserQuestionsService;
import com.etc.exam.service.correctservice;

@Controller
public class RecodeAndTestpapercontroller {
@Resource
private correctservice cs; 
@Resource
private UserQuestionsService uqs;
@RequestMapping(value="gethead/{id}",method=RequestMethod.GET)
@ResponseBody
public USERRECORD selectallrecorde(@PathVariable(value="id")int id)
{
	return cs.selectrecordebyid(id);

}
@RequestMapping(value="getquestiion/{username}/{sjbh}/{num}",method=RequestMethod.GET)
@ResponseBody
public UserQuestions selectquest(@PathVariable(value="username")String username,@PathVariable(value="sjbh")int sjbh,
		@PathVariable(value="num")int num)
{
	
	UserQuestionsKey key = new UserQuestionsKey();
	key.setTestpaperid((short)sjbh);
	key.setUsername(username);
	List<UserQuestions> list=uqs.getalluserquestions(key);
	int len= list.size();
	if(len-1>=num)
	{
		return list.get(num);
	}
	else {
		return null;
	}
	}

@RequestMapping(value="updatascore",method=RequestMethod.PUT)
@ResponseBody
public int updatascore(@RequestBody USERRECORD u)
{
	System.out.println(u);
	return cs.updatascore(u);
	

}

@RequestMapping("getcount/{username}/{sjbh}")
@ResponseBody
public int getcount(@PathVariable(value="username")String username,@PathVariable(value="sjbh")int sjbh)
{
	UserQuestionsKey key = new UserQuestionsKey();
	key.setTestpaperid((short)sjbh);
	key.setUsername(username);
	return uqs.getqtcount(key);

}

}