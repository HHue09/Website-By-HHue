package com.devpro.javaweb23bs.dto;

import com.devpro.javaweb23bs.services.BaseService;

public class ProductSearch {
	private String keyword;
	private String categoryId;
	private String currentPage;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(String currentPage) {
		this.currentPage = currentPage;
	}
	
	public Integer getPage() {
		try {
			return Integer.parseInt(this.getCurrentPage());
		} catch (Exception e) {
			return BaseService.NO_PAGING;
		}
	}
}
