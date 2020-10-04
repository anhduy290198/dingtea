package com.devpro.java08blog.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.java08blog.dto.ApiResponse;
import com.devpro.java08blog.dto.CartItem;
import com.devpro.java08blog.entites.Product;
import com.devpro.java08blog.repositories.ProductRepository;

@Controller
public class CartController {

	@Autowired private ProductRepository productRepository;
	
	@PostMapping(value = "/api/cart/add")
	public ResponseEntity<ApiResponse> muaHang(@RequestBody final Map<String, Object> data
			,final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {

		int productId = (int) data.get("productId");
		Product product = productRepository.getOne(productId);
		addCart(product, 1, request);
		
		return ResponseEntity.ok(new ApiResponse(200, "Example"));
	}
	
	@RequestMapping(value = { "checkout.me" }, method = RequestMethod.GET)
	public String index(final ModelMap model, final HttpServletRequest request, final HttpServletResponse response) {
		return "checkout";
	}
	
	private void addCart(Product product, int soluong, HttpServletRequest request) {
		// lấy đối tượng session trên server(lưu trong RAM)
		HttpSession httpSession = request.getSession();
		
		// b0: khởi tạo giỏ hàng(chứa danh sách các sản phẩm)
		List<CartItem> carts = new ArrayList<CartItem>();
		
		// b1: kiểm tra xem đã có giỏ hàng chưa ?
		if(httpSession.getAttribute("gio_hang_cua_ban") != null) {
			carts = (List<CartItem>) httpSession.getAttribute("gio_hang_cua_ban");
		} else {
			httpSession.setAttribute("gio_hang_cua_ban", carts);
		}
		
		//b2: bổ sung sản phẩm vào trong giỏ hàng(sẽ có trường hợp trong giỏ hàng đã có sản phẩm đó rồi)
		boolean sanphamdaco = false;
		for(CartItem item : carts) {
			if(item.getProductId() == product.getId()) { // sản phẩm đã có rồi.
				sanphamdaco = true;
				item.setQuantity(item.getQuantity() + 1);
			}
		}
		
		// b3: trường hợp sản phẩm chưa có
		if(sanphamdaco == false) {
			CartItem cartItem = new CartItem();
			cartItem.setProductName(product.getName_product());
			cartItem.setProductId(product.getId());
			cartItem.setPrice(product.getPrice());
			cartItem.setQuantity(soluong);
			carts.add(cartItem);
		}
		
	}
	
}
