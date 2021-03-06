package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.CategoryDTO;
import com.bit_etland.web.proxy.Proxy;
@Repository
public interface CategoryMapper {
	public void insertCategory(CategoryDTO cate);
	public List<CategoryDTO> selectCategoryList(Proxy pxy);
	public List<CategoryDTO> selectCategorys(Proxy pxy);
	public CategoryDTO selectCategory(Proxy pxy);
	public int countCategorys(Proxy pxy);
	public boolean existsCategory(CategoryDTO cate);
	public void updateCategory(CategoryDTO cate);
	public void deleteCategory(CategoryDTO cate);
}
