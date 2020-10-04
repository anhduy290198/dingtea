package com.devpro.java08blog.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java08blog.entites.Category;
import com.devpro.java08blog.entites.Product;
import com.devpro.java08blog.repositories.CategoryRepository;
import com.devpro.java08blog.repositories.ProductRepository;
import com.devpro.java08blog.service.ProductService;


@Controller
public class ProductDetailController {
	
	@Autowired ProductRepository productRepository;
	@Autowired CategoryRepository categoryRepository;
	@Autowired ProductService productService;
	
	@RequestMapping(value = "/product-detail", method = RequestMethod.GET)
	public String productDetail(final ModelMap model
			, final HttpServletRequest request, final HttpServletResponse response) {
	
		
//		Map<Category, List<Product>> productList = new HashMap<Category, List<Product>>();
//		
//		List<Category> categories = productService.findAllCategories();
//		
//		for(Category category : categories)
//		{
//			List<Product> products = productRepository.findByCategory(category);
//			productList.put(category, products);
//		}
//		
//		model.addAttribute("productList", productList);
		
		Category cTraDaiLoan = categoryRepository.findByName("Trà Đài Loan Đặc biệt");
		List<Product> traDaiLoan = productRepository.findByCategory(cTraDaiLoan);
		
		Category cTraicay = categoryRepository.findByName("Trà trái cây");
		List<Product> traicay = productRepository.findByCategory(cTraicay);
		
		Category cSuaTraiCay = categoryRepository.findByName("Trà sữa trái cây");
		List<Product> SuaTraiCay = productRepository.findByCategory(cSuaTraiCay);
		
		Category cSuaDacBiet = categoryRepository.findByName("Trà sữa đặc biệt");
		List<Product> SuaDacBiet = productRepository.findByCategory(cSuaDacBiet);
		
		Category cSuaChua = categoryRepository.findByName("Sữa chua uống");
		List<Product> SuaChua = productRepository.findByCategory(cSuaChua);
		
		Category cCafe = categoryRepository.findByName("Đồ uống nóng & Cafe");
		List<Product> Cafe = productRepository.findByCategory(cCafe);
		
		model.addAttribute("traDaiLoan",traDaiLoan);
		model.addAttribute("traicay",traicay);
		model.addAttribute("SuaTraiCay",SuaTraiCay);
		model.addAttribute("SuaDacBiet",SuaDacBiet);
		model.addAttribute("SuaChua",SuaChua);
		model.addAttribute("Cafe",Cafe);
		return "product-detail";
	}
	
}
