<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/css.css">
	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/easyui.css">
 	<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/icon.css">
  	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easyui.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/js/easyui-lang-zh_CN.js"></script>

<script type="text/javascript">
$(function(){
	$("#mainul").tree({
					lines:true,
				 	animate:true,
					data:[{
						 text:'类别管理模块',
						 iconCls:'icon-large-chart',
						 children:[{
							 	text:'展示所有类别',
							 	iconCls:'icon-filter'
						 }]
					},{
						text:'商品管理模块',
						state: 'closed',
						iconCls:'icon-large-chart',
						children:[{
						 	text:'展示所有商品',
						 	iconCls:'icon-large-shapes'
						 	
					 }]
					
					}],
					onClick:function(none){
						if(none.text=="展示所有类别"){
							$("#myiframe").prop("src","${pageContext.request.contextPath}/categorys/queryAllCategory.jsp");
						}else if(none.text=="展示所有商品"){
							$("#myiframe").prop("src","${pageContext.request.contextPath}/products/queryAllProduct.jsp");
						}
					}
	})
})
</script>
  </head>
  <body class="easyui-layout">
 	<div data-options="region:'north'" style="height:130px;">
 	 <table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="57" background="${pageContext.request.contextPath}/admin/imgs/global/main_03.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="378" height="57" background="${pageContext.request.contextPath}/admin/imgs/global/main_01.gif">&nbsp;</td>
        <td>&nbsp;</td>
        <td width="281" valign="bottom"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="33" height="27"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_05.gif" width="33" height="27" /></td>
            <td width="248" background="${pageContext.request.contextPath}/admin/imgs/global/main_06.gif"><table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
              <tr>
                <td height="17"><div align="right"><a href="#" ><img src="${pageContext.request.contextPath}/admin/imgs/global/pass.gif" width="69" height="17" /></a></div></td>
                <td><div align="right"><a href="#" ><img src="${pageContext.request.contextPath}/admin/imgs/global/user.gif" width="69" height="17" /></a></div></td>
                <td><div align="right"><a href="${pageContext.request.contextPath}/user/loginOut.do" target="_parent"><img src="${pageContext.request.contextPath}/admin/imgs/global/quit.gif" alt=" " width="69" height="17" /></a></div></td>
              </tr>
            </table></td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="40" background="${pageContext.request.contextPath}/admin/imgs/global/main_10.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="194" height="40" background="${pageContext.request.contextPath}/admin/imgs/global/main_07.gif">&nbsp;</td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="21"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_13.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="main.html" target="rightFrame">首页</a></div></td>
            <td width="21" class="STYLE7"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_15.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:history.go(-1);">后退</a></div></td>
            <td width="21" class="STYLE7"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_17.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:history.go(1);">前进</a></div></td>
            <td width="21" class="STYLE7"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_19.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="javascript:window.parent.location.reload();">刷新</a></div></td>
            <td width="21" class="STYLE7"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_21.gif" width="19" height="14" /></td>
            <td width="35" class="STYLE7"><div align="center"><a href="" target="_parent">帮助</a></div></td>
            <td>&nbsp;</td>
          </tr>
        </table></td>
        <td width="248" background="${pageContext.request.contextPath}/admin/imgs/global/main_11.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="16%"><span class="STYLE5"></span></td>
            <td width="75%"><div align="center"></div></td>
            <td width="9%">&nbsp;</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="30" background="${pageContext.request.contextPath}/admin/imgs/global/main_31.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="8" height="30"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_28.gif" width="8" height="30" /></td>
        <td width="147" background="${pageContext.request.contextPath}/admin/imgs/global/main_29.gif"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td width="24%">&nbsp;</td>
            <td width="43%" height="20" valign="bottom" class="STYLE1">管理菜单</td>
            <td width="33%">&nbsp;</td>
          </tr>
        </table></td>
        <td width="39"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_30.gif" width="39" height="30" /></td>
        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr></span></td>
            <td valign="bottom" class="STYLE1"><div align="right"></div></td>
          </tr>
        </table></td>
        <td width="17"><img src="${pageContext.request.contextPath}/admin/imgs/global/main_32.gif" width="17" height="30" /></td>
      </tr>
    </table></td>
  </tr>
</table>


 	</div>  
    <div data-options="region:'west',title:'模块管理'" style="width:130px;">
    	<ul id="mainul"></ul>
    </div>   
    <div id="center" data-options="region:'center',title:'数据展示'" >
    	<!-- 框架集   代表页面中的一个子窗口-->
    	<iframe id='myiframe' frameborder=0 height="100%" width="100%" marginheight=0 marginwidth=0 scrolling=no src="main1.jsp">
    			
    	</iframe>
    	
    </div>   
  </body>
</html>
