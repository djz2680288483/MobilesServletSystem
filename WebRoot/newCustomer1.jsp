<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

var t2=$("#T2");  //姓名

  var t1=$("#T1"); // 证件号码
 
   var d1=$("#D1");  //证件类型
var t3=$("#T3");  //生日
var v1=$("#V1");  var v2=$("#V2");  //性别
var t4=$("#T4");  //地址
var B1=$("#B1");  //下一步按钮
var flag=true;
var form2=$("#form2");
var sp1=$("#sp1");   //姓名反馈
var sp2=$("#sp2");   //生日反馈
var sp3=$("#sp3");   //地址反馈

var id_type=d1.val();
 
var id_number=t1.val();

var id_type=$("#D1").val();
var id_number=$("#T1").val();
$.get("check1",{operator:'selectCustomer1',id_type:id_type,id_number:id_number},function(data){
  if(data!=null&&data!=""){
  var strs=data.split(",");
  t2.val(strs[0]);
  if(strs[1]=="男"){
   v1.attr("checked",true);
  }else{
   v2.attr("checked",true);
  }
  
   t4.val(strs[2]);
  
  
  }
  
  
});

B1.click(function(){
var value2 =t2.val();  //姓名
var value3 =t3.val();  //生日
var value4 =t4.val();  //地址
if(value2==null||value2==''){
  flag=false;
 sp1.html("<font color='red'>姓名不能为空</font>");
}else{
flag=true;
 sp1.html("");
}
if(value3==null||value3==''){
  flag=false;
 sp2.html("<font color='red'>生日不能为空</font>");
}else{
var re=/^((19[2-9]\d{1})|(20((0[0-9])|(1[0-9]))))((0?[1-9])|(1[0-2]))((0?[1-9])|([1-2][0-9])|30|31)$/;
if(!re.test(value3)){
flag=false;
sp2.html("<font color='red'>生日格式错误</font>");
}else{
 flag=true;
 sp2.html("");
}

}
if(value4==null||value4==''){
  flag=false;
 sp3.html("<font color='red'>地址不能为空</font>");
}else{
flag=true;
 sp3.html("");
}
if(flag==true){
form2.submit();
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
          <td height=25>&nbsp;您现在的位置：新增客户>第二步</td>
        </tr>
        <tr>
          <td bgColor=#2650a6><img height=1 src="images\blank(1).gif" 
            width=1></td></tr>
        <tr>
          <td><img height=2 src="images\blank(1).gif" width=574></td></tr></tbody></table></td></tr>
  <tr vAlign=top>
    <td height="600" bgColor=#f1f3f9>
    <%
        String t1=request.getParameter("T1");  //证件号码
       String d1=request.getParameter("D1");   //证件类型
        request.setAttribute("tt",t1);
        request.setAttribute("dd",d1);
       String card_type="";
       if(d1.equals("D")){
       String birthday=t1.substring(6,14);
       request.setAttribute("birth",birthday);
        request.setAttribute("ty",d1);
       card_type="居民身份证";
       }else if(d1.equals("A")){
       card_type="护照";
       }else if(d1.equals("P")){
       card_type="军官证";
       }
     %>
    <form method="POST" action="operator" id="form2">
      <p>证件类型：<%=card_type %></p>
      <p>证件号码：<%=t1 %></p>
      <input type="hidden" name="operator" value="operatorCustomer"/>
      <input type="hidden"  id="D1" name="D1" value=${dd } />
      <input type="hidden"  id="T1" name="T1" value=${tt } />
      <p>姓名：<input type="text" name="T2" id="T2" size="20" ><span id="sp1"></span></p>
      <p>性别：<input type="radio" id="V1" value="V1" checked name="R1">男&nbsp;&nbsp; <input type="radio" id="V2" name="R1" value="V2">女</p>
      
      <c:choose>
      <c:when test="${ty eq 'D' }">
       <p>生日：<input type="text" name="T3" id="T3" size="20" value=${birth } readonly></p>
      </c:when>
      <c:otherwise>
      <p>生日：<input type="text" name="T3" id="T3" size="20" /><span id="sp2"></span></p>
      </c:otherwise>
      </c:choose>
      <p>联系地址：<input type="text" name="T4" size="20" id="T4" /><span id="sp3" ></span></p>
      <p>　</p>
      <p><input type="button" value="下一步>>" name="B1" id="B1" /><input type="reset" value="全部重写" name="B2"></p>
    </form>
    
    </td>
    </tr>
  </tbody></table>
<br></center></body></html>
