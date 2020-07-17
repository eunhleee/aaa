package com.cos.service;



import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cos.domain.RequestDTO;
import com.cos.persistence.RequestDAO;

@Service
public class ReqeustServicelmpl implements RequestService{
	@Inject
	private RequestDAO dao;

	@Override
	public RequestDTO select(String name) throws Exception {
		// TODO Auto-generated method stub
		return dao.select(name);
	}

	@Override
	public void insert(RequestDTO user) throws Exception { 
		dao.insert(user);
	}

	@Override
	public List<RequestDTO> list(RequestDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.list(dto);
	}

}
