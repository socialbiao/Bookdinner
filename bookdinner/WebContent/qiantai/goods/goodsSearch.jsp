<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title></title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<link href="css/Common.css" rel="stylesheet" type="text/css" />
    <link href="css/sitegeneric08.css" rel="stylesheet" type="text/css" />
    <script language="javascript">
    </script>
  </head>
  
  <body>
<!-- head如果图片高度不合适。请修改Common.ces里面的".Header .HeaderTop"的高度。和".Header"的高度-->
<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>    
<!-- head-->
	
	
	
	
<!--body-->
<div align="center" class="Wrapper">
<div id="MainCenter" align="center" class="MainCenter">
	     <div id="navigation" class="naivgation">
				<jsp:include flush="true" page="/qiantai/inc/incLeft.jsp"></jsp:include>
		 </div>
		 <div id="content" class="Sub">
				<div class="NewContainer771">
					<div class="BoxHeader">
						<div class="BoxHeader-center MarginTop10">特价区域</div>
					</div>
					<div class="Slot" style="height: 100%">
						<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
				              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td>菜品名称</td>
					                  <td>市场价</td>
					                  <td>图片</td>
					                  <td>操作</td>
					              </tr>
								  <s:iterator value="#request.goodsList" id="goods">
								  <tr align='center' bgcolor="#FFFFFF" height="22">
									  <td><s:property value="#goods.goodsName"/></td>
									  <td>￥<s:property value="#goods.goodsShichangjia"/></td>
									  <td><a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"> <img style="border:1px solid #ccc; padding:3px;" src="<%=path %>/<s:property value="#goods.goodsPic"/>" width="60" height="60" border="0"/> </a></td>
									  <td><a href="<%=path %>/goodsDetail.action?goodsId=<s:property value="#goods.goodsId"/>"><img alt="" src="<%=path %>/img/goumai.jpg" border=0/></a></td>
								  </tr>
								  </s:iterator>
	        			</table>
                    </div>
				</div>
		 </div>
</div>
</div>
<!--body-->
	
	
	
<!--foot -->	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
<!--foot -->	
</body>
</html>
