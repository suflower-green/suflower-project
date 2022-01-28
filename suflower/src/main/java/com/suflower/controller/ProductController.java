package com.suflower.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.suflower.domain.ProductDTO;
import com.suflower.service.ProductService;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/product/*")
public class ProductController {
	
	//자동 의존성 주입
	private final ProductService service;

	public ProductController(ProductService service) {
		this.service = service;
	}
	
	@GetMapping("/list")
	public void list(Model model) {
		log.info("list");
		model.addAttribute("list", service.getList());
	}
	
	@PostMapping("/register")
	public String register(ProductDTO product, RedirectAttributes rttr) {
		log.info("register" + product);
		
		service.register(product);
		
		rttr.addFlashAttribute("result", product.getProductId());
		
		return "redirect:/board/list";
	}
	
	@GetMapping("/get")
	public void get(@RequestParam("productId") Long productId, Model model) {
		
		log.info("/get");
		model.addAttribute("product", service.get(productId));
	}
	
	@PostMapping("/modify")
	public String modify(ProductDTO product, RedirectAttributes rttr) {
		
		log.info("modify: " + product);
		
		if(service.modify(product)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/product/list";
	}
	
	@PostMapping("/remove")
	public String remove(@RequestParam("productId") Long productId, RedirectAttributes rttr) {
		
		log.info("remove = " + productId);
		
		if(service.remove(productId)) {
			rttr.addFlashAttribute("result", "success");
		}
		
		return "redirect:/product/list";
	}
	
	@GetMapping("/products")
	public String products(RedirectAttributes rttr) {
		
		return "/product/products";
	}
	
	
}
