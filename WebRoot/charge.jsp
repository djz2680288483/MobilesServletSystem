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
		var D1 = $("#D1");
		var D2 = $("#D2");
		var T1 = $("#T1");
		var B1 = $("#B1");
		var A = $("#A");
		var B = $("#B");
		var C = $("#C");
		var D = $("#D");
		var E = $("#E");
		var flag=true;
		var v = D1.val();
		$.get("check1",{charge_code:v,operator:'selectCharge'},function(data){
				if(data!=''){
					T1.val(data);
				}
		});
		var v2 = D2.val();
		$.get("check1",{charge_rule_code:v2,operator:'selectChargeRule'},function(data){
				var strs = data.split(",");
				for(var i=0;i<strs.length;i++){
					if(strs[i]=="A"){
						A.attr("checked",true);
					}
					if(strs[i]=="B"){
						B.attr("checked",true);
					}
					if(strs[i]=="C"){
						C.attr("checked",true);
					}
					if(strs[i]=="D"){
						D.attr("checked",true);
					}
					if(strs[i]=="E"){
						E.attr("checked",true);
					}
				}
		});
		D1.change(function(){
			var value = D1.val();
			$.get("check1",{charge_code:value,operator:'selectCharge'},function(data){
				if(data!=''){
					T1.val(data);
				}
			});
		});
		B1.click(function(){
			var value = T1.val();
			if(value==''){
				flag=false;
				alert("费用不能为空");
			}else{
				flag=true;
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
          <td height=25>&nbsp;您现在的位置：配置业务费用</td>
        </tr>
        <tr>
          <td bgColor=#2650a6><img height=1 src="images\blank(1).gif" 
            width=1></td></tr>
        <tr>
          <td><img height=2 src="images\blank(1).gif" width=574></td></tr></tbody></table></td></tr>
  <tr vAlign=top>
    <td height="600" bgColor=#f1f3f9>
 


<h2>收费细项</h2>
    <form method="POST" action="operator" id="form1">
    <input type="hidden" name="operator" value="updateCharge"/>
      <p>收费项目：<select size="1" name="D1" id="D1">
        <option value="A">开户费</option>
        <option value="B">漫游费</option>
        <option value="C">押金</option>
        <option value="D">入网费</option>
        <option value="E">选号费</option>
      </select></p>
      <p>收费金额：<input type="text" id="T1" name="T1" size="20" value="10"></p>
      <p><input type="button" value="提交" name="B1" id="B1"><input type="reset" value="全部重写" name="B2"></p>
    </form>
    <hr>
    <h2>业务收费</h2>
    <form method="POST" action="operator" id="form2">
      <input type="hidden" name="operator" value="updateChargeRule"/>
      <p>业务：<select size="1" name="D2" id="D2">
        <option value="O">开户业务</option>
      </select></p>
      <p>收费项目：<input type="checkbox" id="A" name="C1" value="A" >开户费 
      <input type="checkbox" id="B" name="C1" value="B">漫游费 <input type="checkbox" id="C" name="C1" value="C">押金 
      <input type="checkbox" id="D" name="C1" value="D" >入网费 <input type="checkbox" id="E" name="C1" value="E" >选号费</p>
      <p><input type="submit" value="提交" name="B1"><input type="reset" value="全部重写" name="B2"></p>
    </form>   
    
    </td>
    </tr>
  </tbody></table>
<br></center></body></HTML>
