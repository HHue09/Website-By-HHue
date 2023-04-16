package com.devpro.javaweb23bs.controller.customer;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.javaweb23bs.controller.BaseController;
import com.devpro.javaweb23bs.dto.ContactDTO;
import com.devpro.javaweb23bs.dto.MyConstants;
import com.devpro.javaweb23bs.model.Contact;
import com.devpro.javaweb23bs.services.impl.ContactService;

@Controller
public class ContactController extends BaseController {

	// ịnect một bean vào trong một bean sử dụng @Autowired
	@Autowired
	private ContactService contactService;
	
	 @Autowired
	 public JavaMailSender emailSender;
	
	@RequestMapping(value = { "/contact" }, method = RequestMethod.GET)
	public String contact(final Model model, 
		   				  final HttpServletRequest request, 
		   				  final HttpServletResponse response) {
		ContactDTO contactDTO = new ContactDTO();
		model.addAttribute("contactDTO", contactDTO);
		return "customer/contact";
	}
	
	/**
	 * Method = Post do ở phần form đang để là post.
	 * Nếu Method của form là get thì các data của input trong form sẽ đẩy lên URL theo request-param.
	 */
	@RequestMapping(value = { "/contact-post" }, method = RequestMethod.GET)
	public String contactPost(final Model model, 
			   				  final HttpServletRequest request, 
			   				  final HttpServletResponse response) {
		
		// cách đọc dữ liệu từ form khi click submit button
		String firstName = request.getParameter("firstName");
		System.out.println(firstName);
		
		return "customer/contact";
	}
	
	@RequestMapping(value = { "/contact-post-using-spring-form" }, method = RequestMethod.POST)
	public String contact_post_using_spring_form(final Model model, 
									   	  		 final HttpServletRequest request,
								   	  		 	 final HttpServletResponse response, 
								   	  		 	 final @ModelAttribute("contactDTO") ContactDTO contactDTO)
								   	  		 			 throws IOException {
		System.out.println(contactDTO.getFirstName() + " " + contactDTO.getLastName());
		
		// lưu contact entity vào trong database sử dụng service thích hợp
		Contact contact = new Contact();
		contact.setFirstName(contactDTO.getFirstName());
		contact.setLastName(contactDTO.getLastName());
		contact.setEmail(contactDTO.getEmail());
		contact.setMessage(contactDTO.getMessage());
		contactService.saveOrUpdate(contact);
		
		/*
		 * SimpleMailMessage message = new SimpleMailMessage();
		 * 
		 * message.setTo(MyConstants.FRIEND_EMAIL);
		 * message.setSubject("Test Simple Email");
		 * message.setText("Hello, Im testing Simple Email");
		 * 
		 * // Send Message! this.emailSender.send(message);
		 */
		
		return "customer/contact";
	}
	
	@RequestMapping(value = { "/ajax/contact" }, method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> contact_post_using_ajax(final Model model, 
																	   final HttpServletRequest request,
																   	   final HttpServletResponse response, 
																   	   final @RequestBody ContactDTO contactDTO) {
		System.out.println(contactDTO.getFirstName() + " " + contactDTO.getLastName());
		
		Map<String, Object> jsonResult = new HashMap<String, Object>();
		jsonResult.put("statusCode", 200);
		jsonResult.put("statusMessage", "Cảm ơn bạn " + contactDTO.getEmail() + ", Chúng tôi sẽ liên hệ sớm nhất!");
		return ResponseEntity.ok(jsonResult);
	}
}
