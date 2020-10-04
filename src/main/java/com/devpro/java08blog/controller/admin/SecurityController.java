package com.devpro.java08blog.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {
	@RequestMapping(value = "/admin/login")
	public String index() {
		return "admin/login"; // view là trang login của mình thiết kế.
	}
}
