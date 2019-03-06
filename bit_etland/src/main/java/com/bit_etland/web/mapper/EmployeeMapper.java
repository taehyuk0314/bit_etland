package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.EmployeeDTO;
import com.bit_etland.web.proxy.Proxy;

@Component
public interface EmployeeMapper {
	public void insertEmployee(EmployeeDTO emp);
	public List<EmployeeDTO> selectEmployeeList(Proxy pxy);
	public List<EmployeeDTO> selectEmployees(Proxy pxy);
	public EmployeeDTO selectEmployee(Proxy pxy);
	public int countEmployees(Proxy pxy);
	public boolean existsEmployee(EmployeeDTO emp);
	public void updateEmployee(EmployeeDTO emp);
	public void deleteEmployee(EmployeeDTO emp);
}
