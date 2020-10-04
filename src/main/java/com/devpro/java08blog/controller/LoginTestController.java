package com.devpro.java08blog.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class LoginTestController {

	@RequestMapping(value = { "/loginTest" }, method = RequestMethod.GET)
	public String loginTest(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		
		
		
		return "loginTest";
	}
}
