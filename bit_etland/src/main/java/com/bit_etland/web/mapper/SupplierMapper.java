package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.SupplierDTO;
import com.bit_etland.web.proxy.Proxy;
@Repository
public interface SupplierMapper {
	public void insertSupplier(SupplierDTO sup);
	public List<SupplierDTO> selectSuppliersList(Proxy pxy);
	public List<SupplierDTO> selectSuppliers(Proxy pxy);
	public SupplierDTO selectSupplier(SupplierDTO sup);
	public int countSuppliers(Proxy pxy);
	public boolean existSupplier(SupplierDTO sup);
	public void updateSupplier(SupplierDTO sup);
	public void deleteSupplier(SupplierDTO sup);
}
