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
    <script language="javascript">
        function buy1()
        {
            <s:if test="#session.user==null">
                  alert("请先登录");
            </s:if>
            <s:else>
                 document.buy.submit();
            </s:else>
        }
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
						<div class="BoxHeader-center MarginTop10">菜品详细信息</div>
					</div>
					<div class="Slot" style="height: 100%">
						<form action="<%=path %>/addToCart.action" method="post" name="buy">
						
									    <table width="100%" border="0" cellpadding="9" cellspacing="9">
										    <tr>
										       <td align="left"><img src="<%=path %>/<s:property value="#request.goods.goodsPic"/>" width="520" height="240" style="border:1px solid #ccc; padding:3px;"/></td>
										    </tr>
										    <tr>
										       <td align="left">菜品名称：<s:property value="#request.goods.goodsName"/></td>
										    </tr>
										    <tr>
										       <td align="left">菜品介绍：<s:property value="#request.goods.goodsMiaoshu" escape="false"/></td>
										    </tr>
										    <tr>
										       <td align="left">菜品价格：<s:property value="#request.goods.goodsTejia"/></td>
										    </tr>
										    <tr>
										       <td align="left">预订数量：<input type="text" name="quantity" value="1" size="8" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/></td>
										    </tr>
										    <tr>
										       <td><input type="hidden" name="goodsId" value="<s:property value="#request.goods.goodsId"/>"/><img onclick="buy1()" src="<%=path %>/img/goumai.jpg"/></td>
										    </tr>
										</table>
									
						</form>
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
