package com.cos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cos.domain.RequestDTO;

@Repository
public class RequestDAOlmpl implements RequestDAO{
	@Inject
	private SqlSession session;
	//namespace와 mapper의 namespace를 동일하게 하여 연결 시키기
	private static final String namespace ="com.cos.domain.request";

	@Override
	public RequestDTO select(String name) throws Exception {
		// TODO Auto-generated method stub
		 return session.selectOne(namespace+".select", name);
	}

	@Override
	public void insert(RequestDTO user) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".insert", user);
		
	}

	@Override
	public List<RequestDTO> list(RequestDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".list",dto);
	}

}
