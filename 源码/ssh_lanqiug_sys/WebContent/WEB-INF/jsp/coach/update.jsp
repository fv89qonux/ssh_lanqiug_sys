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
				<legend>新增教练</legend>
			</fieldset>

			<form class="layui-form" action="${ctx}/coach_exUpdate.do" enctype="multipart/form-data" onsubmit="return toVaild()">
				<input type="hidden" name="id" value="${Obj.id}">
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">教练名称</label>
						<div class="layui-input-inline">
							<input value="${Obj.name}" type="text" name="name" autocomplete="off" class="layui-input" >
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">教练年龄</label>
						<div class="layui-input-inline">
							<input value="${Obj.age}" type="number" name="age" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">教练价格</label>
						<div class="layui-input-inline">
							<input value="${Obj.price}" type="number" name="price" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item">
						<label class="layui-form-label">教练等级:</label>
						<div class="layui-input-block" style="width: 190px;">
							<select name="level" lay-filter="leixin" id="leixing">
								<option></option>
								<option value="0">特级</option>
								<option value="1">高级</option>
								<option value="2">中级</option>
							</select>
						</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">教练性别:</label>
					<div class="layui-input-block" style="width: 190px;">
						<select name="sex" lay-filter="zhungtai" id="zhuangtai">
							<option></option>
							<option value="0">男</option>
							<option value="1">女</option>
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
 			var leixing = ${Obj.level};
			var zhuangtai = ${Obj.sex};

 			$(function(){
				 $("#leixing").find("option[value="+leixing+"]").attr("selected",true);
				 $("#zhuangtai").find("option[value="+zhuangtai+"]").attr("selected",true);
			}) 
		</script>
	</body>

</html>