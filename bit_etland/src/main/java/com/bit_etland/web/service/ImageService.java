package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.ImageDTO;
import com.bit_etland.web.proxy.Proxy;

@Component
public interface ImageService {
	public void createImage(ImageDTO img);
	public List<ImageDTO> imageList(Proxy pxy);
	public List<ImageDTO> searchImage(Proxy pxy);
	public ImageDTO findImage(ImageDTO img);
	public int countImages(Proxy pxy);
	public void updateImage(ImageDTO img);
	public void deleteImage(ImageDTO img);
	
}
