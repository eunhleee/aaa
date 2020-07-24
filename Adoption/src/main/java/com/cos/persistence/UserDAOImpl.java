package com.cos.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cos.domain.UserVO;

@Repository
public class UserDAOImpl implements UserDAO{
	
	@Inject
	private SqlSession session;
	//namespace와 mapper의 namespace를 동일하게 하여 연결 시키기
	private static final String namespace ="com.cos.domain.user";

	@Override
	public UserVO select(String userID) throws Exception {
		return session.selectOne(namespace+".select", userID);
	}
	@Override
	public void insert(UserVO user) throws Exception {
		session.insert(namespace+".insert", user);
	}
	@Override
	public int login(UserVO user) throws Exception {
		return session.selectOne(namespace+".login", user);
	}
	@Override
	public int update(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		return session.update(namespace+".update",user);
	}
	@Override
	public void delete(String id) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete",id);
	}
	@Override
	public String findid(String email) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".findid",email);
	}
	@Override
	public int findpw(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".findpw",user);
	}
	@Override
	public void newpw(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".newpw",user);
	}
	
}
