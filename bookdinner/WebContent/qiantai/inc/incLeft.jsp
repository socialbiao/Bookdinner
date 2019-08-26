<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
  <body>
      <div class="SquarelyGreenContainer">
		<div class="top">
			<div class="bgbtop-center">
				<span><a href="">用户登陆</a></span>
				<div class="WinRight"></div>
			</div>
		</div>
		<div class="Slot">
		    <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
		</div>
	 </div>
	 <div class="SquarelyGreenContainer">
		<div class="top">
			<div class="bgbtop-center">
				<span><a href="">菜品查询</a></span>
				<div class="WinRight"></div>
			</div>
		</div>
		<div class="Slot" style="height: 40px;">
		    <form action="<%=path %>/goodsSearch.action" name="from1" method="post">
		        <table>
		            <tr>
		                <td>
		                    <input type="text" name="goodsName" size="14"/>
		                </td>
		                <td>
		                    <input type="submit" value="查询" style="border:#ccc 1px solid; background-color:#FFFFFF; font-size:12px; padding-top:3px;"/>
		                </td>
		            </tr>
		        </table>
		    </form>
		</div>
	 </div>
	 <div class="SquarelyGreenContainer">
		<div class="top">
			<div class="bgbtop-center">
				<span><a href="">菜品类别</a></span>
				<div class="WinRight"></div>
			</div>
		</div>
		<div class="Slot">
		    <s:action name="catelogAll" executeResult="true" flush="true"></s:action>
		</div>
	 </div>
	 <div class="SquarelyGreenContainer">
		<div class="top">
			<div class="bgbtop-center">
				<span><a href="">日历表</a></span>
				<div class="WinRight"></div>
			</div>
		</div>
		<div class="Slot" style="height: 150px;">
		    <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
		</div>
	 </div>
  </body>
</html>
