<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function goodsDetailHou(goodsId)
           {
                 var url="<%=path %>/goodsDetailHou.action?goodsId="+goodsId;
                 var n="";
                 var w="480px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           function goodsNoTejiaDel(goodsId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/goodsNoTejiaDel.action?goodsId="+goodsId;
               }
           }
           
           function goodsNoTejiaAdd()
           {
                 var url="<%=path %>/admin/goods/goodsNoTejiaAdd.jsp";
				 window.location.href=url;
           }
           
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }		
       </script>
	</head>

	<body leftmargin="8" topmargin="8" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="9" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="4%">序号</td>
					<td width="10%">菜品名称</td>
					<td width="10%">介绍</td>
					<td width="10%">类别</td>
					<td width="10%">图片</td>
					<td width="10%">价格</td>
					<td width="10%">操作</td>
		        </tr>	
				<s:iterator value="#request.goodsList" id="goods" status="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#ss.index+1"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#goods.goodsName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <a href="#" onclick="goodsDetailHou(<s:property value="#goods.goodsId"/>)" class="pn-loperator">介绍</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#goods.goodsCatelogName"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   <div onmouseover = "over('<%=path %>/<s:property value="#goods.goodsPic"/>')" onmouseout = "out()" style="cursor:hand;">
							查看图片
					   </div>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#goods.goodsShichangjia"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <input type="button" value="删除" onclick="goodsNoTejiaDel(<s:property value="#goods.goodsId"/>)"/>
					</td>
				</tr>
				</s:iterator>
			</table>
			<br/>
			<input type="button" value="添加菜品" style="width: 80px;" onclick="goodsNoTejiaAdd()" />
		    
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="80" width="80"></TD>
				</TR>
			</TABLE>
		    </div>
	</body>
</html>
