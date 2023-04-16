package com.devpro.javaweb23bs.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23bs.controller.BaseController;
import com.devpro.javaweb23bs.dto.Employee;
import com.devpro.javaweb23bs.dto.ProductSearch;
import com.devpro.javaweb23bs.model.Product;
import com.devpro.javaweb23bs.services.PagerData;
import com.devpro.javaweb23bs.services.impl.ProductService;

@Controller
public class HomeController extends BaseController {

	@Autowired
	private ProductService productService;
	
	// http://localhost:8080/home?tennv=Nguyen Van D&tuoinv=21 => request param
	// http://localhost:8080/home/Nguyen Van E			       => path variable
	@RequestMapping(value = { "/trang-chu/{TenNV}" }, method = RequestMethod.GET)
	public String trangChu(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response,
					   @PathVariable("TenNV") String tennv2)
			throws IOException {
		
		// cách đọc một request param
		String tennv = request.getParameter("tennv");
		int tuoinv = 0;
		try { tuoinv = Integer.parseInt(request.getParameter("tuoinv")); } catch (Exception e) { }
		
		// data (object)
		List<Employee> employees = new ArrayList<Employee>();
		employees.add(new Employee("Nguyen Van A", 19));
		employees.add(new Employee("Nguyen Van B", 20));
		employees.add(new Employee(tennv, tuoinv));
		employees.add(new Employee(tennv2, 30));
		
		// data(string)
		model.addAttribute("title", "JAVA WEB 23");
		
		// cách đẩy data xuống view
		model.addAttribute("employees", employees);
		
		return "customer/index";
	}
	
	
	@RequestMapping(value = { "/home" }, method = RequestMethod.GET)
	public String home(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response) throws IOException {
		// chỉ lấy các trạng thái active
		model.addAttribute("products", productService.getEntitiesByNativeSQL("select * from tbl_products where status = 1"));
		return "customer/home";
		
	}
	
	@RequestMapping(value = { "/list" }, method = RequestMethod.GET)
	public String list(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response)
			throws IOException {
		
		// lấy keyword
				String keyword = request.getParameter("keyword");
				// lấy categoryId
				String categoryId = request.getParameter("categoryId");
				// lấy số page hiện tại
				String currentPage = request.getParameter("page");
				
				ProductSearch productSearch = new ProductSearch();
				productSearch.setKeyword(keyword);
				productSearch.setCategoryId(categoryId);
				productSearch.setCurrentPage(currentPage);
				model.addAttribute("productSearch", productSearch);
				
				PagerData<Product> products = productService.searchProduct(productSearch);
				model.addAttribute("products", products);
				return "customer/list-products";
	}
	
	//News
	@RequestMapping(value = { "/news" }, method = RequestMethod.GET)
	public String news(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response) throws IOException {
		return "customer/news-main";
		
	}
	
	@RequestMapping(value = { "/story" }, method = RequestMethod.GET)
	public String story(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response) throws IOException {
		return "customer/story";
		
	}
	
	@RequestMapping(value = { "/detail-new" }, method = RequestMethod.GET)
	public String detail(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response) throws IOException {
		return "customer/detail-news-main";
		
	}
	
	@RequestMapping(value = { "/detail-new2" }, method = RequestMethod.GET)
	public String detail2(final Model model, 
					   final HttpServletRequest request, 
					   final HttpServletResponse response) throws IOException {
		return "customer/detail-news-main2";
		
	}
	
}
