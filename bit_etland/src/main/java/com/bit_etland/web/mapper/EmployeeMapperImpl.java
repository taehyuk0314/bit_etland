package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.EmployeeDTO;
import com.bit_etland.web.proxy.Proxy;
@Repository
public class EmployeeMapperImpl implements EmployeeMapper{

	@Override
	public void insertEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<EmployeeDTO> selectEmployeeList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EmployeeDTO> selectEmployees(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EmployeeDTO selectEmployee(Proxy pxy) {
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
	public void updateEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEmployee(EmployeeDTO emp) {
		// TODO Auto-generated method stub
		
	}

}
