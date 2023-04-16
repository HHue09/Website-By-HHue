package com.devpro.javaweb23bs.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.javaweb23bs.model.Contact;
import com.devpro.javaweb23bs.services.BaseService;

/**
 * Tạo một bean Service. Các bean Services được tạo dùng để thao tác với Entities.
 */
@Service
public class ContactService extends BaseService<Contact> {

	@Override
	protected Class<Contact> clazz() {
		return Contact.class;
	}
	
}
