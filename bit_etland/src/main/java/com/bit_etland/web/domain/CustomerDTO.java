package com.bit_etland.web.domain;

import lombok.Data;

@Data
public class CustomerDTO {
	@SuppressWarnings("unused")
	private String rnum,
				   customerID,
				   customerName,
				   password,
				   ssn,// 900101-1
				   photo,
				   phone,
				   city,
				   address,
				   postalCode
				   ;

}
