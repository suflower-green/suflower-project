package com.suflower.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.suflower.domain.CartDTO;
import com.suflower.service.CartService;

@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	private final CartService service;

	public CartController(CartService service) {
		
		this.service = service;
	}

	
	
	
	
}
