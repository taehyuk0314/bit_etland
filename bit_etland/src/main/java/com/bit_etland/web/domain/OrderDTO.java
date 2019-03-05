package com.bit_etland.web.domain;

import lombok.Data;

@Data
public class OrderDTO {
	private String orderID,
				   customerID,
				   employeeID,
				   orderDate,
				   shipperID;

	
	
}
