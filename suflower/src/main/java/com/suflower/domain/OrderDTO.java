package com.suflower.domain;

import lombok.Data;

@Data
public class OrderDTO {
	
	private Long orderId;
	private int orderQuantity;
	private String orderDate;
	private String reservationDate;
	private String receiverName;
	private String receiverAddr1;
	private String receiverAddr2;
	private String receiverPhoneNum;

}
