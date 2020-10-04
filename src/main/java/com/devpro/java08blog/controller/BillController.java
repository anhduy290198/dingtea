package com.devpro.java08blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BillController {

	@RequestMapping(value = { "/bill" }, method = RequestMethod.GET)
	public String bill(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		return "bill";
	}
	
	

}
