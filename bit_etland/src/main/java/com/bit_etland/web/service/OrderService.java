package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.OrderDTO;

@Component
public interface OrderService {
	public void registOrder(OrderDTO order);
	public List<OrderDTO> bringOrdersList();
	public List<OrderDTO> retrieveOrders(String searchWord);
	public OrderDTO retrieveOrder(String searchWord);
	public int countOrders();
	public boolean existOrder(String searchWord);
	public void modifyOrder(OrderDTO order);
	public void removeOrder(OrderDTO order);
}
