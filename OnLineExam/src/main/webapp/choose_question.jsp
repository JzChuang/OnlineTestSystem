<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

		<title>考试云平台</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<link rel="shortcut icon" href="http://new.kaoshixing.com/static/images/examstar_icon.ico">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" type="text/css" href="css/ksx-base(1).css">
		<link rel="stylesheet" type="text/css" href="css/jquery.bootgrid.css">
		<link rel="stylesheet" type="text/css" href="css/pikaday.css">
		<link rel="stylesheet" type="text/css" href="css/styles.min.css">
		<link rel="stylesheet" type="text/css" href="css/modal_content_style.css">
		<style>
			.infoBar .actions .dropdown:last-child {
				display: none;
			}
		</style>
		<script type="text/javascript" async="" src="./vds.js.下载"></script>
		<style>
			#grid-data-footer {
				background: #fff;
			}
			.fade .in {
				display: none;
			}
		</style>
	</head>

	<body>
		<div>
			<form action="" name="form" method="get" id="subForm">
				<input type="hidden" class="" name="search" value="true">
				<div class="topSelDiv">
					<div class="topContent">
						<div>
							<div class="form-group">
								<label>试题分类：</label>
								<select name="difficult" class="modal_select select_nomal">
									<option value="" selected="">请选择</option>
									<option >软件工程</option>
									<option >计算机网络</option>
									<option >计算机组成原理</option>
								</select>
							</div>
							<div class="form-group">
								<label>创建时间：</label>
								<div class="calendar"><em></em><input name="dateForm" type="text" id="dateForm" value=""></div>
								<span>到</span>
								<div class="calendar"><em></em><input name="dateTo" type="text" id="dateTo" value=""></div>
							</div>
						</div>
					</div>

					<div role="tabpanel" class="tab-area tab-col2">
						<!-- Tab panes -->

						<div class="tab-content">
							<div role="tabpanel" class="tab-pane active">

								<div class="rqm-table2 com-drop">
									<table id="grid-data" class="table bootgrid-table" aria-busy="false">
										<thead>
											<tr>
												<!--<th class="select-cell"><label class="select-label"><input name="select" type="checkbox" class="select-box" value="all" {{ctx.checked}}=""><span class="select-box"><i class="icons8-checked-checkbox"></i></span></label></th>-->
												<th style="width: 8%; padding-left: 4%;"><input type="checkbox" class="pull-left"></th>
												<th data-column-id="type" class="text-left" style="width:8%;">
													<a href="javascript:void(0);" class="column-header-anchor "><span class="text">题型</span><span class="icon glyphicon "></span></a>
												</th>
												<th data-column-id="classification" class="text-left" style="width:10%;">
													<a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">类别</span><span class="icon glyphicon "></span></a>
												</th>
												<th data-column-id="content" class="text-left" style="width: 59%;">
													<a href="javascript:void(0);" class="column-header-anchor "><span class="text">试题内容</span><span class="icon glyphicon "></span></a>
												</th>
												
												<th data-column-id="createTime" class="text-left" style="width:20%;">
													<a href="javascript:void(0);" class="column-header-anchor sortable"><span class="text">创建时间</span><span class="icon glyphicon "></span></a>
												</th>
											</tr>
										</thead>
										<tbody>
											<tr data-row-id="5a0b9cb623f7f94cb8cdae4c">
												<!--<td class="select-cell" style="{{ctx.style}}"><label class="select-label"><input name="select" type="checkbox" class="select-box" value="5a0b9cb623f7f94cb8cdae4c"><span class="select-box"></span></label></td>-->												
												<td style="width: 8%; padding-left: 4%;"><input type="checkbox" class="pull-left"></td>
												<td class="text-left" style="width:8%;">单选</td>
												<td class="text-left" style="width:10%;">电磁场与电磁波</td>
												<td class="text-left" style="">在机场、商厦、地铁等公共场所乘自动扶梯时应靠（）站立,另一侧供有急事赶路的人快行。sdfasdfsdfasdfasdfasdfasf</td>
												<td class="text-left" style="width:20%;">2016-11-02 12:00:09</td>
											</tr>
											<tr data-row-id="5a0b9cb623f7f94cb8cdae4b">
												<!--<td class="select-cell" style="{{ctx.style}}"><label class="select-label"><input name="select" type="checkbox" class="select-box" value="5a0b9cb623f7f94cb8cdae4b"><span class="select-box"><i class="icons8-checked-checkbox"></i></span></label></td>-->
												<td style="width: 8%; padding-left: 4%;"><input type="checkbox" class="pull-left"></td>
												<td class="text-left" style="width:8%;">单选</td>
												<td class="text-left" style="width:10%;">示例</td>
												<td class="text-left" style="">一般性的拜访多以（）为最佳交往时间。</td>
												<td class="text-left" style="width:20%;">2016-11-02 12:00:09</td>
											</tr>
											<tr data-row-id="5a0b9cb623f7f94cb8cdae4a">
												<!--<td class="select-cell" style="{{ctx.style}}"><label class="select-label"><input name="select" type="checkbox" class="select-box" value="5a0b9cb623f7f94cb8cdae4a"><span class="select-box"><i class="icons8-checked-checkbox"></i></span></label></td>-->
												<td style="width: 8%; padding-left: 4%;"><input type="checkbox" class="pull-left"></td>
												<td class="text-left" style="width:8%;">单选</td>
												<td class="text-left" style="width:10%;">示例</td>
												<td class="text-left" style="">拜访他人应选择（）,并应提前打招呼。</td>
												<td class="text-left" style="width:20%;">2016-11-02 12:00:09</td>
											</tr>											
										</tbody>
									</table>									
								</div>
							</div>
						</div>
					</div>
					<div class="buttonP">
						<a class="btn modal_btn_default btn_off" href="" id="closeBtn">关闭</a>
						<a class="btn modal_btn_default btn_on" href="" id="saveBtn">保存</a>
					</div>
				</div>
			</form>
		</div>
	</body>
	<script type="text/javascript">
		
	</script>
</html>