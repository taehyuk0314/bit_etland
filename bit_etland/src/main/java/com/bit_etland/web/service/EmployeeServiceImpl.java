package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit_etland.web.domain.EmployeeDTO;
import com.bit_etland.web.proxy.Proxy;
@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Override
	public void registEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<EmployeeDTO> bringEmployeeList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EmployeeDTO> retrieveEmployees(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmployeeDTO retrieveEmployee(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countEmployees(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existsEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

}
