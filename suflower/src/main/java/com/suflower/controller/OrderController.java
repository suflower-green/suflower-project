package com.suflower.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.suflower.service.CartService;
import com.suflower.service.OrderService;
import com.suflower.service.ProductService;

@Controller
@ResponseBody
@RequestMapping("/order/*")
public class OrderController {

	
	private OrderService orderService;
	
	private CartService cartService;
	
	private ProductService productService;

	
	public OrderController(OrderService orderService, CartService cartService, ProductService productService) {
		this.orderService = orderService;
		this.cartService = cartService;
		this.productService = productService;
	}

	@RequestMapping("/checkout")
	public ModelAndView checkoutCart(ModelAndView mv, HttpSession session) {
		
		System.out.println("from cart");
		String loginId = (String) session.getAttribute("loginId");
		
		mv.addObject("cartCheckout", true);
		mv.addObject("cartList", cartService.list(loginId));
		mv.setViewName("/order/orderCheckout");
		return mv;
	}

	
	@RequestMapping("/checkoutProduct")
	public ModelAndView checkoutProduct(ModelAndView mv, @RequestParam("productId") Long productId,
			@RequestParam("reservationDate") String reservationDate, @RequestParam("quantity") int quantity) {
		
		System.out.println("from detail");
		
		mv.addObject("productId", productId);
		mv.addObject("productInfo", productService.get(productId));
		mv.addObject("quantity", quantity);
		mv.addObject("reservationDate", reservationDate);
		mv.addObject("productDetail", productService.get(productId));
		
		mv.setViewName("/order/orderCheckout");
		return mv;
	}
	
	
}
