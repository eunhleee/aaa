package com.cos.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.cos.domain.UserVO;
import com.cos.persistence.UserDAO;

@Service
public class UserServiceImpl implements UserService {
	@Inject
	private UserDAO dao;

	@Override
	public UserVO select(String userID) throws Exception {
		return dao.select(userID);
	}
	@Override
	public void insert(UserVO user) throws Exception {
		dao.insert(user);
		
	}
	@Override
	public int login(UserVO user) throws Exception {
		return dao.login(user);
	}
	@Override
	public int update(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(user);
	}
	@Override
	public void delete(String id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(id);
	}
	@Override
	public String findid(String email) throws Exception {
		// TODO Auto-generated method stub
		return dao.findid(email);
	}
	@Override
	public int findpw(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		return dao.findpw(user);
	}
	@Override
	public void newpw(UserVO user) throws Exception {
		// TODO Auto-generated method stub
		dao.newpw(user);
	}
	

}
