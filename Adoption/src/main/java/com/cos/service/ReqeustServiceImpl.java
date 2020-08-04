package com.cos.service;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cos.domain.Criteria;
import com.cos.domain.PageDTO;
import com.cos.domain.RequestDTO;
import com.cos.persistence.RequestDAO;

@Service
public class ReqeustServiceImpl implements RequestService{
	@Inject
	private RequestDAO dao;

	@Override
	public List<RequestDTO> myPaging(PageDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.myPaging(dto);
	}

	@Override
	public void insert(RequestDTO user) throws Exception { 
		dao.insert(user);
	}

	@Override
	public List<RequestDTO> paging(PageDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.paging(dto);
	}

	@Override
	public void delete(int num) throws Exception {
		// TODO Auto-generated method stub
		 dao.delete(num);
	}

	@Override
	public RequestDTO read(int num) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(num);
	}

	@Override
	public void update(RequestDTO dto) throws Exception {
		// TODO Auto-generated method stub
		dao.update(dto);
	}

	@Override
	public int getRequestListCnt() throws Exception {
		// TODO Auto-generated method stub
		return dao.getRequestListCnt();
	}

	@Override
	public int getMyRequestListCnt(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.getMyRequestListCnt(id);
	}

	@Override
	public List<Integer> myList(String id) throws Exception {
		// TODO Auto-generated method stub
		return dao.myList(id);
	}

	@Override
	public void addComment(RequestDTO dto) {
		// TODO Auto-generated method stub
		dao.addComment(dto);
	}

	@Override
	public List<RequestDTO> selectRequestNum(RequestDTO dto) {
		// TODO Auto-generated method stub
		return dao.selectRequestNum(dto);
	}

	@Override
	public void deleteComment(int conum) {
		// TODO Auto-generated method stub
		dao.deleteComment(conum);
	}

	@Override
	public void modifyComment(RequestDTO dto) {
		// TODO Auto-generated method stub
		dao.modifyComment(dto);
	}

	

}
