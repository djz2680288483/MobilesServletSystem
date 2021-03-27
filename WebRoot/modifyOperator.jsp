<%@page import="com.oracle.po.TOperator"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<html><HEAD><TITLE>中国移动业务管理系统</TITLE>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js"></script>
<script>
	$(document).ready(function(){
		//获取登录ID的文本框组件
		var T1 = $("#T1");
		//获取姓名的文本框组件
		var T2 = $("#T2");
		//获取密码的文本框组件
		var T3 = $("#T3");
		//获取确认密码的文本框组件
		var T4 = $("#T4");
		//获取按钮组件
		var btn_sub = $("#btn_sub");
		var sp1 = $("#sp1");
		var isAdmin = $("#isadmin");
		var isAdmin1 = $("#isadmin1");
		//定义一个布尔类型的变量
		var flag=true;
		//对登录ID设置内容改变事件
		T1.change(function(){
			//获取选择的value 
			var value = T1.val();
			$.get("check1",{operator_id:value,operator:'modifyOperator'},function(data){
					var strs = data.split(",");
					T2.val(strs[0]);
					T3.val(strs[1]);
					T4.val(strs[1]);
					if(strs[2]=='1'){
						isAdmin.attr("checked","true");
					}else{
					
						isAdmin1.attr("checked","true");
					}
			});
		});
		
		
		//对按钮设置点击事件
		btn_sub.click(function(){
			//获取T1文本
			var value1 = T1.val();
			//获取T2文本
			var value2 = T2.val();
			//获取T3文本
			var value3 = T3.val();
			//获取T4文本
			var value4 = T4.val();
			
			if(value1=='0'){
			flag=false;
				alert("ID不能为空");
			}else if(value2==''){
			flag=false;
				alert("姓名不能为空");
			}else if(value3==''){
			flag=false;
				alert("密码不能为空");
			}else if(value4==''){
			flag=false;
				alert("确认密码不能为空");
			}else{
				if(value3!=value4){
					flag=false;
					alert("两次密码不一致");
				}else{
					flag=true;
				}
			}
			
			if(flag==true){
				var form1 = $("#form1");
				form1.submit();
			}
		});
	});
</script>
</HEAD>
<body bgColor=#ffffff leftMargin=0 topMargin=0 marginheight="0" marginwidth="0">
<center>
<table cellSpacing=0 cellPadding=0 width=749 border=0>
  <tbody>
  <tr>
    <td width=173><A href="http://www.chinamobile.com/index.asp"><img 
      height=74 src="images/logo.gif" width=173 border=0></A></td>
    <td vAlign=top align=right>
      <table width="100%" border=0 cellPadding=0 cellSpacing=0>
        <tbody>
        <tr bgColor=#2650a6>
          <td height="12"><img src="images/spacer.gif" width="1" height="1"></td>
          <td height="12"><img src="images/spacer.gif" width="1" height="1"></td>
          <td height="12"><img src="images/spacer.gif" width="1" height="1"></td>
          <td height="12"><img src="images/spacer.gif" width="1" height="1"></td>
          <td height="12"><img src="images/spacer.gif" width="1" height="1"></td>
        </tr>
        <tr bgColor=#FFFFFF>
          <td><img src="images/spacer.gif" width="1" height="1"></td>
          <td><img src="images/spacer.gif" width="1" height="1"></td>
          <td><img src="images/spacer.gif" width="1" height="1"></td>
          <td><img src="images/spacer.gif" width="1" height="1"></td>
          <td><img src="images/spacer.gif" width="1" height="1"></td>
        </tr>
        <tr>
          <td><img src="images/pic01.gif" width="115" height="55"></td>
          <td><img src="images/pic04.gif" width="115" height="55"></td>
          <td><img src="images/pic03.gif" width="115" height="55"></td>
          <td><img src="images/pic02.gif" width="115" height="55"></td>
          <td><img src="images/pic05.gif" width="115" height="55"></td>
        </tr></tbody></table></td></tr>
  <tr>
    <td height="12" colSpan=2 align=right bgColor=#d4dced>
     

      <img src="images/spacer.gif" width="1" height="1">
      <table cellSpacing=0 cellPadding=0 border=0>
        <tbody>
        <tr>
          </tr></tbody></table>
 
    </td></tr>
  <tr>
  <td colSpan=2><img height=2 src="images\blank(1).gif" width=1></td></tr></tbody></table>
<table cellSpacing=0 cellPadding=0 width=749 border=0>
  <tbody>
  <tr vAlign=top>
    <td width=173 bgColor=#c9d3e9 rowSpan=2>
      <table cellSpacing=0 cellPadding=0 width=173 border=0>
        <tbody>
        <jsp:include page="menu.jsp"/>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>

        <tr align=middle>
          <td colSpan=2 height=160>&nbsp;</td></tr>
        <tr>
          <td colSpan=2><img height=1 src="images/blank.gif" 
        width=1></td></tr></tbody></table></td>
    <td width=2 rowSpan=3><img height=1 src="images\blank(1).gif" width=2></td>
    <td width="2">
      <table cellSpacing=0 cellPadding=0 width="100%" border=0>
        <tbody>
        <tr>
          <td height=25>&nbsp;您现在的位置：修改操作员</td>
        </tr>
        <tr>
          <td bgColor=#2650a6><img height=1 src="images\blank(1).gif" 
            width=1></td></tr>
        <tr>
          <td><img height=2 src="images\blank(1).gif" width=574></td></tr></tbody></table></td></tr>
  <tr vAlign=top>
    <td height="600" bgColor=#f1f3f9>
    <%
      		List<TOperator> operators = (List<TOperator>)request.getAttribute("operators");
      		if(operators==null||operators.size()==0){
      			response.sendRedirect("main.jsp");
      		}else{
      			
				%>
				<form method="POST" action="operator" id="form1">
      					<input type="hidden" name="operator" value="updateOperator"/>
      
      			<p>登录ID：<select id="T1" name="T1">
      			<option value="0">--请选择要修改的人员--</option>
      			<%
      				for(int i=0;i<operators.size();i++){
      					TOperator operator = operators.get(i);
      					%>
      						<option value="<%=operator.getOperator_id()%>"><%=operator.getOperator_id() %></option>
      					<% 
      				}
      			 %>
      			</select></p>
     
      <p>姓 名：<input type="text" name="T2" size="20" value="" id="T2"></p>
      <p>密码：<input type="password" name="T3" size="20" value="" id="T3"></p>
      <p>密码确认：<input type="password" name="T4" size="20" value="" id="T4"></p>
      <p>是否管理员:
      <input type="radio" value="1" checked name="R1" id="isadmin">是&nbsp;&nbsp;&nbsp; 
      <input type="radio" name="R1" value="0" id="isadmin1">否</p>
      <p><input type="button" value="修改" name="B1" id="btn_sub"></p>
      	
      	
      
     
    </form>
				<%       		
      		}
       %>
    
    </td>
    </tr>
  </tbody></table>
<br></center></body></html>
