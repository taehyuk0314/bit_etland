package com.bit_etland.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.proxy.Proxy;
@Service
public class CustomerServiceImpl implements CustomerService{

	@Override
	public void registCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CustomerDTO> bringCustomerList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CustomerDTO> retrieveCustomers(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CustomerDTO retrieveCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countCustomers(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existsCustomerID(CustomerDTO cust) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> fileUpload(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> retrievePhone(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

}
