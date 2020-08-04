package com.cos.service;

import java.util.List;

import com.cos.domain.AnCommentVO;
import com.cos.domain.AnimalVO;
import com.cos.util.Pagination;

public interface AnimalService {
	public List<AnimalVO> selectTitle(int kind2) throws Exception;
	public List<AnimalVO> selectTitle2(int kind2) throws Exception;
	public AnimalVO selectMaxNum() throws Exception;
	public AnimalVO selectMinNum(int kind2) throws Exception;
	public AnimalVO selectMinNum2(int kind2) throws Exception;
	public AnimalVO select(int num) throws Exception;
	public List<AnimalVO> newSelect(Pagination pagination) throws Exception;
	public List<AnimalVO> allSelect(Pagination pagination) throws Exception;
	public void delete(int num) throws Exception;
	public void update(AnimalVO animal) throws Exception;
	public void insert(AnimalVO animal) throws Exception;
	public int count(Pagination pagination) throws Exception;
	public int count2(Pagination pagination) throws Exception;
	public void addComment(AnimalVO animal) throws Exception;
	public List<AnimalVO> selectComment(AnimalVO animal) throws Exception;
	public void updateComment(AnimalVO animal) throws Exception;
	public void deleteComment(int acNum) throws Exception;
}
