package com.cos.service;

import java.util.List;

import com.cos.domain.PageDTO;
import com.cos.domain.RequestDTO;


public interface RequestService {
	public List<RequestDTO> myPaging(PageDTO dto) throws Exception;
	public List<RequestDTO> paging(PageDTO dto) throws Exception;
	public RequestDTO read(int num) throws Exception;
	public void insert(RequestDTO user) throws Exception;
	public void delete(int num) throws Exception;
	public void update(RequestDTO dto) throws Exception;
	public int getRequestListCnt() throws Exception;
	public int getMyRequestListCnt(String id) throws Exception;
	public List<Integer> myList(String id) throws Exception;
	public void addComment(RequestDTO dto);
	public List<RequestDTO> selectRequestNum(RequestDTO dto);
	public void deleteComment(int conum);
	public void modifyComment(RequestDTO dto);
}
