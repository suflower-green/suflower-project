package com.suflower.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.suflower.domain.CartDTO;
import com.suflower.service.CartService;

@Controller
@RequestMapping("/cart/*")
@ResponseBody
public class CartController {

	private final CartService service;

	public CartController(CartService service) {

		this.service = service;
	}

	@RequestMapping("/insert")
	public void cartInsert(CartDTO cart, HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		String loginId = (String) session.getAttribute("loginId");
		if (loginId != null) {
			cart.setMemberId(loginId);
			service.insert(cart);
		}

	}
	
	@RequestMapping("/cartList")
	public ModelAndView cartList(ModelAndView mv) {
		
		mv.setViewName("/cart/cartList");
		return mv;
	}

}
