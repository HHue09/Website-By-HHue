package com.devpro.javaweb23bs.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23bs.model.Categories;
import com.devpro.javaweb23bs.services.BaseService;

@Service
public class CategoriesService extends BaseService<Categories> {

	@Override
	protected Class<Categories> clazz() {
		// TODO Auto-generated method stub
		return Categories.class;
	}

}
