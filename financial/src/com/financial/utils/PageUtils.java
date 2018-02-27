package com.financial.utils;

import com.financial.entity.Product;
import com.financial.service.impl.ProductServiceImpl;

import java.util.List;



public class PageUtils {
	//页量
	private int pageSize=2;
	//当前页
	private int indexPage=1;
	//总页数
	private int totalPage;
	//总条数
	private int totalCount;
	
	private List<Product> products;
	
	private ProductServiceImpl productServiceImpl = new ProductServiceImpl();
	
	public int getPageSize() {
		return pageSize;
	}

	public List<Product> getEmps() {
		return products;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public void setEmps(List<Product> emps) {
		this.products = products;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getIndexPage() {
		return indexPage;
	}

	public void setIndexPage(int indexPage) {
		this.indexPage = indexPage;
	}

	public int getTotalPage() {
		if (totalCount % pageSize == 0) {
			totalPage = totalCount/pageSize;
		}else {
			totalPage = (totalCount/pageSize)+1;
		}
		return totalPage;
	}

	public int getTotalCount() {
		totalCount = productServiceImpl.count();
		return totalCount;
	}






	
	
	

}
