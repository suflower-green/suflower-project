package com.suflower.mapper;

import java.util.List;

import com.suflower.domain.OrderDTO;

public interface OrderMapper {

	public List<OrderDTO> getList();
	
	public OrderDTO read(Long orderId);
	
	public void insert(OrderDTO order);
	
	public int update(Long orderId);
	
	public int delete(Long orderId);
	
}
