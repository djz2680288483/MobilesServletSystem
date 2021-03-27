<%@page import="com.oracle.po.TCustomer"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<HTML><HEAD><TITLE>中国移动业务管理系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<META content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href="style.css" rel="stylesheet" type="text/css">
<script src="js/jquery.js"></script>
<script >
$(document).ready(function(){
var id_type=$("#id_type").val();
var id_number=$("#id_number").val();
var sp1=$("#sp1");
$.get("check1",{operator:'selectCustomer',id_type:id_type,id_number:id_number},function(data){
 var t2=$("#T2");   //客户ID
 t2.val(data);
});

var b1=$("#B1");  //提交按钮
var t6=$("#T6");   //手机号码
var flag=true;

t6.blur(function(){
			var value1 = t6.val();
			var re = /1[3-9]\d{9}/;
			if(value1!=''){
				if(!re.test(value1)||value1.length!=11){
					flag=false;
					alert("手机号码的格式不正确");
				}else{
					$.get("check1",{mobile_number:value1,operator:'selectMobile'},function(data){
						if(data=="ok"){
							flag=false;
							sp1.html("<font color='red'>号码不可用</font>");
							
						}else{
							flag=true;
							sp1.html("<font color='green'>号码可用</font>");
						}
						
					});
				}
			}
			
		});

b1.click(function(){
 //var v=t6.val();
//var re=/^1[3-9]\d{9}$/;
// if(!re.test(v)){
 //  flag=false;
 //  alert("号码格式不正确");
 //}else{
 //flag=true;
 //}
 if(flag==true){
   var form3=$("#form3");
   form3.submit();
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
          <td height=25>&nbsp;您现在的位置：新增用户>第三步</td>
        </tr>
        <tr>
          <td bgColor=#2650a6><img height=1 src="images\blank(1).gif" 
            width=1></td></tr>
        <tr>
          <td><img height=2 src="images\blank(1).gif" width=574></td></tr></tbody></table></td></tr>
  <tr vAlign=top>
    <td height="600" bgColor=#f1f3f9>
    <%
    TCustomer customer=(TCustomer)request.getAttribute("customer");
     %>
     <form method="POST" action="operator" id="form3">
     <input type="hidden" name="operator" value="addUser" />
      <input type="hidden" name="id_type" value="<%=customer.getId_type() %>" id="id_type"/>
      <input type="hidden" name="id_number" value="<%=customer.getId_number() %>" id="id_number"/>
      <p>手机号码：<input type="text" name="T6" id="T6" size="20"></p>
       <p><span id="sp1"></span></p>
      <p>漫游状态：<input type="radio" name="R1" value="V4" checked>省内漫游 <input type="radio" name="R1" value="V5">国内漫游 
      <input type="radio" name="R1"  value="V6">国际漫游</p>
      <p>通话级别：<input type="radio" value="V1" checked name="R2" >本地通话 
      <input type="radio" name="R2" value="V2">国内长途 <input type="radio" name="R2" value="V3">国际长途</p>
      <p>客户ID：<input type="text" name="T2" size="20" id="T2" ></p>
      
      <p><input type="button" value="完成>>" name="B1" id="B1"><input type="reset" value="全部重写" name="B2"></p>
    </form>

    
    </td>
    </tr>
  </tbody></table>
<br></center></body></HTML>
