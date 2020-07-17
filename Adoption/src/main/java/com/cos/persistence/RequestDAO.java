package com.cos.persistence;

import java.util.List;

import com.cos.domain.RequestDTO;

public interface RequestDAO {
	public RequestDTO select(String name) throws Exception;
	public List<RequestDTO> list(RequestDTO dto) throws Exception;
	public void insert(RequestDTO user) throws Exception;
	
}
