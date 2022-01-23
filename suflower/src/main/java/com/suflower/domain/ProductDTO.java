package com.suflower.domain;

import lombok.Data;


public class ProductDTO {
	
	private Long productId;
	private String productType;
	private String productName;
	private int productQuantity;
	private Long productPrice;
	private String regdate;
	private String updateDate;
	
	
	public ProductDTO(Long productId, String productType, String productName, int productQuantity, Long productPrice,
			String regdate, String updateDate) {
		this.productId = productId;
		this.productType = productType;
		this.productName = productName;
		this.productQuantity = productQuantity;
		this.productPrice = productPrice;
		this.regdate = regdate;
		this.updateDate = updateDate;
	}



	public Long getProductId() {
		return productId;
	}



	public void setProductId(Long productId) {
		this.productId = productId;
	}



	public String getProductType() {
		return productType;
	}



	public void setProductType(String productType) {
		this.productType = productType;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public int getProductQuantity() {
		return productQuantity;
	}



	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}



	public Long getProductPrice() {
		return productPrice;
	}



	public void setProductPrice(Long productPrice) {
		this.productPrice = productPrice;
	}



	public String getRegdate() {
		return regdate;
	}



	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}



	public String getUpdateDate() {
		return updateDate;
	}



	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}



	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	
	
}
