package com.etc.exam.util;


public class IdGenerate {
	
	public static long getId() {
		StringBuffer num=new StringBuffer();
		long id = 0 ;
		//加上时间戳
		num.append(System.currentTimeMillis()+"");
		
		//再加上6位的随机数彻底避免重复
		for(int i=1;i<=6;i++){
			num.append((int)(Math.random()*9+1));
			}
		id=Long.parseLong(num.toString());
		return id;
	}
	
}
