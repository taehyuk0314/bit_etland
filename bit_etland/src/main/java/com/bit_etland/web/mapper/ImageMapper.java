package com.bit_etland.web.mapper;

import java.util.List;

import com.bit_etland.web.domain.ImageDTO;
import com.bit_etland.web.proxy.Proxy;


public interface ImageMapper {
	public void insertImage(ImageDTO img);
	public List<ImageDTO> selectImageList(Proxy pxy);
	public List<ImageDTO> selectImages(Proxy pxy);
	public ImageDTO selectImage(ImageDTO img);
	public String lastImageSeq();
	public int countImages(Proxy pxy);
	public void updateImage(ImageDTO img);
	public void deleteImage(ImageDTO img);
}
