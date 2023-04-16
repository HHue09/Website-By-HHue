package com.devpro.javaweb23bs.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23bs.controller.BaseController;

//1- Thông báo cho Spring-MVC biết đây là 1 controller
//2- Spring sẽ tạo ra một bean(object/instance) và lưu trong spring-container
// TestController testController = new TestController() => bean
// sau đó testController được store ở spring-containner
@Controller
public class TestController extends BaseController {

	// đăng kí 1 request cho controller
	@RequestMapping(value = { "/test" }, method = RequestMethod.GET)
	public void test(final Model model, 
					 final HttpServletRequest request, 
					 final HttpServletResponse response)
			throws IOException {
		response.getWriter().print("Xin chao");
	}
	
	// đăng kí 1 request cho controller
	@RequestMapping(value = { "/test2" }, method = RequestMethod.GET)
	public void test2(final Model model, 
					 final HttpServletRequest request, 
					 final HttpServletResponse response)
			throws IOException {
		response.getWriter().print("Xin chao 2");
	}
	
}
