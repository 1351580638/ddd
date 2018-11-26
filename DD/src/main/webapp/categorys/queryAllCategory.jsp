<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/easyui.css">
 	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/icon.css">
  	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table id="categorydatagrid"></table>
	<div id="addCategorydia" class="easyui-dialog" data-options="closed:true">
	<form id="categoryf1" style="margin:20px" >
		类别名称：&nbsp;&nbsp;&nbsp;&nbsp;<input class="easyui-validatebox"  name="categoryName" data-options="required:true,missingMessage:'请填写类别名'"/><br/>
		类别LEV：&nbsp;&nbsp;&nbsp;&nbsp; <select id="categorysele1" name="parentId"></select><br/>
		<center>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" onClick="Cate1()">确认</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel">取消</a>
		</center>
	</form>
	</div>
	<div id="updateCategorydia"  class="easyui-dialog" data-options="closed:true">
	<form id="categoryf2" style="margin:20px" >
		<input type="hidden" name="categoryId" id="categoryId"/>
		类别名称：&nbsp;&nbsp;&nbsp;&nbsp;<input class="easyui-validatebox" id="cateName" name="categoryName" data-options="required:true,missingMessage:'请填写类别名'"/><br/>
		类别LEV：&nbsp;&nbsp;&nbsp;&nbsp; <select id="categorysele" name="parentId"></select><br/>
		<center>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" onClick="return Cate2()">确认</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onClick="cateExit();">取消</a>
		</center>
	</form>
	</div>
	<script type="text/javascript">
	
</script>
</body>
</html>