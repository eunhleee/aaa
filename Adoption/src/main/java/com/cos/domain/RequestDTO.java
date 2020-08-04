package com.cos.domain;

import lombok.Data;

@Data
public class RequestDTO {
	private int num;
	private String id;
	private String name;
	private String regdate;
	private String kind;
	private	String animal_name;
	private String content;
	private int conum;
	private String writer;
	private String comment;
	private String codate;
}
