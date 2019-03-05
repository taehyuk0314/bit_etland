package com.bit_etland.web.domain;
import lombok.Data;

@Data
public class ProductDTO {
	private String productID,
				   productName,
				   supplierID,
				   categoryID,
				   unit,
				   price;

	
}
