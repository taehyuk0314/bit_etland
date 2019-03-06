package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.ProductDTO;
import com.bit_etland.web.proxy.Proxy;

@Repository
public class ProductServiceImpl implements ProductService{

	@Override
	public void registProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductDTO> bringProductsList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDTO> retrieveProducts(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDTO retrieveProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countProducts(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

}
