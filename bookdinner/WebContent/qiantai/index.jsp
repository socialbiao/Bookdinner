<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
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
    <script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
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
		 <div class="NewContainer770">
				<div class="BoxHeader">
				    <div class="BoxHeader-center MarginTop10">
						<span style="float:left">最新菜品</span>
						<span style="float:right"><a href="<%=path %>/goodsAllNoTejia.action">更多>></a>&nbsp;&nbsp;&nbsp;&nbsp;</span>
			        </div>
				</div>
				<div class="Slot" style="height: 100%;">
				    <table cellspacing="11" cellpadding="11" align="left">
				          <tr>
				               <c:forEach items="${requestScope.goodsNoTejiaList}" var="goods" varStatus="sta">
				                  <c:if test="${sta.index%3==0}">
				                     </tr><tr>
				                  </c:if>
				                  <td align="center">
									   <a href="<%=path %>/goodsDetail.action?goodsId=${goods.goodsId }">  
									      <img width="230" height="170" src="<%=path %>/${goods.goodsPic }" style="border:1px solid #ccc; padding:3px;"/>
									   </a>
				                       ${goods.goodsName }(￥:${goods.goodsShichangjia }元)
				                  </td>
				              </c:forEach>
				          </tr>
					</table>		    
                </div>
	     </div>
     </div>
</div>
</div>
	
	
	
<div align="center" class="Wrapper">
	<div id="footer" align="center" class="Footer">
		 <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	</div>
</div>
</body>
</html>
