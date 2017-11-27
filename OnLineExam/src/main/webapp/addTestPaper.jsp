<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta charset="utf-8">
		<meta name="renderer" content="webkit|ie-comp|ie-stand">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="Bookmark" href="favicon.ico">
		<link rel="Shortcut Icon" href="favicon.ico" />
		<!--[if lt IE 9]>
<script type="text/javascript" src="lib/html5.js"></script>
<script type="text/javascript" src="lib/respond.min.js"></script>
<![endif]-->
		<link rel="stylesheet" type="text/css" href="static/h-ui/css/H-ui.min.css" />
		<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/H-ui.admin.css" />
		<link rel="stylesheet" type="text/css" href="lib/Hui-iconfont/1.0.8/iconfont.css" />
		<link rel="stylesheet" type="text/css" href="static/h-ui.admin/skin/default/skin.css" id="skin" />
		<link rel="stylesheet" type="text/css" href="static/h-ui.admin/css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/addTestPaper.css" />
		<!--[if IE 6]>
<script type="text/javascript" src="http://lib.h-ui.net/DD_belatedPNG_0.0.8a-min.js" ></script>
<script>DD_belatedPNG.fix('*');</script><![endif]-->
		<!--/meta 作为公共模版分离出去-->
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.css" />
		<title>试卷列表</title>
		<meta name="keywords" content="H-ui.admin v3.0,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
		<meta name="description" content="H-ui.admin v3.0，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
	</head>

	<body>
		<!--_header 作为公共模版分离出去-->
		<header class="navbar-wrapper">
			<div class="navbar navbar-fixed-top">
				<div class="container-fluid cl">
					<a class="logo navbar-logo f-l mr-10 hidden-xs" href="/aboutHui.shtml">H-ui.admin</a>
					<a class="logo navbar-logo-m f-l mr-10 visible-xs" href="/aboutHui.shtml">H-ui</a> <span class="logo navbar-slogan f-l mr-10 hidden-xs">v3.0</span>
					<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
					<nav class="nav navbar-nav">
						<ul class="cl">
							<li class="dropDown dropDown_hover">
								<a href="javascript:;" class="dropDown_A"><i class="Hui-iconfont">&#xe600;</i> 新增 <i class="Hui-iconfont">&#xe6d5;</i></a>
								<ul class="dropDown-menu menu radius box-shadow">
									<li>
										<a href="javascript:;" onclick="article_add('添加资讯','article-add.html')"><i class="Hui-iconfont">&#xe616;</i> 资讯</a>
									</li>
									<li>
										<a href="javascript:;" onclick="picture_add('添加资讯','picture-add.html')"><i class="Hui-iconfont">&#xe613;</i> 图片</a>
									</li>
									<li>
										<a href="javascript:;" onclick="product_add('添加资讯','product-add.html')"><i class="Hui-iconfont">&#xe620;</i> 产品</a>
									</li>
									<li>
										<a href="javascript:;" onclick="member_add('添加用户','member-add.html','','510')"><i class="Hui-iconfont">&#xe60d;</i> 用户</a>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
					<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
						<ul class="cl">
							<li>超级管理员</li>
							<li class="dropDown dropDown_hover">
								<a href="#" class="dropDown_A">admin <i class="Hui-iconfont">&#xe6d5;</i></a>
								<ul class="dropDown-menu menu radius box-shadow">
									<li>
										<a href="javascript:;" onClick="myselfinfo()">个人信息</a>
									</li>
									<li>
										<a href="#">切换账户</a>
									</li>
									<li>
										<a href="#">退出</a>
									</li>
								</ul>
							</li>
							<li id="Hui-msg">
								<a href="#" title="消息"><span class="badge badge-danger">1</span><i class="Hui-iconfont" style="font-size:18px">&#xe68a;</i></a>
							</li>
							<li id="Hui-skin" class="dropDown right dropDown_hover">
								<a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size:18px">&#xe62a;</i></a>
								<ul class="dropDown-menu menu radius box-shadow">
									<li>
										<a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a>
									</li>
									<li>
										<a href="javascript:;" data-val="blue" title="蓝色">蓝色</a>
									</li>
									<li>
										<a href="javascript:;" data-val="green" title="绿色">绿色</a>
									</li>
									<li>
										<a href="javascript:;" data-val="red" title="红色">红色</a>
									</li>
									<li>
										<a href="javascript:;" data-val="yellow" title="黄色">黄色</a>
									</li>
									<li>
										<a href="javascript:;" data-val="orange" title="橙色">橙色</a>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</header>
		<!--/_header 作为公共模版分离出去-->

		<!--_menu 作为公共模版分离出去-->
		<aside class="Hui-aside">
			<div class="menu_dropdown bk_2">
				<dl id="menu-article">
					<dt class="selected"><i class="Hui-iconfont">&#xe616;</i> 试卷管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd style="display:block">
						<ul>
							<li>
								<a href="paperList.jsp" title="试卷列表">试卷列表</a>
							</li>
							<li class="current">
								<a href="" title="新增试卷">新增试卷</a>
							</li>
						</ul>
					</dd>
				</dl>
				<dl id="menu-picture">
					<dt><i class="Hui-iconfont">&#xe613;</i> 题库管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd>
						<ul>
							<li>
								<a href="" title="题目列表">题目列表</a>
							</li>
							<li>
								<a href="" title="增加题目">增加题目</a>
							</li>
						</ul>
					</dd>
				</dl>
				<dl id="menu-product">
					<dt><i class="Hui-iconfont">&#xe620;</i> 成绩管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd>
						<ul>
							<li>
								<a href="product-list.html" title="查询成绩">查询成绩</a>
							</li>
							<li>
								<a href="product-category.html" title="批改试卷">批改试卷</a>
							</li>
							<li>
								<a href="product-list.html" title="统计分析">统计分析</a>
							</li>
						</ul>
					</dd>
				</dl>
				<dl id="menu-comments">
					<dt><i class="Hui-iconfont">&#xe622;</i> 用户管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd>
						<ul>
							<li>
								<a href="http://h-ui.duoshuo.com/admin/" title="用户列表">用户列表</a>
							</li>
						</ul>
					</dd>
				</dl>
				<dl id="menu-member">
					<dt><i class="Hui-iconfont">&#xe60d;</i> 考试类型管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd>
						<ul>
							<li>
								<a href="member-list.html" title="考试类型列表">考试类型列表</a>
							</li>
							<li>
								<a href="member-del.html" title="新增类型">新增类型</a>
							</li>
						</ul>
					</dd>
				</dl>
				<dl id="menu-rubbish">
					<dt><i class="Hui-iconfont">&#xe60d;</i> 回收站管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd>
						<ul>
							<li>
								<a href="member-list.html" title="试卷垃圾箱">试卷垃圾箱</a>
							</li>
							<li>
								<a href="member-del.html" title="题库垃圾箱">题库垃圾箱</a>
							</li>
						</ul>
					</dd>
				</dl>
				<dl id="menu-system">
					<dt><i class="Hui-iconfont">&#xe62e;</i> 系统管理<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i></dt>
					<dd>
						<ul>
							<li>
								<a href="system-base.html" title="系统设置">系统设置</a>
							</li>
							<li>
								<a href="system-category.html" title="栏目管理">栏目管理</a>
							</li>
							<li>
								<a href="system-data.html" title="数据字典">数据字典</a>
							</li>
							<li>
								<a href="system-shielding.html" title="屏蔽词">屏蔽词</a>
							</li>
							<li>
								<a href="system-log.html" title="系统日志">系统日志</a>
							</li>
						</ul>
					</dd>
				</dl>
			</div>
		</aside>
		<div class="dislpayArrow hidden-xs">
			<a class="pngfix" href="javascript:void(0);" onClick="displaynavbar(this)"></a>
		</div>
		<!--/_menu 作为公共模版分离出去-->

		<section class="Hui-article-box">
			<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 试卷管理 <span class="c-gray en">&gt;</span> 试卷列表
				<a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
			</nav>
			<div class="Hui-article">
				<article class="cl pd-20">
					<div class="body-bottom body-content">
						<!-- loading -->
						<div class="spinner-wrapper hidden" id="spinnerLoading">
							<div class="spinner">
								<div class="rect1"></div>
								<div class="rect2"></div>
								<div class="rect3"></div>
								<div class="rect4"></div>
								<div class="rect5"></div>
							</div>
						</div>
						<div class="cont-r">
							<div role="tabpanel" class="tab-area tab-col4">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active step1">
										<a class="step-a1 step-active">
											第一步:创建试卷
										</a>
									</li>
									<li role="presentation" class=" step2">
										<a class="step-a2 step-disable">
											第二步:组卷方式
										</a>
									</li>
									<li role="presentation" class="step3">
										<a class="step-a3 step-disable" id="step3s_value">
											第三步
										</a>
									</li>
									<li role="presentation" class="step4">
										<a class="step-a4 step-disable">
											第四步
										</a>
									</li>
								</ul>
								<form action="http://new.kaoshixing.com/admin/paper_add_new" name="form" method="post" id="subForm">
									<div class="tab-content">
										<!--第一步-->
										<div role="tabpanel" class="tab-pane active" id="createTest1">
											<div class="create-test-area new-test-aera">
												<div class="create-test-box guide col-xs-10 col-md-offset-1 animate" step="2">
													<h3 style="font-size: 20px;">                                 					
                                  						  创建新试卷
                                					</h3>
													<div class="ctb-row">
														试卷名称：
														<input type="text" name="paper_name" id="paper_name" placeholder="请输入试卷名称" value="">
														<span class="f-style4">*</span>
													</div>
													<div class="ctb-row">
														试卷分类：
														<div class="btn-group">
															<button class="btn btn-default" id="type-btn">类型</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle"><span class="caret"></span></button>
															<ul class="dropdown-menu">
																<li>
																	<a class="paper-type">真题试卷</a>
																</li>
																<li>
																	<a class="paper-type">模拟试卷</a>
																</li>
																<li>
																	<a class="paper-type">知识点练习</a>
																</li>
															</ul>
														</div>
														<div class="btn-group">
															<button class="btn btn-default disabled">软件设计师</button> <button data-toggle="dropdown" class="btn btn-default dropdown-toggle disabled"><span class="caret"></span></button>
															<ul class="dropdown-menu">
																<li>
																	<a href="#">软件设计师</a>
																</li>
																<li>
																	<a href="#">嵌入式系统工程师</a>
																</li>
																<li>
																	<a href="#">知识点练习</a>
																</li>
															</ul>
														</div>
													</div>
													<button type="button" class="btn btn-default btn-primary btn-next" id="btn-next1">下一步</button>
												</div>
											</div>
										</div>
										<!--第二步-->
										<div role="tabpanel" class="tab-pane" id="createTest2">
											<div class="create-test-area in-hand">
												<div class="create-test-box guide animate col-xs-10 col-md-offset-1" step="3">
													<h3>
                                    					<input name="paper_method" type="radio" value="" checked="checked" class="item-in-lib">
                                							    从试题库中选题
                                						</h3>
													<div class="ctb-row pick-in-lib">
														组卷方式：
														<span class="lib-type1 type1 step3_val">选题组卷</span>
														<span class="lib-type0 type2 step3_val">随机组卷</span>
													</div>
													<input name="paper_method" type="radio" value="" id="item-in-hand"> <span>手工录入试题</span>
													<div class="btn-next-wrapper">
														<button type="button" class="btn btn-default btn-primary btn-next" id="btn-prev1">上一步</button>
														<button type="button" class="btn btn-default btn-primary btn-next" id="btn-next2">下一步</button>
													</div>
												</div>
												<input type="hidden" id="step3_hidden_value" value="选题组卷" />
											</div>
										</div>
										<!--第三步-->
										<div role="tabpanel" class="tab-pane " id="manualInput">
											<div class="input-questions-area clearfix">
												<div class="info-board">
													<div class="total total-last">
														<p>总题数：<span class="test_total">0</span>题</p>
														<p>当前总分：<span class="total_score">0</span>分</p>
													</div>
												</div>

												<div class="questions-board">
													<h3><input class="edit-paper-name" type="text" id="edit_paper_name" value="" placeholder="点击输入考试名称"></h3>
													<p class="emptyTip">当前试卷还是空空如也，点击下方添加新题型！</p>
													<div class="group_main">
													</div>
													<div class="ipt-questions-box ipt-questions-box-w com-drop">
														<div class="btn-group">
															<button type="button" id="paper-add-question" class="btn btn-default btn-s-blue dropdown-toggle " data-toggle="dropdown" aria-expanded="false" style="margin-top: 30px;">
                                            					<span class="txt">添加试题</span>
                                           						<span class="arrow-d glyphicon glyphicon-triangle-bottom"></span>
                                        					</button>
															<ul class="dropdown-menu dropdown-menu-blue" role="menu">
																<li>
																	<a class="questionType_add">单选题</a>
																</li>
																<li>
																	<a class="questionType_add">多选题</a>
																</li>
																<li>
																	<a class="questionType_add">判断题</a>
																</li>
																<li>
																	<a class="questionType_add">填空题</a>
																</li>
																<li>
																	<a class="questionType_add">综合题</a>
																</li>
															</ul>
														</div>
													</div>
													<!--上一步下一步按钮层-->
													<div class="next-prev-btn row clearfix">
														<div class="col-md-4">
															<button type="button" class="btn btn-default btn-primary btn-next" id="btn-prev2">上一步</button>
														</div>
														<div class="col-md-2">
														</div>
														<div class="col-md-4">
															<button type="button" class="btn btn-default btn-primary btn-next" id="btn-next3">下一步</button>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</article>
			</div>
		</section>
		<!--_footer 作为公共模版分离出去-->
		<script type="text/javascript" src="lib/jquery/1.9.1/jquery.min.js"></script>
		<script type="text/javascript" src="lib/layer/2.4/layer.js"></script>
		<script type="text/javascript" src="static/h-ui/js/H-ui.min.js"></script>
		<script type="text/javascript" src="static/h-ui.admin/js/H-ui.admin.page.js"></script>
		<!--/_footer 作为公共模版分离出去-->

		<!--请在下方写此页面业务相关的脚本-->
		<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/highcharts.js"></script>
		<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/modules/exporting.js"></script>
		<script type="text/javascript" src="lib/hcharts/Highcharts/5.0.6/js/highcharts-3d.js"></script>
		<script type="text/javascript" charset="utf-8">
			$(function() {
				$(document).on("click", ".paper-add-question", function() {
					layer.open({
						type: 2,
						title: '选择试题',
						maxmin: true,
						skin: 'layui-layer-lan',
						shadeClose: true, //点击遮罩关闭层  
						area: ['64%', '70%'],
						content: 'choose_question.jsp' //弹框显示的url  
					});
				});

			});
		</script>

		<script type="text/javascript">
			$(function() {
				$('#container').highcharts({
					chart: {
						type: 'pie',
						options3d: {
							enabled: true,
							alpha: 45,
							beta: 0
						}
					},
					title: {
						text: 'Browser market shares at a specific website, 2014'
					},
					tooltip: {
						pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
					},
					plotOptions: {
						pie: {
							allowPointSelect: true,
							cursor: 'pointer',
							depth: 35,
							dataLabels: {
								enabled: true,
								format: '{point.name}'
							}
						}
					},
					series: [{
						type: 'pie',
						name: 'Browser share',
						data: [
							['Firefox', 45.0],
							['IE', 26.8],
							{
								name: 'Chrome',
								y: 12.8,
								sliced: true,
								selected: true
							},
							['Safari', 8.5],
							['Opera', 6.2],
							['Others', 0.7]
						]
					}]
				});
			});

			$(function() {
				//第一步中类型的点击事件
				$(".paper-type").click(function() {

					$("#type-btn").text($(this).text());
				})
				//第一步中的下一步按钮
				$("#btn-next1").click(function() {
					//如果试卷名称为空则提示
					if($("#paper_name").val() != "") {
						//将第一步的页面去除
						$("#createTest1").css("display", "none");
						$(".step-a1").css("color", "rgb(155,155,155)");
						//将第二步的页面显示
						$(".step-a2").css("color", "rgb(47,124,219)");
						$("#createTest2").attr("class", "active");
						$("#createTest2").css("display", "block");
					} else {
						alert("请输入试卷名称");
					}

				});

				//第二步中的下一步按钮
				$("#btn-next2").click(function() {
					/*active这个类从上一步到下一步是有效的，但只能针对一步，若从第一步到第二步再到第三步，则第二步的界面无法隐藏完整
					所以第二步开始换了一种隐藏方式。直接将div层的display属性设置为none，则为不显示，block则为显示。					
					 * */
					$(".step-a2").css("color", "rgb(155,155,155)");
					//将第二步的页面隐藏
					$("#createTest2").css("display", "none");
					//将第三步的页面设为显示
					$(".step-a3").css("color", "rgb(47,124,219)");
					$("#manualInput").attr("class", "active");
					$("#manualInput").css("display", "block");
					//隐藏控件中的值传到第三步显示
					var step3_val = $("#step3_hidden_value").val();
					$("#step3s_value").text("第三步:"+step3_val);
					//将试卷名称赋值给第三步页面对应的控件
					var paper_name = $("#paper_name").val();
					$("#edit_paper_name").val(paper_name);
				});
				//第二步中的上一步按钮点击事件
				$("#btn-prev1").click(function() {
					$(".step-a2").css("color", "rgb(155,155,155)");
					//将第二步的页面隐藏
					$("#createTest2").css("display", "none");
					//将第一步的页面设为显示
					$(".step-a1").css("color", "rgb(47,124,219)");
					$("#createTest1").css("display", "block");

				});
				//组卷方式的类点击事件
				$(".step3_val").click(function() {
					//将所选的组卷方式放在隐藏控件中
					$("#step3_hidden_value").val($(this).text());
					//将选中的组卷方式设为选中状态
					$(this).removeClass("lib-type0");
					$(this).attr("class", "lib-type1");
					//将未选中的组卷方式设为不选中状态
					$(this).siblings().removeClass("lib-type1");
					$(this).siblings().attr("class", "lib-type0");
				});

				//手工录入单选按钮点击事件
				$("#item-in-hand").click(function() {
					var step3_val = $(this).next().text();
					//将所选的组卷方式放在隐藏控件中
					$("#step3_hidden_value").val(step3_val);
				});
				//第三步中题目类型选择按钮点击事件
				var i = 0;
				$(".questionType_add").click(function() {
					i = i + 1;
					//题型
					var chooseType = $(this).text();
					//组卷方式
					var step3_val = $("#step3_hidden_value").val();
					//隐藏添加试卷提示
					$(".emptyTip").css("display", "none");					
					if(step3_val=="选题组卷"){
						//左侧统计框
						$(".total-last").before("<div class='total total_before'><input type='hidden' class='change1' ><p class = 'test_tittle' ><span class='text_tittle_text '></span>  <span class = 'glyphicon glyphicon-trash pull-right delete-btn' > </span></p ><p > 共 <span class = 'total_num left-right-margin' > 0 </span>题</p ><p> 每题 <input type='text ' class='left-right-margin one-question-count'>分</p ></div>");
						//显示试题内容
						$(".group_main").append("<div class='row clearfix main-change-div' style='margin-top: 10px;'><div class='col-md-3 main_total_before' style='text-align: center;margin-top:10px;'><input type='hidden' class='change2'> <span class='text_tittle_text'>单选题</span> </div><div class='col-md-3' style='text-align: center;margin-top:10px;'><span>每题<input type='text ' class='count left-right-margin'>分</span> </div> <div class='col-md-3' style='text-align: center;margin-top:10px;'> <input type='checkbox'><span>试题乱序</span> </div> <div class='col-md-3' style='text-align: center;'><button type='button' id='paper-add-question' class='btn paper-add-question' aria-expanded='false' ><span class='txt'>选择试题</span> </button> </div> </div>");
					}else if(step3_val=="手工录入试题"){
						//左侧统计框
						$(".total-last").before("<div class='total total_before'><input type='hidden' class='change1' ><p class = 'test_tittle' ><span class='text_tittle_text '></span>  <span class = 'glyphicon glyphicon-trash pull-right delete-btn' > </span></p ><p > 共 <span class = 'total_num left-right-margin' > 0 </span>题</p ><p> 每题 <input type='text ' class='left-right-margin one-question-count'>分</p ></div>");
						$(".group_main").append("<div class='big-question-hand'><input type='hidden' class='change3' ><div class='row clearfix show_quesionType_hand' style='margin-top: 10px;'><div class='group_title'><div class='col-md-4 main_total_before' style='text-align: center;margin-top:10px;'><input type='hidden' class='change2'><span class='text_tittle_text'>单选题</span></div><div class='col-md-4' style='text-align: center;margin-top:10px;'><span>每题<input type='text ' class='count left-right-margin'>分</span></div><div class='col-md-4' style='text-align: center;margin-top:10px;'><input type='checkbox'><span>试题乱序</span></div></div></div><div class='group_questionAdd' style='margin-top: 10px;'><div class='questions-group'><h4><input type='text' placeholder='试题描述' class='q-ipt q-ipt-t question_describe'></h4><div class='questionContent'><div class='q-item keyFillContent_first'><span><input type='radio' value='A' name='radioOrCheck' class='radioOrCheck' checked='checked'>A</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer1'></div><div class='q-item keyFillContentAdd'><span><input type='radio' value='B' name='radioOrCheck' class='radioOrCheck'>B</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer2'></div><div class='q-item keyFillContentAdd'><span><input type='radio' value='C' name='radioOrCheck' class='radioOrCheck'>C</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer3'></div><div class='q-item keyFillContentAdd'><span><input type='radio' value='D' name='radioOrCheck' class='radioOrCheck'>D</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer4'></div><div class='q-opra'><a class='q-opra-add addKeyRadioOrCheck' href='#'><em class='glyphicon glyphicon-plus'></em><span>增加选项</span></a><a class='q-opra-reduce removeKeyRadioOrCheck' href='#'><em class='glyphicon glyphicon-trash'></em><span>删除选项</span></a></div></div><div class='analysisDom'><span>解析</span><div class='textareaDom analysisEditor' contenteditable='true' name='analysis'></div></div><div class='btn-div'><button class='btn btn-blue-border2 saveQuestionBtn btn-default' type='button'>保存</button> <input type='hidden' name='tab_num' value=''></div></div></div></div></div>");
					}
					//题目类型随选择而变化
					$(".total_before:last").find(".text_tittle_text").text(chooseType);
					$(".main_total_before:last").find(".text_tittle_text").text(chooseType);
					//给total_before这个div和main_total_before的隐藏域绑定相同的value为i变量。
					$(".total_before:last").find(".change1").attr("value", i);
					$(".main_total_before:last").find(".change2").attr("value", i);
					$(".big-question-hand:last").find(".change3").attr("value", i);
					//添加动态class
					$(".main_total_before:last").next().find(".count").addClass("text-change" + i);
					$(".big-question-hand:last").next().find(".count").addClass("text-change" + i);
					$(".total_before:last").find(".one-question-count").addClass("text-change" + i);
					$(".total_before:last").find(".delete-btn").addClass("delete-num" + i);
				});

				//修改每题的分数。
				$(document).on("keyup change", ".count", function() {
					var changeVal = $(this).val();
					//组卷方式
					var step3_val = $("#step3_hidden_value").val();
					//获取左右两侧隐藏域中的值
					if(step3_val=="选题组卷"){
						var main_change_val = $(this).parents(".main-change-div").find(".change2").val();
						$(".total_before").find(".text-change" + main_change_val).val(changeVal);
					}else if(step3_val=="手工录入试题"){
						var main_change_val = $(this).parents(".big-question-hand").find(".change3").val();
						$(".total_before").find(".text-change" + main_change_val).val(changeVal);
					}
				});
				//左侧框删除按钮点击事件
				$(document).on("click", ".delete-btn", function() {
					var message = confirm("你确认要删除已选大题吗？");
					if(message == true) {
						var delete_val = $(this).parents(".total_before").find(".change1").val();
						$(this).parents(".total_before").remove();
						var step3_val = $("#step3_hidden_value").val();
						//获取左右两侧隐藏域中的值
						if(step3_val=="选题组卷"){
							$(".text-change" + delete_val).parents(".main-change-div").remove();
						}else if(step3_val=="手工录入试题"){
							$(".text-change" + delete_val).parents(".big-question-hand").remove();
						}
					}
				});
				
				//第三步中的上一步按钮点击事件
				$("#btn-prev2").click(function() {
					$(".step-a3").css("color", "rgb(155,155,155)");
					//将第三步的页面隐藏
					$("#manualInput").css("display", "none");
					//将第二步的页面设为显示
					$(".step-a2").css("color", "rgb(47,124,219)");
					$("#createTest2").css("display", "block");
					$("#step3s_value").text("第三步:");
				});
				
				//手工录入的保存按钮点击事件
				$(document).on("click",".saveQuestionBtn",function(){	
					//显示成题目
					$(this).parents(".big-question-hand").append("<div class='group_questionShow ' style='margin-top: 10px;'><div class='manual-cont '><div class='m-example questions ' questionid='5a0e4fea36098f687e49daba '><dl><dt></dt><dd class='a '>A：</dd><dd class='b '>B：</dd><dd class='c '>C：</dd><dd class='d '>D：</dd></dl><p class='answer '>答案：</p><p class='analysis '>解析：</p><span class='m-example-score'><input name='per_score ' value=''>分</span><a class='m-example-edit' style='text-decoration: none;'><i class='glyphicon glyphicon-edit '></i>编辑</a><a class='m-example-remove ' style='text-decoration: none;'><i class='glyphicon glyphicon-trash '></i>删除</a><a class='m-example-up ' aria-hidden='true ' title='上移 ' style='text-decoration: none;'><i class='glyphicon glyphicon-menu-up '></i>上移</a><a class='m-example-down ' aria-hidden='true ' title='下移 ' style='text-decoration: none;'><i class='glyphicon glyphicon-menu-down '></i>下移</a></div></div></div>")
					
					//将编辑好的题目内容存放到显示题目的控件中  
					var question_describe = $(this).parents(".group_questionAdd").find(".question_describe").val();
					var answer1 = $(this).parents(".group_questionAdd").find(".answer1").val();
					var answer2 = $(this).parents(".group_questionAdd").find(".answer2").val();
					var answer3 = $(this).parents(".group_questionAdd").find(".answer3").val();
					var answer4 = $(this).parents(".group_questionAdd").find(".answer4").val();
					var explain = $(this).parents(".group_questionAdd").find(".analysisEditor").text();
					var answer = $(this).parents(".group_questionAdd").find("input[name='radioOrCheck']:checked").val();
					
					//改变正确答案的颜色
					if(answer=='A'){
						$(this).parents(".big-question-hand").find(".a:last").addClass("correctAnswer");
					}else if(answer=='B'){
						$(this).parents(".big-question-hand").find(".b:last").addClass("correctAnswer");
					}else if(answer=='C'){
						$(this).parents(".big-question-hand").find(".c:last").addClass("correctAnswer");
					}else if(answer=='D'){
						$(this).parents(".big-question-hand").find(".d:last").addClass("correctAnswer");
					}
					
//					alert(question_describe+""+answer1+""+answer2+""+answer3+""+answer4+""+explain);
					$(this).parents(".big-question-hand").find("dt:last").append(question_describe);
					$(this).parents(".big-question-hand").find(".a:last").append(answer1);
					$(this).parents(".big-question-hand").find(".b:last").append(answer2);
					$(this).parents(".big-question-hand").find(".c:last").append(answer3);
					$(this).parents(".big-question-hand").find(".d:last").append(answer4);
					$(this).parents(".big-question-hand").find(".analysis:last").append(explain);
					$(this).parents(".big-question-hand").find(".answer:last").append(answer);
					//增加新题目编辑
					$(this).parents(".big-question-hand").append("<div class='group_questionAdd' style='margin-top: 10px;'><div class='questions-group'><h4><input type='text' placeholder='试题描述' class='q-ipt q-ipt-t question_describe'></h4><div class='questionContent'><div class='q-item keyFillContent_first'><span><input type='radio' value='A' name='radioOrCheck' class='radioOrCheck' checked='checked'>A</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer1'></div><div class='q-item keyFillContentAdd'><span><input type='radio' value='B' name='radioOrCheck' class='radioOrCheck'>B</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer2'></div><div class='q-item keyFillContentAdd'><span><input type='radio' value='C' name='radioOrCheck' class='radioOrCheck'>C</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer3'></div><div class='q-item keyFillContentAdd'><span><input type='radio' value='D' name='radioOrCheck' class='radioOrCheck'>D</span><input type='text' placeholder='请输入内容' class='q-ipt q-ipt-i answer4'></div><div class='q-opra'><a class='q-opra-add addKeyRadioOrCheck' href='#'><em class='glyphicon glyphicon-plus'></em><span>增加选项</span></a><a class='q-opra-reduce removeKeyRadioOrCheck' href='#'><em class='glyphicon glyphicon-trash'></em><span>删除选项</span></a></div></div><div class='analysisDom'><span>解析</span><div class='textareaDom analysisEditor' contenteditable='true'  name='analysis'></div></div><div class='btn-div'><button class='btn btn-blue-border2 saveQuestionBtn btn-default' type='button'>保存</button> <input type='hidden' name='tab_num' value=''></div></div></div>");
					//将原来编辑好的题目去除
					$(this).parents(".group_questionAdd").remove();
				})
			});
		</script>
		<!--/请在上方写此页面业务相关的脚本-->
	</body>

</html>