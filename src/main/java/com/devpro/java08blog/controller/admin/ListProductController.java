package com.devpro.java08blog.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.java08blog.entites.Category;
import com.devpro.java08blog.entites.Product;
import com.devpro.java08blog.repositories.CategoryRepository;
import com.devpro.java08blog.repositories.ProductRepository;
import com.devpro.java08blog.service.ProductService;

@Controller
public class ListProductController {
	@Autowired private ProductRepository productRepository;
	@Autowired private CategoryRepository categoryRepository;
	@Autowired private ProductService productService;
	
	@RequestMapping(value = { "/admin/listProduct" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		List<Product> products = productRepository.findAll();
		model.addAttribute("products", products);
		
		return "admin/listProduct";
	}
	
	
	@GetMapping("/admin/editProduct/{id}")
	  public String editProduct(@PathVariable("id") int id,
			  ModelMap model,final HttpServletRequest request, final HttpServletResponse response) {
		Product product = productRepository.getOne(id);
		model.addAttribute("product", product);
		List<Category> categories = categoryRepository.findByStatus(true);
		model.addAttribute("categories",categories);
		
	    return "admin/editProduct";
	  }
	@PostMapping("/admin/editProduct")
	public String editProductAttachment(@ModelAttribute("product") Product product,
			@RequestParam("images") MultipartFile attachments, final ModelMap model) {
		try {
			productService.editProductAttachment(product, attachments);
		} catch (Exception e) {
			e.printStackTrace();
		}
		List<Product> products = productRepository.findAll();
		model.addAttribute("products", products);
		
		return "admin/index";
	}
	
	@GetMapping("/admin/deleteProduct/{id}")
	public String deleteProduct(@PathVariable("id") Integer id, final ModelMap model, HttpServletRequest request,
			HttpServletResponse response) {

		productRepository.delete(productRepository.getOne(id));

		
		return "redirect:/admin/index";
	}

}
