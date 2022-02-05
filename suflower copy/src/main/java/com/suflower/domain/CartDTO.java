package com.suflower.domain;

import lombok.Data;

@Data
public class CartDTO {
	
	private int cartId;
	private String memberId;
	private String memberName;
	private Long productId;
	private String productName;
	private Long productPrice;
	private int quantity;
	private Long totalPrice;
}
