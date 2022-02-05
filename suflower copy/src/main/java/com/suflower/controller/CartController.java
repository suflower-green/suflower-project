package com.suflower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.suflower.domain.CartDTO;
import com.suflower.service.CartService;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	private final CartService service;

	public CartController(CartService service) {
		super();
		this.service = service;
	}

	
	@RequestMapping("/insert.do")
	public String insert(CartDTO cart) {
		
		cart.setMemberId("jaek1997");
		service.insert(cart);
		
		return "redirect:/cart/cartList";
	}
	
	
}
