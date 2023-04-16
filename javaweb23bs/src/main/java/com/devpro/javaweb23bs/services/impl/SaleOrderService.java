package com.devpro.javaweb23bs.services.impl;

import org.springframework.stereotype.Service;



import com.devpro.javaweb23bs.model.SaleOrder;
import com.devpro.javaweb23bs.services.BaseService;

@Service
public class SaleOrderService extends BaseService<SaleOrder> {

	@Override
	protected Class<SaleOrder> clazz() {
		return SaleOrder.class;
	}

}
