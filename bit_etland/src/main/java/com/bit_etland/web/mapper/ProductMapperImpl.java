package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.ProductDTO;
import com.bit_etland.web.proxy.Proxy;
@Repository
public class ProductMapperImpl implements ProductMapper{

	@Override
	public void insertProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ProductDTO> selectProductsList(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ProductDTO> selectProducts(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ProductDTO selectProduct(ProductDTO pro) {
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
	public void updateProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteProduct(ProductDTO pro) {
		// TODO Auto-generated method stub
		
	}

}
