package com.devpro.javaweb23bs.controller.administrator;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.javaweb23bs.controller.BaseController;
import com.devpro.javaweb23bs.dto.Cart;
import com.devpro.javaweb23bs.dto.CartItem;
import com.devpro.javaweb23bs.dto.ContactDTO;
import com.devpro.javaweb23bs.dto.ProductSearch;
import com.devpro.javaweb23bs.model.Contact;
import com.devpro.javaweb23bs.model.Product;
import com.devpro.javaweb23bs.services.PagerData;
import com.devpro.javaweb23bs.services.impl.ContactService;
import com.devpro.javaweb23bs.services.impl.ProductService;
import com.devpro.javaweb23bs.services.impl.SaleOrderService;

@Controller
public class AdminProductController extends BaseController {

	private static final int String = 0;

	@Autowired
	private ProductService productService;
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	@RequestMapping(value = { "/admin/product/management" }, method = RequestMethod.GET)
	public String addOrUpdateView(final Model model, 
								  final HttpServletRequest request,
							  	  final HttpServletResponse response) throws IOException {
		// khởi tạo 1 product(entity) mới
		Product newProduct = new Product();
		model.addAttribute("product", newProduct); // đẩy data xuống view
		
		// trả về view
		return "administrator/product_management";
	}
	
	@RequestMapping(value = { "/admin/product/management/{productId}" }, method = RequestMethod.GET)
	public String addOrUpdateView(final Model model, 
								  final HttpServletRequest request,
							  	  final HttpServletResponse response,
							  	  @PathVariable("productId") Integer productId) throws IOException {
		// lấy product trong database theo productid
		Product product = productService.getById(productId);
		model.addAttribute("product", product); // đẩy data xuống view
		
		// trả về view
		return "administrator/product_management";
	}
	
	/**
	 * do trong springform ko hỗ trợ thẻ file nên phải sử dụng html input
	 * và sử dụng @RequestParam("{name of input tag}" 
	 */
	@RequestMapping(value = { "/admin/product/management/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore(final Model model, 
							   	   final HttpServletRequest request,
						  	   	   final HttpServletResponse response,
						  	   	   @ModelAttribute("product") Product product,
						  	   	   @RequestParam("productAvatar") MultipartFile productAvatar,
								   @RequestParam("productPictures") MultipartFile[] productPictures) throws IOException {
		if(product.getId() == null || product.getId() <= 0) {
			productService.addProduct(product, productAvatar, productPictures);
		} else {
			productService.editProduct(product, productAvatar, productPictures);
		}
		// trả về view(list), sử dụng redirect để chuyển hướng request.
		return "redirect:/admin/product/list";
	}
	
	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response) throws IOException {
		
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
		
		// muốn giữ được các giá trị search trên màn hình
		// thì phải đẩy lại các dữ liệu nhập trước đó xuống view
		model.addAttribute("productSearch", productSearch);
		
		PagerData<Product> products = productService.searchProduct(productSearch);
		model.addAttribute("products", products);
		return "administrator/product_list";	
	}
	
	@RequestMapping(value = { "/admin/contact" }, method = RequestMethod.GET)
	public String admin_contact(final Model model, 
			   final HttpServletRequest request,
			   final HttpServletResponse response) throws IOException {
		
		
		model.addAttribute("contact", contactService.findAll());	
		return "administrator/admin_contact";
	}
	
	@RequestMapping(value = { "/admin/order" }, method = RequestMethod.GET)
	public String admin_order(final Model model, 
			   final HttpServletRequest request,
			   final HttpServletResponse response) throws IOException {
		
		
		model.addAttribute("saleOrder", saleOrderService.findAll());	
		return "administrator/admin_order";
	}
	
	@RequestMapping(value = { "/admin/product/delete" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> deleteProduct(
			final Model model,
			final HttpServletRequest request,
			final HttpServletResponse response, 
			final @RequestBody Product product) 
	{
		Product productInDb = productService.getById(product.getId());
		productInDb.setStatus(false);
		productService.saveOrUpdate(productInDb);
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("code", 200);
		jsonResult.put("message", "Đã xóa thành công");
		return ResponseEntity.ok(jsonResult);
		
	}
		
	
}
