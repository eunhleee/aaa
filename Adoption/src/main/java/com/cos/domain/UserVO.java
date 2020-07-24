package com.cos.domain;

import lombok.Data;

@Data
public class UserVO {
	private String id;
	private String name;
	private String pw;
	private String email;
	private String phone;
	private int grade;
	
}
