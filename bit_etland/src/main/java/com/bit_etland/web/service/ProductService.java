package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.ProductDTO;
import com.bit_etland.web.proxy.Proxy;
@Component
public interface ProductService {
	public void registProduct(ProductDTO pro);
	public List<ProductDTO> bringProductsList(Proxy pxy);
	public List<ProductDTO> retrieveProducts(Proxy pxy);
	public ProductDTO retrieveProduct(ProductDTO pro);
	public int countProducts(Proxy pxy);
	public boolean existProduct(ProductDTO pro);
	public void modifyProduct(ProductDTO pro);
	public void removeProduct(ProductDTO pro);
}
