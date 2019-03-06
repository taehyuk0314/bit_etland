package com.bit_etland.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.proxy.Proxy;
@Component
public interface CustomerMapper {
	public void insertCustomer(CustomerDTO cust);
	public List<CustomerDTO> selectCustomerList(Proxy pxy);
	public List<CustomerDTO> selectCustomers(Proxy pxy);
	public CustomerDTO selectCustomer(CustomerDTO cust);
	public int countCustomers(Proxy pxy);
	public boolean existsCustomerID(CustomerDTO cust);
	public void updateCustomer(CustomerDTO cust);
	public Map<String, Object> selectProfile(Proxy pxy);
	public void deleteCustomer(CustomerDTO cust);
	public Map<String, Object> selectPhone(Proxy pxy); 
}
