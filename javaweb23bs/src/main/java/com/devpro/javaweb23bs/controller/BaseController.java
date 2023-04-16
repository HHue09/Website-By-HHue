package com.devpro.javaweb23bs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.devpro.javaweb23bs.model.Categories;
import com.devpro.javaweb23bs.model.User;
import com.devpro.javaweb23bs.services.impl.CategoriesService;

public abstract class BaseController {

	
	@Autowired
	private CategoriesService categoriesService;
	
	/**
	 * tất cả các request-mapping của child-controller extends từ basecontroller
	 * sẽ tự động gọi các hàm có sử dụng @ModelAttribute
	 * kết quả của hàm sẽ tự động đẩy xuống view
	 */
	@ModelAttribute("categories")
	public List<Categories> getAllCategories() {
		return categoriesService.findAll();
	}
	
	/**
	 * trả về entity User chính là user logined
	 * User logined có thể truy cập thông qua class SecurityContextHolder
	 * @return
	 */
	@ModelAttribute("userLogined")
	public User getUserLogined() {
		Object userLogined = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if(userLogined != null && userLogined instanceof UserDetails)
			return (User) userLogined;
		
		return new User();
	}
	
	/**
	 * Kiểm tra xem người dùng đã đăng nhập chưa?
	 * User logined có thể truy cập thông qua class SecurityContextHolder
	 * @return true|false, true nếu đã login ngược lại trả về false
	 */
	@ModelAttribute("isLogined")
	public boolean isLogined() {
		boolean isLogined = false;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		if (principal != null && principal instanceof UserDetails) {
			isLogined = true;
		}
		
		return isLogined;
	}
	
}
