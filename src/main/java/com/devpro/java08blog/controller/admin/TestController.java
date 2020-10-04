package com.devpro.java08blog.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

	@RequestMapping(value = { "/admin/test" }, method = RequestMethod.GET)
	public String test(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {

		return "admin/test";

	}
}