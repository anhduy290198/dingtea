package com.devpro.java08blog.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java08blog.entites.Category;
import com.devpro.java08blog.entites.Comment;
import com.devpro.java08blog.entites.Product;
import com.devpro.java08blog.repositories.CategoryRepository;
import com.devpro.java08blog.repositories.CommentRepository;
import com.devpro.java08blog.repositories.ProductRepository;
import com.devpro.java08blog.repositories.UserRepository;


@Controller
public class AddCommentController {
	@Autowired UserRepository userRepo;
	@Autowired ProductRepository productRepo;
	@Autowired CommentRepository commentRepo;
	
	@RequestMapping(value = { "/addComment" }, method = RequestMethod.POST)
	public String index(@ModelAttribute("comment") Comment comment ) {
		comment.setComment_time(new Date());
		commentRepo.save(comment);
		return "addComment";
	}

	@RequestMapping(value = { "/addComment" }, method = RequestMethod.GET)
	public String addComment(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {

		
		model.addAttribute("comment", new Comment());
		List<Product> product = productRepo.findByStatus(true);
		model.addAttribute("products", product);

		return "addComment";
	}
}