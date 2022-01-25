package com.bean;

public class User {
	//변수 선언
	private String id;
	private String pw;
	private String name;
	private String email;
	
	/*
	 *
	 * 자바빈 클래스는 form값과 데이터베이스의 통신과정에서 변수처리를 쉽게 하기 위해서 
	 * 사용하는 클래스
	 * 변수선언 및 getter,setter 를 반드시 생성해야 한다.
	 * alt+shift+s = 자동으로 생성자 생성
	 */
	//생성자는 기본 생성자와 모든 멤버 변수를 초기화 하는 생성자2개를 생성	
	
	public User() {
		
	}

	public User(String id, String pw, String name, String email) {
		super();
		this.id = id;     //this 참조 연산자 (자기자신)
		this.pw = pw;
		this.name = name;
		this.email = email;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	
}
