<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
<TITLE>中国移动业务管理系统</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=gb2312">
<style type="text/css">
<!--
body {
	background-color: #CCCCCC;
	margin-top: 10px;
}
-->
</style>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body LEFTMARGIN=0 MARGINWIDTH=0>
<!-- ImageReady Slices (index.psd) -->
<table WIDTH=750 BORDER=0 align="center" CELLPADDING=0 CELLSPACING=0>
	<tr>
		<td ROWSPAN=2>
			<img src="images/index_01.gif" WIDTH=444 HEIGHT=237 ALT=""></td>
		<td>
			<img src="images/index_02.gif" WIDTH=306 HEIGHT=99 ALT=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/index_03.gif" WIDTH=306 HEIGHT=138 ALT=""></td>
	</tr>
	<tr>
		<td ROWSPAN=2>
			<img src="images/index_04.gif" WIDTH=444 HEIGHT=363 ALT=""></td>
		<td width="306" height="185" background="images/index_05.gif"><table width="250" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td><form  action="check" method=post name=login>
              <div align="center">
                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td height="30"><div align="center"><strong>用户名：</strong>
                        <input name=operator_id type="text" value="">
                        <font color="red">${error}</font>
                        <br>
                    </div></td>
                    
                  </tr>
                  <tr>
                    <td height="30"><div align="center"><strong>密&nbsp;&nbsp;&nbsp;码：</strong>
                        <input name=operator_pwd type=password value="">
                    </div></td>
                  </tr>
                  <tr>
                    <td height="30">
                      <div align="center">
                        <input class=f2 type=submit size=4 value=进入系统 name=Submit>
                      </div></td>
                  </tr>
                </table>
                </div>
            </form></td>
          </tr>
        </table></td>
	</tr>
	<tr>
		<td>
			<img src="images/index_06.gif" WIDTH=306 HEIGHT=178 ALT=""></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
</body>
</html>