package com.devpro.javaweb23bs.services;

import com.devpro.javaweb23bs.model.BaseEntity;

public interface MappingCustomEntity<E extends BaseEntity> {
	public E convert(Object[] data);
}
