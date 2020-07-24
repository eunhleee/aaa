package com.cos.persistence;

import com.cos.domain.UserVO;

public interface UserDAO {
	public UserVO select(String userID) throws Exception;
	public void insert(UserVO user) throws Exception;
	public int login(UserVO user) throws Exception;
	public int update(UserVO user) throws Exception;
	public void delete(String id) throws Exception;
	public String findid(String email) throws Exception;
	public int findpw(UserVO user) throws Exception; 
	public void newpw(UserVO user) throws Exception; 
	
}
