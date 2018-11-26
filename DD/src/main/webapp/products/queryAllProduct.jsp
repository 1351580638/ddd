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
	<script>
        $(function(){
                $('#prodatagrid').datagrid({
                    fit:true,
                    title: '图书列表',
                    url:'selectAll',
                    columns:[[
                        {field:'xxx',checkbox:"true"},

                        {field:'book_id',title:'编号',width:100},
                        {field:'book_name',title:'书名',width:100},
                        {field:'product_image',title:'封面图片',width:100,formatter: function(value,row,index){
                                return "<img src='${pageContext.request.contextPath}/productImages/"+row.product_image+"'/>"
                            }},
                        {field:'book_price',title:'原价',width:100},
                        {field:'dangPrice',title:'当当价',width:100},
                        {field:'inventory',title:'库存',width:100},
                        {field:'author',title:'作者',width:100},
                        {field:'press',title:'出版社',width:100},
                        {field:'salenum',title:'销量',width:100},
                        {field:'custome_score',title:'顾客评分',width:100},
                        {field:'category_name',title:'所属类别',width:100},
                    ]],
                    width:700,
                    height:330,
                    iconCls:"icon-search",
                    pagination:true,
                    toolbar:"#myToolbar",

                    onDblClickRow:function(rowIndex, rowData){
                        $("#proId").val(rowData.book_id);
                        $("#proName").val(rowData.book_name);
                        $("#proPrice").val(rowData.book_price);
                        $("#inventory").val(rowData.inventory);
                        $("#author").val(rowData.author);
                        $("#press").val(rowData.press);
                        $("#salenum").val(rowData.salenum);
                        $("#custome_score").val(rowData.custome_score);
                        $("#recommend").val(rowData.recommend);
                        $("#messages").val(rowData.messages);



                        //打开对话框
                        //把要修改的数据填入到修改框
                        $("#updateProdia").dialog("open");
                    }
                });
            }
        );

        //打开修改的框开始
        function toOpenupdate(){
            $("#updateProdia").dialog("open");
        }
        //打开修改的框结束

        function toManyDelete(){
          //  console.log($("#prodatagrid").datagrid("getSelections"));
            var allSelected=$("#prodatagrid").datagrid("getSelections");
            if(allSelected.length==0){
                alert("选择要删除的内容")
            }else{
                var isConfirm=confirm("确认真的要删除吗");
                alert(isConfirm)
                if(isConfirm){
                    var ids=new Array(allSelected.length);
                    for (var i = 0; i < allSelected.length; i++) {
						 ids[i]=allSelected[i].book_id
                    }
                }
            }
				 $.ajax({
				 url:"delete",
               	 data:"ids="+ids,


				 success:function(data){
                    alert("data")

                    if(data){
                        alert("删除成功");
                        $("#prodatagrid").datagrid("reload");
                    }else{
                        alert("删除失败");
                    }
                },
            });
        }
			/*添加的框的开始*/
        function pro1() {
            $("#prof1").form("submit",{
                url:"insert",
                success:function(data){
                    if(data=="true"){
                        alert("添加ok");
                        $("#add").dialog("close");
                        $("#prodatagrid").datagrid("reload");
                    }else{
                        alert("添加失败");
                    }
                },
            });
        }
        /*添加框的结束*/
        //打开添加的框
        function toOPeninsert(){
            $("#updateProdia").dialog("open");
        }
        //打开添加框的结束==

        //修改的点击事件的开始
        function toUpdate(){
            $("#prof2").form("submit",{
                url:"update",
                success:function(data){
                    alert(123)
                    if(data=="true"){
                        //修改成功
                        alert("修改成功");
                        //关闭窗口
                        $("#update").dialog("close");
                        //刷新界面
                        $("#prodatagrid").datagrid("reload");
                    }else{
                        alert("修改失败");
                    }
                }
            });
        }
        //修改的点击事件的结束==



        //修改的对话框开始
        $("#updateProdia").dialog({
            title:"修改对话框",
            width:300,
            height:125,
            //resizable:false,
            closed:true,
        });
        //修改的对话框结束


	</script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<table id="prodatagrid" ></table>
	<div id="addProdia" class="easyui-dialog" data-options="closed:true">
	<form id="prof1" style="margin:30px"  enctype="multipart/form-data" method="post">
	<table>
	<tr><td>
        <input id="proId1" name="book_id" type="hidden"/>
		图书名字：<input class="easyui-validatebox"  name="book_name" data-options="required:true,missingMessage:'请填写商品名字'"/><br/><br/>
		图书封面：<input class="easyui-filebox" name="uploadFile" data-options="required:true,missingMessage:'请选择封面'"/><br/><br/>
	</td>
	<td>
		图书原价：<input class="easyui-validatebox" name="book_price" type="number" step="0.1" data-options="required:true,missingMessage:'请输入价格'"/> <br/><br/>
		当当价格：<input class="easyui-validatebox"  name="Dangprice" type="number" step="0.1" data-options="required:true,missingMessage:'请输入价格'"/><br/><br/>
		</td></tr>
		<tr><td>
		库存：&nbsp;&nbsp;<input class="easyui-validatebox"  name="inventory" data-options="required:true,missingMessage:'请输入库存'"/><br/><br/>
		作者：&nbsp;&nbsp;<input class="easyui-validatebox" name="author" data-options="required:true,missingManage:'请输入作者名称'"/><br/><br/>
		</td>
		<td>
		出版社：&nbsp;<input class="easyui-validatebox"  name="press" data-options="required:true,missingManage:'请输入出版社名称'"/><br/>
		&nbsp;销量：&nbsp;&nbsp;<input class="easyui-validatebox"  type="number" name="salenum" data-options="required:true,missManage:'请输入销量记录'" /><br/><br/>
		</td></tr>
		<tr><td>
		顾客评分：<input class="easyui-validatebox"  name="custome_score" data-options="required:true,missingManage:'请输入顾客评分'"/><br/><br/>
		编辑推荐：<input class="easyui-validatebox"  name="recommend" data-options="required:true,missManager:'请输入编辑推荐'"><br/><br/>
		</td>
		<td>
		类别所属：<select id="prosele1" name="cid"></select><br/><br/>
		简介内容：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="22" name="messages" ></textarea><br/><br/>
		</td></tr>
		</table>
		<center>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" onClick="pro1()">确认</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel">取消</a>
		</center>
	</form>
	</div>
	<div id="updateProdia" class="easyui-dialog" data-options="closed:true">
	<form id="prof2" style="margin:30px" enctype="multipart/form-data" method="post">
	<table>
		<tr>
		<td>
		<input id="proId" name="book_id" type="hidden"/>
		图书名字：<input class="easyui-validatebox" id="proName" name="book_name" data-options="required:true,missingMessage:'请填写商品名字'"/><br/><br/>
		图书封面：<input class="easyui-filebox"  name="uploadFile" data-options="required:true,missingMessage:'请选择封面'"/><br/><br/>
		</td>
		<td>
		图书原价：<input class="easyui-validatebox" id="proPrice" name="book_price" type="number" step="0.1" data-options="required:true,missingMessage:'请输入价格'"/> <br/><br/>
		当当价格：<input class="easyui-validatebox" id="dangPrice" name="Dangprice" type="number" step="0.1" data-options="required:true,missingMessage:'请输入价格'"/><br/><br/>
		</td>
		</tr>
		<tr><td colspan="2"><p id="image"></p></td></tr>
		<tr><td>
		库存：&nbsp;&nbsp;<input class="easyui-validatebox" id="inventory" name="inventory" data-options="required:true,missingMessage:'请输入库存'"/><br/><br/>
		作者：&nbsp;&nbsp;<input class="easyui-validatebox" id="author" name="author" data-options="required:true,missingManage:'请输入作者名称'"/><br/><br/>
			</td>
			<td>
		出版社：&nbsp;<input class="easyui-validatebox" id="press" name="press" data-options="required:true,missingManage:'请输入出版社名称'"/><br/>
		销量：&nbsp;&nbsp;<input class="easyui-validatebox" id="salenum" type="number" name="salenum" data-options="required:true,missManage:'请输入销量记录'" /><br/><br/>
		</td></tr>
		<tr><td>
		顾客评分：<input class="easyui-validatebox" id="custome_score" name="custome_score" data-options="required:true,missingManage:'请输入顾客评分'"/><br/><br/>
		编辑推荐：<input class="easyui-validatebox" id="recommend" name="recommend" data-options="required:true,missManager:'请输入编辑推荐'"><br/><br/>
		</td><td>
		类别所属：<select id="prosele" name="cid"></select><br/><br/>
		简介内容：<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea rows="5" cols="22" name="messages" id="messages"></textarea><br/><br/>
			</td>
		</tr>
	</table>
		<center>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-save" onClick="pro();">确认</a>
		<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onClick="exit();">取消</a>
		</center>
		<%--按钮框--%>
		<div id="myToolbar">
			<!--  toolbar:"#myToolbar",//在div的id有添加的按钮 -->
			<a href="JavaScript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add'" onclick="toOPeninsert()">添加</a>
			<a href="JavaScript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit'" onclick="toOpenupdate()">修改</a>
			<a href="JavaScript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove'" onclick="toManyDelete()">批量删除</a>
		</div>
		<%--按钮的结束--%>

	</form>
	</div>
	<script type="text/javascript">
	</script>
</body>
</html>