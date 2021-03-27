<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	<c:if test="${sessionScope.operator.is_admin =='1'}">
		<tr>
          <td width=11 height="29" bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="newOperator.jsp">新增操作员</A></td>
        </tr>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
        <tr>
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="operator?operator=modifyOperator">修改操作员</A></td>
        </>
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
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav href="resource.jsp">资源管理</A></td>
        </tr>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
        <tr>
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="charge.jsp">配置业务费用</A></td>
        </tr>
	</c:if>
 		
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
        <tr>
          <!--<td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
            <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="#"></A></td-->
        </tr>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
        <tr>
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="newCustomer.jsp">开户</A></td>
        </tr>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
        <tr>
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="addUser.jsp">录入用户信息</A></td>
        </tr>
        <tr>
          <td bgColor=#ffffff colSpan=2><img height=1 
            src="images/blank.gif" width=1 border=0></td></tr>
        <tr>
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="newAccount.jsp">录入账户信息</A></td>
        </>
        
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
          <td width=11 bgColor=#2650a6><img height=1 
            src="images/blank.gif" width=1 border=0><img src="images/Arrow1.gif" width="23" height="23"></td>
          <td width=165 height="29" bgColor=#7691c7>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<A 
            class=nav 
            href="operator?operator=logout">退出</A></td>
        </tr>