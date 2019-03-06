package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.OrderDetailDTO;

@Component
public interface OrderDetailMapper {
	public void insertOrderDetail(OrderDetailDTO orderD);
	public List<OrderDetailDTO> selectOrderDetailsList();
	public List<OrderDetailDTO> selectOrderDetails(String searchWord);
	public OrderDetailDTO selectOrderDetail(String searchWord);
	public int countOrderDetails();
	public String existOrderDetail(String searchWord);
	public void updateOrderDetail(OrderDetailDTO orderD);
	public void deleteOrderDetail(OrderDetailDTO orderD);
}
