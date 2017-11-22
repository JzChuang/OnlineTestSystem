<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
<script src="js/jquery-2.1.0.js" type="text/javascript" charset="utf-8"></script>

		<style type="text/css">
			/*.login{position: static; left: 150px; top: 50px;}*/
			.reg{display: none;}
			.login{display: none;}
			.inputdiv{margin-top: 0px;width: 300px;height: 40px; display: block;}
			.inputdiv input {
				float: left;
				border: 1px solid lightgrey;
				border-radius: 5px;
				background: none;
				height: 40px;
				line-height: 40px;
				width: 300px;
				text-indent: 32px;
			}
			span{height:25px;display:block}
			
			.username{background: url(img/cd-icon-username.svg) no-repeat 0 center;}
			.password{background: url(img/cd-icon-password.svg) no-repeat 0 center;}
			.phonenum{background: url(img/cd-icon-username.svg) no-repeat 0 center;}
			.yanzhengma{background: url(img/cd-icon-password.svg) no-repeat 0 center;}
			button{margin-left:10px;width: 90px; height: 40px;}
</style>
<script type="text/javascript">
	$(function  () {
		$("#zhuce").click(function  () {
			$(".login").css("display","none");
			$(".reg").css("display","block");
		})
	})
</script>
</head>

<body>
	<center>
		<!--
        	作者：825941503@qq.com
        	时间：2017-11-20
        	描述：登录模块
        -->
	<div class="login">
		<span></span>
		<div class="inputdiv username">
				<input id="username" type="text" name="" id="" value="" placeholder="请输入注册手机号" />
		</div>
		<span></span>
		<div class="inputdiv password">
				<input id="password" type="password" name="" id="" value="" placeholder="请输入密码" />
		</div>
		<span></span>
		<br />
		<input type="checkbox" id="remember-me" checked>
		<label for="remember-me">记住登录状态</label>
		<input type="button" id="zhuce"value="还没有账号？点击注册" />
		<br />
		<input type="submit" class="btn btn-primary" style="width: 300px;" id="" name="" />			
	</div>
	
	    	<!--作者：825941503@qq.com
    	时间：2017-11-20
    	描述：注册模块-->
    
	<div class="reg">
		<span></span>
		<div class="inputdiv phonenum">
				<input id="phonenum" type="text" name="" id="" value="" placeholder="请输入常用手机号" />
		</div>
		<span id="phonenamspan"></span>
		<div class="inputdiv yanzhengma">
				<input id="yanzhengma" type="password" name="" id="" value="" placeholder="请输入收到的验证码" style="width: 200px;"/>
				<button id="send" type="button" class="btn btn-info">发送验证码</button>
		</div>
		<span id="yanzhengmaspan"></span>
		<div class="inputdiv password">
				<input id="password1" type="password" name="" id="" value="" placeholder="请输入登录密码" />
		</div>
		<span id="passwordspan"></span>
		<br />
		<input type="checkbox" id="accept" checked>
		<label for="remember-me">阅读并同意网站协议</label>
		<a >智囊网用户协议</a>
		<br />
		<input type="submit" class="btn btn-primary" style="width: 300px;" id="" name="" value="注册"/>	
		
	</div>
	</center>
</body>
<script type="text/javascript">
$(function(){
	$("#phonenum").blur(function(){
		$("#yanzhengmaspan").attr('class',"");
		$("#yanzhengmaspan").html("");
	})
	
	/*  
	//点击发送验证码
	*/
	$("#send").click(function(){
		var phoneNum = $("#phonenum").val();
		//注意参数的传递 json格式
		$.get("sendYZM",{"phoneNum":phoneNum},function (pd,satus){
			//调用showData(pd,satus)
			var state =$.parseJSON(pd).respDesc;
			//判断发送状态
			if(state=="请求成功。"){
				var second = 59;
				//倒计时结束后才可再次发送
				var timer =setInterval(function(){ 
					$("#send").html(second+"秒后重试");
					$("#send").attr('disabled',true);
					if(second>0)
						second--;
					else{
						$("#send").html("重新发送");
						$("#send").attr('disabled',false);
					}
              }, 1000);		
			}
			//未发送成功时提示用户
			else{
				$("#yanzhengmaspan").attr('class',"	glyphicon glyphicon-remove");
				$("#yanzhengmaspan").css('color','red');
				$("#yanzhengmaspan").html(state.substring(0,16));
				//alert(state);
			}
		});
	});
});
</script>
</html>