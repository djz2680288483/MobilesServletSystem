<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html><HEAD><TITLE>中国移动业务管理系统</TITLE>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<link href="style.css" rel="stylesheet" type="text/css">
</HEAD>
<script src="js/jquery.js"></script>
<script>
$(document).ready(function(){
  var t1=$("#T1");   //证件号码
  var d1=$("#D1");   //证件类型
  var b1=$("#B1");   //提交按钮
 
  b1.click(function(){
   var value1=t1.val();
   var value2=d1.val();
   var flag=true;
    
    if(value2=="D"){
    var re=/(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
    if(!re.test(value1)){
    flag=false;
      alert("身份证号码格式不正确");
    }else{
   
    flag=true;
    }
    }else if(value2=="A"){
    var re1=/^[EKGDSPH]\d{8}/;
    if(!re1.test(value1)){
    flag=false;
      alert("护照号码格式不正确");
    }else{
    flag=true;
    }
    }else if(value2=="P"){
    var re2=/\d{8}/;
    if(!re2.test(value1)){
    flag=false;
      alert("军官证号码格式不正确");
    }else{
    flag=true;
    }
    }
    
    if(flag==true){
     var f1=$("#form1");  //提交数据
    f1.submit();
    }
    
  });
});
</script>
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
          <td height=25>&nbsp;您现在的位置：新增客户>第一步</td>
        </tr>
        <tr>
          <td bgColor=#2650a6><img height=1 src="images\blank(1).gif" 
            width=1></td></tr>
        <tr>
          <td><img height=2 src="images\blank(1).gif" width=574></td></tr></tbody></table></td></tr>
  <tr vAlign=top>
    <td height="600" bgColor=#f1f3f9>
    <form method="POST" action="newCustomer1.jsp" id="form1">
      <p>证件类型：<select size="1" name="D1" id="D1">
        <option value="D">居民身份证</option>
        <option value="A">护照</option>
        <option value="P">军官证</option>
      </select></p>
      <p>证件号码：<input type="text" name="T1" size="20" id="T1" /></p>
      <p><input type="button" value="下一步>>" id="B1" /><input type="reset" value="全部重写" name="B2" /></p>
    </form>
    
    </td>
    </tr>
  </tbody></table>
<br></center></body></html>

