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

<script>
	$(document).ready(function(){
		//获取T1组件
		var T1 = $("#T1");
		//获取T1组件
		var T2 = $("#T2");
		//获取B1组件
		var B1 = $("#B1");
		var sp1 = $("#sp1");
		var sp2 = $("#sp2");
		var flag=true;
		T1.blur(function(){
			var value1 = T1.val();
			var re = /1[3-9]\d{9}/;
			if(value1!=''){
				if(!re.test(value1)||value1.length!=11){
					flag=false;
					alert("手机号段起始的号码的格式不正确");
				}else{
					$.get("check1",{mobile_number:value1,operator:'selectMobile'},function(data){
						if(data=="ok"){
							flag=true;
							sp1.html("<font color='green'>起始号码可用</font>");
							sp2.html("");
						}else{
							flag=false;
							sp1.html("<font color='red'>起始号码不可用</font>");
						}
						
					});
				}
			}
			
		});
		T2.blur(function(){
			var value2 = T2.val();
			var re = /1[3-9]\d{9}/g;
			if(value2!=''){
				if(!re.test(value2)||value2.length!=11){
					flag=false;
					alert("手机号段截止的号码的格式不正确");
				}else{
					$.get("check1",{mobile_number:value2,operator:'selectMobile'},function(data){
						
						if(data=="ok"){
							flag=true;
							sp2.html("<font color='green'>截止号码可用</font>");
							sp1.html("");
						}else{
							flag=false;
							sp2.html("<font color='red'>截止号码不可用</font>");
						}
					});
				}
			}
			
		});
		B1.click(function(){
			var value1 = T1.val();
			var value2 = T2.val();
			if(value1<=value2){
				flag=true;
			}else{
				flag=false;
				alert("截止号码不能小于起始号码");
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
            src="images/blank.gif" width=1 border=0></td>
        </tr>
        <tr>
        
        </tr>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
       
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
          <td height=25>&nbsp;您现在的位置：资源管理</td>
        </tr>
        <tr>
          <td bgColor=#2650a6><img height=1 src="images\blank(1).gif" 
            width=1></td></tr>
        <tr>
          <td><img height=2 src="images\blank(1).gif" width=574></td></tr></tbody></table></td></tr>
  <tr vAlign=top>
    <td height="600" bgColor=#f1f3f9>
 

    <form method="POST" action="operator" id="form1">
    <input type="hidden" name="operator" value="addMobiles"/>
    <p>号码类型：<input type="Radio" name="R1" name="MType" value="SIM" checked>SIM &nbsp;&nbsp;<input type="Radio" name="R1" name="MType" value="UIM">UIM</p>
    <p>指定号段：从<input type="text" id="T1" name="T1" size="20" value="">到<input type="text" id="T2" name="T2" size="20" value=""></p>
    <p><span id="sp1"></span><span id="sp2"></span></p>
    <p><input type="button" value="提交" id="B1"><input type="reset" value="全部重写" name="B2"></p>
    </form>
    <hr>
    
    
 
    
    </td>
    </tr>
  </tbody></table>
<br></center></body></HTML>
