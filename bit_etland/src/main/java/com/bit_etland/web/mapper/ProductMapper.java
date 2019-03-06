package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.ProductDTO;
import com.bit_etland.web.proxy.Proxy;
@Component
public interface ProductMapper {
	public void insertProduct(ProductDTO pro);
	public List<ProductDTO> selectProductsList(Proxy pxy);
	public List<ProductDTO> selectProducts(Proxy pxy);
	public ProductDTO selectProduct(ProductDTO pro);
	public int countProducts(Proxy pxy);
	public boolean existProduct(ProductDTO pro);
	public void updateProduct(ProductDTO pro);
	public void deleteProduct(ProductDTO pro);
}
