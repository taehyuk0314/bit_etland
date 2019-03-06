package com.bit_etland.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.proxy.Proxy;

@Component
public interface CustomerService {
	public void registCustomer(CustomerDTO cust);
	public List<CustomerDTO> bringCustomerList(Proxy pxy);
	public List<CustomerDTO> retrieveCustomers(Proxy pxy);
	public CustomerDTO retrieveCustomer(CustomerDTO cust);
	public int countCustomers(Proxy pxy);
	public boolean existsCustomerID(CustomerDTO cust);
	public void modifyCustomer(CustomerDTO cust);
	public Map<String, Object> fileUpload(Proxy pxy);
	public void removeCustomer(CustomerDTO cust);
	public Map<String,Object> retrievePhone(Proxy pxy);
}
