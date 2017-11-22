/**
 * 在index.jsp页面点击注册弹出login.jsp
 */
$(function() {
	$("#login").click(function(event) {
		layer.open({
			type : 2,
			title : '注册登录',
			maxmin : true,
			skin : 'layui-layer-lan',
			shadeClose : true, // 点击遮罩关闭层
			area : [ '600px', '360px' ],
			scrollbar : false,
			content : 'login.jsp', // 弹框显示的url
			success: function(layero, index){
				  var body = layer.getChildFrame('body',index);//建立父子联系
				  var login = body.find(".login");
				  login.css("display","block");
			  }
		});

	});
	
	$("#reg").click(function(event) {
		layer.open({
			type : 2,
			title : '注册登录',
			maxmin : true,
			skin : 'layui-layer-lan',
			shadeClose : true, // 点击遮罩关闭层
			area : [ '600px', '360px' ],
			scrollbar : false,
			content : 'login.jsp', // 弹框显示的url
			success: function(layero, index){
				  var body = layer.getChildFrame('body',index);//建立父子联系
				  var login = body.find(".reg");
				  login.css("display","block");
			  }
		});
		
	});
	
	
})


