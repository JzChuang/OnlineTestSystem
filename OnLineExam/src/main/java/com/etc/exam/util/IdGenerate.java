package com.etc.exam.util;


public class IdGenerate {
	
	public static long getId() {
		StringBuffer num=new StringBuffer();
		long id = 0 ;
		//����ʱ���
		num.append(System.currentTimeMillis()+"");
		
		//�ټ���6λ����������ױ����ظ�
		for(int i=1;i<=6;i++){
			num.append((int)(Math.random()*9+1));
			}
		id=Long.parseLong(num.toString());
		return id;
	}
	
}
