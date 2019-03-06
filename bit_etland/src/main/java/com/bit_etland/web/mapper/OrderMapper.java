package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.EmployeeDTO;
import com.bit_etland.web.domain.OrderDTO;
@Component
public interface OrderMapper {
	public void insertOrder(OrderDTO order);
	public List<OrderDTO> selectOrdersList();
	public List<OrderDTO> selectOrders(String searchWord);
	public OrderDTO selectOrder(String searchWord);
	public int countOrders();
	public boolean existOrder(EmployeeDTO emp);
	public void updateOrder(OrderDTO order);
	public void deleteOrder(OrderDTO order);
}
	