<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
<html>

	<head>
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
		<link rel="stylesheet" type="text/css" href="css/paperList.css" />
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
							<li class="current">
								<a href="paperList.jsp" title="试卷列表">试卷列表</a>
							</li>
							<li>
								<a href="addTestPaper.jsp" title="新增试卷">新增试卷</a>
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
			<div class="Hui-article" style="background-color: rgb(246,247,251);">
				<article class="cl pd-20">
					<!--试卷导航栏开始-->
					<div class="container" style="width: 100%;">
						<div class="row clearfix">
							<div class="col-md-12 column">
								<nav class="navbar navbar-default" role="navigation" style="margin-left: -18px;">
									<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
										<ul class="nav navbar-nav">
											<li class="active" style="margin-left: -18px;">
												<a href="#">全部</a>
											</li>
											<li>
												<a href="#">历年真题</a>
											</li>
											<li>
												<a href="#">模拟试卷</a>
											</li>
											<li>
												<a href="#">知识点练习</a>
											</li>
										</ul>
										<form class="navbar-form navbar-left pull-right" role="search">
											<div class="form-group">
												<input type="text" class="form-control" />
											</div>
											<button type="submit" class="btn btn-default">搜索</button>
										</form>
									</div>

								</nav>
							</div>
						</div>
					</div>
					<div class="row clearfix" >
						<div class="col-md-4" style="margin-top: -15px;">
							<!--
                    	作者：offline
                    	时间：2017-11-16
                    	描述：试卷列表
                   -->
							<div class="page_item" >
								<div class="page_item_main">
									<h1 class="page_item_title">2017年软件设计师上午考试试卷</h1>
									<ul class="page_item_information">
										<li>考试时长：150分钟</li>
										<li>所属类别：软件设计师</li>
										<li>试卷类型：真题</li>
										<li>出卷人：杰爸爸</li>
										<li class="examing_peple_num">0人正在考试</li>
									</ul>

								</div>
								<ul class="process_footer_nav">
									<li class="process_footer_nav_firstli" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="编辑">

										<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
									</li>
									<li class="examed_total" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="成绩查询">
										<a href="">0人已考</a>
									</li>
								</ul>
							</div>
							
							<!--
                    	作者：offline
                    	时间：2017-11-16
                    	描述：试卷列表
                   -->
							<div class="page_item">
								<div class="page_item_main">
									<h1 class="page_item_title">2017年软件设计师上午考试试卷</h1>
									<ul class="page_item_information">
										<li>考试时长：150分钟</li>
										<li>所属类别：软件设计师</li>
										<li>试卷类型：真题</li>
										<li>出卷人：杰爸爸</li>
										<li class="examing_peple_num">0人正在考试</li>
									</ul>

								</div>
								<ul class="process_footer_nav">
									<li class="process_footer_nav_firstli" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="编辑">

										<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
									</li>
									<li class="examed_total" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="成绩查询">
										<a href="">0人已考</a>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-md-4" style="margin-top: -15px;">
							<!--
                    	作者：offline
                    	时间：2017-11-16
                    	描述：试卷列表
                   -->
							<div class="page_item">
								<div class="page_item_main">
									<h1 class="page_item_title">2017年软件设计师上午考试试卷</h1>
									<ul class="page_item_information">
										<li>考试时长：150分钟</li>
										<li>所属类别：软件设计师</li>
										<li>试卷类型：真题</li>
										<li>出卷人：杰爸爸</li>
										<li class="examing_peple_num">0人正在考试</li>
									</ul>

								</div>
								<ul class="process_footer_nav">
									<li class="process_footer_nav_firstli" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="编辑">

										<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
									</li>
									<li class="examed_total" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="成绩查询">
										<a href="">0人已考</a>
									</li>
								</ul>
							</div>
							
							<!--
                    	作者：offline
                    	时间：2017-11-16
                    	描述：试卷列表
                   -->
							<div class="page_item">
								<div class="page_item_main">
									<h1 class="page_item_title">2017年软件设计师上午考试试卷</h1>
									<ul class="page_item_information">
										<li>考试时长：150分钟</li>
										<li>所属类别：软件设计师</li>
										<li>试卷类型：真题</li>
										<li>出卷人：杰爸爸</li>
										<li class="examing_peple_num">0人正在考试</li>
									</ul>

								</div>
								<ul class="process_footer_nav">
									<li class="process_footer_nav_firstli" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="编辑">

										<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
									</li>
									<li class="examed_total" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="成绩查询">
										<a href="">0人已考</a>
									</li>
								</ul>
							</div>
						</div>

						<div class="col-md-4" style="margin-top: -15px;">
							<!--
                    	作者：offline
                    	时间：2017-11-16
                    	描述：试卷列表
                   -->
							<div class="page_item">
								<div class="page_item_main">
									<h1 class="page_item_title">2017年软件设计师上午考试试卷</h1>
									<ul class="page_item_information">
										<li>考试时长：150分钟</li>
										<li>所属类别：软件设计师</li>
										<li>试卷类型：真题</li>
										<li>出卷人：杰爸爸</li>
										<li class="examing_peple_num">0人正在考试</li>
									</ul>

								</div>
								<ul class="process_footer_nav">
									<li class="process_footer_nav_firstli" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="编辑">

										<a href=""><span class="glyphicon glyphicon-pencil"></span></a>
									</li>
									<li class="examed_total" data-toggle="tooltip" data-placement="top" data-container="body" data-original-title="成绩查询">
										<a href="">0人已考</a>
									</li>
								</ul>
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
		</script>
		<!--/请在上方写此页面业务相关的脚本-->
	</body>

</html>