package com.cos.service;

import java.util.List;

import com.cos.domain.RequestDTO;


public interface RequestService {
	public RequestDTO select(String name) throws Exception;
	public List<RequestDTO> list(RequestDTO dto) throws Exception;
	public void insert(RequestDTO user) throws Exception;
}
