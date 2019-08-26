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
    <script type='text/javascript' src='<%=path %>/dwr/interface/cartService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
    
    <script language="javascript">
            function modiNum(goodsId,quantity)
	        {
	            var r1= /^[0-9]*[1-9][0-9]*$/　　//正整数 
	            var val=r1.test(quantity); //str为你要判断的字符 执行返回结果 true 或 false
	            if(val==false)
	            {
	                alert("数量必须是数字,请重新输入");
	            }
	            else
	            {
	                document.getElementById("indicator1").style.display="block";
	                cartService.modiNum(goodsId,quantity,callback);
	            }
	        }
	        
	        function callback(data)
	        {
	            document.getElementById("indicator1").style.display="none";
	            document.location.reload(true);
	        }
	        
	        
	        function delGoodsFromCart(goodsId)
	        {
	            document.getElementById("indicator1").style.display="block";
	            cartService.delGoodsFromCart(goodsId,callback);
	        }
	        
	        function clearCart()
	        {
	            document.getElementById("indicator1").style.display="block";
	            cartService.clearCart(callback);
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
						<div class="BoxHeader-center MarginTop10">订餐车</div>
					</div>
					<div class="Slot">
						<s:set name="items" value="#session.cart.items"/>
	                        <table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
					              <tr align="center" bgcolor="#FAFAF1" height="22">
					                  <td>菜品名称</td>
					                  <td>价格</td>
					                  <td>数量</td>
					                  <td>金额</td>
					                  <td>删除</td>
				                  </tr>
								  <s:iterator value="#items">
								  <tr align='center' bgcolor="#FFFFFF" height="22">
									  <td><s:property value="value.goods.goodsName"/></td>
									  <td>￥<s:property value="value.goods.goodsTejia"/><br/></td>
									  <td><input type="text" class="textBox" onChange="modiNum(<s:property value="value.goods.goodsId"/>,this.value)" value="<s:property value="value.goodsQuantity"/>" size="4"/></td>
									  <td>￥<s:property value="value.goodsQuantity * value.goods.goodsTejia"/></td>
									  <td><input onClick="delGoodsFromCart(<s:property value="value.goods.goodsId"/>)" type="image" src="<%=path %>/img/delete_01.gif" border="0"/></td>
								  </tr>
								  </s:iterator>
					              <tr>
					                 <td colspan="6" class="Order_Total">
					                   <img hspace="5" src="<%=path %>/img/me03.gif"/> 
									    总金额：￥<span id="totalMoney"><s:property value="#session.cart.totalPrice"/></span>
									    &nbsp;&nbsp;&nbsp;&nbsp;
									    <img id="indicator1" src="<%=path %>/img/loading.gif" style="display:none"/>
									 </td>
					              </tr>				
	        				</table>
	        				<table>
	        				   <tr height="7"><td></td></tr>
			                   <tr>
			                       <td width="120"></td>
			                       <td><a href="#" onclick="clearCart()"><img border="0" src="<%=path %>/img/qingkong.jpg"/></a></td>
			                       <td><a href="<%=path %>/qiantai/default.jsp"><img border="0" src="<%=path %>/img/jixu.jpg"/></a></td>
			                       <td><a href="<%=path %>/orderQueren.action"><img border="0" src="<%=path %>/img/next.jpg"/></a></td>
			                   </tr>
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
