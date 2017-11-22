<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>
			智囊在线考试中心_全真在线模拟考场_在线题库测试做题平台（历年真题,模拟试题，练习题）
		</title>
		<link rel="stylesheet" type="text/css" href="css/tk_base.css" />
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/log_reg.css"/>
		<script src="https://cdn.bootcss.com/jquery/1.12.1/jquery.min.js"></script>
		<script src="js/main.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/logreg.js" type="text/javascript" charset="utf-8"></script>
		<script src="layer/layer.js" type="text/javascript" charset="utf-8"></script>
		<!-- <script type="text/javascript">
			$(function() {
				$("#login").click(function() {
					layer.open({
						type: 2,
						title: '注册登录',
						maxmin: true,
						skin: 'layui-layer-lan',
						shadeClose: true, //点击遮罩关闭层  
						area: ['600px', '360px'],
						scrollbar: false,
						content: 'login.jsp' //弹框显示的url  
					});

				})
			})
		</script> -->
	</head>

	<body style="">
		<!--顶部-->
		<div id="main">
		<div class="hn_c">
			<div class="width1000">
				<div class="c_logo fl">
					<a href="http://www.educity.cn/" target="_blank"><img src="images/logo2.png" style="margin-top: -10px;"></a>
				</div>
				<div class="liuc fl">
					<a href="http://www.educity.cn/tiku/" target="_blank">在线考试系统</a>
				</div>
				<div class="lx_tel fr"></div>
				<form action="" target="_blank" accept-charset="utf-8" onsubmit="">
					<div class="search fr">
						<input name="q" id="top_keyword" class="input1" onfocus="if(this.value==&#39;模拟试题&#39;){this.value=&#39;&#39;;this.style.color=&#39;#333333&#39;}" onblur="if(this.value==&#39;&#39;){this.value=&#39;模拟试题&#39;;this.style.color=&#39;#ccc&#39;}" value="模拟试题" type="text">
						<input type="submit" id="" class="i-btn1" value="搜索" style="cursor: pointer;">
					</div>
				</form>
				<dir class="login-reg">
					<input type="button" id="login" value="登录" />&nbsp;&nbsp;|&nbsp;&nbsp;<input type="button" id="reg" value="注册" />
				</dir>
		

			</div>
		</div>

		<!--功能导航-->
		<div class="function-menu">
			<div class="width1000">
				<div class="white-box">
					<ul class="tk-function">
						<li class="one-box">
							<a href="guide.jsp?type=moni"><span class="mnsj"></span><em>模拟试卷</em> </a>
						</li>
						<li class="one-box">
							<a href="guide.jsp?type=zhenti"><span class="lnzt"></span><em>历年真题</em> </a>
						</li>
						<li class="two-box">
							<a href="guide.jsp?type=lianxi"><span class="zsdlx"></span><em>知识点练习</em> </a>
						</li>
						<li class="three-box">
							<a href="guide.jsp?type=cuoti"><span class="ctk"></span><em>错题库</em> </a>
						</li>
						<li class="one-box">
							<a href="guide.jsp"><span class="pgbg"></span><em>评估报告</em> </a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<!--科目-->
		<div class="subject-box">
			<div class="width1000">
				<div class="rk-ke-box">
					<div class="rk-title">
					</div>
					<div class="km-box">
						<div class="rk-high">
							<i></i><span class="high"></span><i></i>
						</div>
						<ul>
							<li>
								<a href="http://www.educity.cn/tiku/g2.html">系统分析师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g4.html">信息系统项目管理师</a>
							</li>
							<li class="clear-margin">
								<a href="http://www.educity.cn/tiku/g1.html">网络规划设计师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g3.html">系统架构设计师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g111.html">系统规划与管理师</a>
							</li>
						</ul>
					</div>
					<div class="km-box">
						<div class="rk-in">
							<i></i><span class="in"></span><i></i>
						</div>
						<ul>
							<li>
								<a href="http://www.educity.cn/tiku/g7.html">软件设计师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g6.html">软件评测师</a>
							</li>
							<li class="clear-margin">
								<a href="http://www.educity.cn/tiku/g10.html">信息系统管理工程师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g108.html">信息安全工程师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g9.html">网络工程师</a>
							</li>
							<li class="clear-margin">
								<a href="http://www.educity.cn/tiku/g8.html">数据库系统工程师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g11.html">信息系统监理师</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g68.html">电子商务设计师</a>
							</li>
							<li class="clear-margin">
								<a href="http://www.educity.cn/tiku/g5.html">系统集成项目管理工程师</a>
							</li>
						</ul>
					</div>
					<div class="km-box">
						<div class="rk-low">
							<i></i><span class="low"></span><i></i>
						</div>
						<ul>
							<li>
								<a href="http://www.educity.cn/tiku/g14.html">程序员</a>
							</li>
							<li>
								<a href="http://www.educity.cn/tiku/g12.html">网络管理员</a>
							</li>
							<li class="clear-margin">
								<a href="http://www.educity.cn/tiku/g13.html">信息处理技术员</a>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<!--底部-->
			<div class="h80"></div>

			<div class="footer">
				<div class="width1000">

					<div class="ab_com clear">
						<a href="http://www.educity.cn/" target="_blank">首页</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="http://www.educity.cn/hzzx/about.htm" target="_blank">关于希赛</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="http://www.educity.cn/hzzx/jrwm.htm" target="_blank">加入希赛</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="http://www.educity.cn/hzzx/Problem.htm" target="_blank">常见问题</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="http://www.educity.cn/hzzx/right.htm" target="_blank">免责声明</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="http://www.educity.cn/hzzx/lxwm.htm" target="_blank">联系希赛</a>&nbsp;&nbsp;|&nbsp;&nbsp;
						<a href="http://www.educity.cn/hzzx/Sitemap.htm" target="_blank">网站地图</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;希赛网&nbsp;&nbsp;版权所有&nbsp;&nbsp;&#169;&nbsp;&nbsp;2001-2017&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="http://www.miibeian.gov.cn/" target="_blank">湘ICP备10203241号-9</a>
						<span class="fr csaipubfoot_rz" style="line-height: 32px;margin-top: 10px;"></span>
					</div>
				</div>
			</div>
			
			
			<!--
            	注册登录模态框
            -->
            
            	
	</div>
	</body>

</html>