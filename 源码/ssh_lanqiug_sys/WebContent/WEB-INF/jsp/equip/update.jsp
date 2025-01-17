<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>

<html>

	<head>
		<meta charset="UTF-8">
		<title>表单</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${ctx}/common/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/common/plugins/font-awesome/css/font-awesome.min.css">
	</head>

	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>新增器材</legend>
			</fieldset>

			<form class="layui-form" action="${ctx}/equip_exUpdate.do" enctype="multipart/form-data" onsubmit="return toVaild()">
				<input type="hidden" name="id" value="${Obj.id}">
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">器材名称</label>
						<div class="layui-input-inline">
							<input type="text" name="name" autocomplete="off" class="layui-input" value="${Obj.name}">
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">器材价格</label>
						<div class="layui-input-inline">
							<input type="number" name="price" autocomplete="off" class="layui-input" value="${Obj.price}">
						</div>
					</div>
				</div>
				<div class="layui-form-item">
							<label class="layui-form-label">器材类型:</label>
							<div class="layui-input-block" style="width: 190px;">
								<select name="type" lay-filter="leixin" id="leixing">
									<option></option>
 									<option value="1">衣裤</option>
									<option value="2">球鞋</option>
 									<option value="4">其他</option>
								</select>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" type="submit">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="${ctx}/common/plugins/layui/layui.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {

			});
 			var leixing = ${Obj.type};

 			$(function(){
				 $("#leixing").find("option[value="+leixing+"]").attr("selected",true);
			}) 
		</script>
	</body>

</html>