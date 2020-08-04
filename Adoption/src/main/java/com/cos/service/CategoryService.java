package com.cos.service;

import java.util.List;

import com.cos.domain.AnimalVO;
import com.cos.domain.CategoryVO;

public interface CategoryService {
	public void insert(CategoryVO category) throws Exception;
	public List<CategoryVO> selectGubun1(int ctGubun2) throws Exception;
	public List<CategoryVO> selectGubun2(int ctGubun2) throws Exception;
	public List<CategoryVO> categorySelect(AnimalVO animal) throws Exception;
	public void update(CategoryVO category) throws Exception;
	public void delete(int ctNum) throws Exception;
}
