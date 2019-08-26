package com.action;



import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TCatelogDAO;
import com.dao.TGoodsDAO;
import com.dao.TOrderItemDAO;
import com.model.TGoods;
import com.opensymphony.xwork2.ActionSupport;

public class indexAction extends ActionSupport
{
	private TGoodsDAO goodsDAO;
	
	private TOrderItemDAO orderItemDAO;
	
	
	public String index()
	{
		
		String sql="from TGoods where goodsDel='no' and goodsIsnottejia='no' order by goodsId desc";
		List goodsNoTejiaList=goodsDAO.getHibernateTemplate().find(sql);
		
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("goodsNoTejiaList", goodsNoTejiaList);
		
		return ActionSupport.SUCCESS;
	}
	

	public TGoodsDAO getGoodsDAO()
	{
		return goodsDAO;
	}

	public void setGoodsDAO(TGoodsDAO goodsDAO)
	{
		this.goodsDAO = goodsDAO;
	}


	public TOrderItemDAO getOrderItemDAO()
	{
		return orderItemDAO;
	}


	public void setOrderItemDAO(TOrderItemDAO orderItemDAO)
	{
		this.orderItemDAO = orderItemDAO;
	}
	
	
}
