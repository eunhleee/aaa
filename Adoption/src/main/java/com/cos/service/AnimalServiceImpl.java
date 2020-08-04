package com.cos.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cos.domain.AnCommentVO;
import com.cos.domain.AnimalVO;
import com.cos.persistence.AnimalDAO;
import com.cos.util.Pagination;

@Service
public class AnimalServiceImpl implements AnimalService{

	@Inject
	private AnimalDAO dao;

	@Override
	public List<AnimalVO> selectTitle(int kind2) throws Exception {
		return dao.selectTitle(kind2);
	}
	
	@Override
	public List<AnimalVO> selectTitle2(int kind2) throws Exception {
		return dao.selectTitle(kind2);
	}

	@Override
	public AnimalVO selectMaxNum() throws Exception {
		return dao.selectMaxNum();
	}
	
	@Override
	public AnimalVO selectMinNum(int kind2) throws Exception {
		return dao.selectMinNum(kind2);
	}
	
	@Override
	public AnimalVO selectMinNum2(int kind2) throws Exception {
		return dao.selectMinNum2(kind2);
	}

	@Override
	public AnimalVO select(int num) throws Exception {
		return dao.select(num);
	}

	@Override
	public List<AnimalVO> newSelect(Pagination pagination) throws Exception {
		return dao.newSelect(pagination);
	}

	@Override
	public List<AnimalVO> allSelect(Pagination pagination) throws Exception {
		return dao.allSelect(pagination);
	}
	
	@Override
	public void delete(int num) throws Exception {
		dao.delete(num);
	}

	@Override
	public void update(AnimalVO animal) throws Exception {
		dao.update(animal);
	}

	@Override
	public void insert(AnimalVO animal) throws Exception {
		dao.insert(animal);
	}

	@Override
	public int count(Pagination pagination) throws Exception {
		return dao.count(pagination);
	}
	
	@Override
	public int count2(Pagination pagination) throws Exception {
		return dao.count2(pagination);
	}

	@Override
	public void addComment(AnimalVO animal) throws Exception {
		dao.addComment(animal);
	}

	@Override
	public List<AnimalVO> selectComment(AnimalVO animal) throws Exception {
		return dao.selectComment(animal);
	}

	@Override
	public void updateComment(AnimalVO animal) throws Exception {
		dao.updateComment(animal);
	}

	@Override
	public void deleteComment(int acNum) throws Exception {
		dao.deleteComment(acNum);
	}
	
	
}
