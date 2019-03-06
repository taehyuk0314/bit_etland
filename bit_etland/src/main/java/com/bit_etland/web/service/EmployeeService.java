package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.EmployeeDTO;
import com.bit_etland.web.proxy.Proxy;

@Component
public interface EmployeeService {
	public void registEmployee(EmployeeDTO emp);
	public List<EmployeeDTO> bringEmployeeList(Proxy pxy);
	public List<EmployeeDTO> retrieveEmployees(Proxy pxy);
	public EmployeeDTO retrieveEmployee(Proxy pxy);
	public int countEmployees(Proxy pxy);
	public boolean existsEmployee(EmployeeDTO emp);
	public void modifyEmployee(EmployeeDTO emp);
	public void removeEmployee(EmployeeDTO emp);
}
