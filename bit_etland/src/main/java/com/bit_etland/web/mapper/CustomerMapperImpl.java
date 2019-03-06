package com.bit_etland.web.mapper;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.proxy.Proxy;
@Repository
public class CustomerMapperImpl implements CustomerMapper{

	@Override
	public void insertCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<CustomerDTO> selectCustomerList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CustomerDTO> selectCustomers(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CustomerDTO selectCustomer(CustomerDTO cust) {
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
	public void updateCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> selectProfile(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteCustomer(CustomerDTO cust) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Map<String, Object> selectPhone(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

}
