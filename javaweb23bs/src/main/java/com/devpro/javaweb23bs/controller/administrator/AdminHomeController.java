package com.devpro.javaweb23bs.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Khi tạo controller cho phần Admin cần lưu ý:
 * 	1- Tên controller bắt đầu bằng Admin...Controller
 * 	2- Các request cho admin controller yêu cầu phải bắt đầu là: /admin/....
 * @author daing
 *
 */
public class AdminHomeController {
	// đăng kí 1 request cho controller
	@RequestMapping(value = { "/admin/test" }, method = RequestMethod.GET)
	public void test(final Model model, 
					 final HttpServletRequest request, 
					 final HttpServletResponse response)
			throws IOException {
		response.getWriter().print("Xin chao Admin");
	}
}
