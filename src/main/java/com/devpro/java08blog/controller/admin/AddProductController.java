package com.devpro.java08blog.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.java08blog.dto.ApiResponse;
import com.devpro.java08blog.dto.ProductDTO;
import com.devpro.java08blog.entites.Category;
import com.devpro.java08blog.entites.Comment;
import com.devpro.java08blog.entites.Product;
import com.devpro.java08blog.repositories.CategoryRepository;
import com.devpro.java08blog.repositories.CommentRepository;
import com.devpro.java08blog.repositories.ProductRepository;
import com.devpro.java08blog.service.ProductService;

@Controller
public class AddProductController {
	@Autowired
	CategoryRepository categoryRepository;
	@Autowired
	ProductRepository productRepo;
	@Autowired
	CommentRepository commentRepo;
	@Autowired
	ProductService productService;


//	@PostMapping(value = "/api/product/save")
//	public ResponseEntity<ApiResponse> subscribe(@RequestBody ProductDTO data, final ModelMap model,
//			final HttpServletRequest request, final HttpServletResponse response) {
//
//		Category category = categoryRepository.getOne(data.getCategoryID());
//
//		Product product = new Product();
//		BeanUtils.copyProperties(data, product);
//		product.setCategory(category);
//		productRepo.save(product);
//		return ResponseEntity.ok(new ApiResponse(200, "Example"));
//	}

	@RequestMapping(value = { "/admin/addProduct" }, method = RequestMethod.GET)
	public String addProduct(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		model.addAttribute("product", new Product());
		List<Category> categories = categoryRepository.findByStatus(true);
		model.addAttribute("categories", categories);


		return "admin/addProduct";
	}

	@RequestMapping(value = { "/admin/addProduct" }, method = RequestMethod.POST)
	public String saveProductAttachment(@ModelAttribute("product") Product product,
			@RequestParam("images") MultipartFile attachments, final ModelMap model) {
		try {
			productService.saveProductAttachment(product, attachments);
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("product", new Product());
		List<Category> categories = categoryRepository.findByStatus(true);
		model.addAttribute("categories", categories);
		return "admin/addProduct";
	}
	

//	}

}