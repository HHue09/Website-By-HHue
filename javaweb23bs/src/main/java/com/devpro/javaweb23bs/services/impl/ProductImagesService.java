package com.devpro.javaweb23bs.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23bs.model.ProductImages;
import com.devpro.javaweb23bs.services.BaseService;

@Service
public class ProductImagesService extends BaseService<ProductImages> {

	@Override
	protected Class<ProductImages> clazz() {
		return ProductImages.class;
	}

}
