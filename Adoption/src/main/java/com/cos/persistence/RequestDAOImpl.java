package com.cos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cos.domain.PageDTO;
import com.cos.domain.RequestDTO;

@Repository
public class RequestDAOImpl implements RequestDAO{
	@Inject
	private SqlSession session;
	//namespace와 mapper의 namespace를 동일하게 하여 연결 시키기
	private static final String namespace ="com.cos.domain.request";

	@Override
	public List<RequestDTO> myPaging(PageDTO dto) throws Exception {
		// TODO Auto-generated method stub
		 return session.selectList(namespace+".myPaging", dto);
	}

	@Override
	public void insert(RequestDTO user) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert", user);
	}

	@Override
	public List<RequestDTO> paging(PageDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".paging",dto);
	}
	

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete",num);
	}

	@Override
	public RequestDTO read(int num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",num);
	}

	@Override
	public void update(RequestDTO dto) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update",dto);
	}

	@Override
	public int getRequestListCnt() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".getRequestListCnt");
	}

	@Override
	public int getMyRequestListCnt(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".getMyRequestListCnt",id);
	}

	@Override
	public List<Integer> myList(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".myList",id);
	}

	@Override
	public void addComment(RequestDTO dto) {
		// TODO Auto-generated method stub
		session.insert(namespace+".addComment",dto);
	}

	@Override
	public List<RequestDTO> selectRequestNum(RequestDTO dto) {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".selectRequestNum",dto);
	}

	@Override
	public void deleteComment(int conum) {
		// TODO Auto-generated method stub
		session.delete(namespace+".deleteComment",conum);
	}

	@Override
	public void modifyComment(RequestDTO dto) {
		// TODO Auto-generated method stub
		session.update(namespace+".modifyComment",dto);
	}

}
