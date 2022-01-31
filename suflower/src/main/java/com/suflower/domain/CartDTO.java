package com.suflower.domain;

import lombok.Data;

@Data
public class CartDTO {
	
	private Long cartId;
	private Long productId;
	private String productName;
	private Long productPrice;
	private int orderQuantity;
	private String memberId;
}
