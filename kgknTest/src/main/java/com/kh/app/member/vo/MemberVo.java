package com.kh.app.member.vo;

public class MemberVo {
	
	private String id;
	private String pwd;
	private String enrollDate;
	public MemberVo() {
		super();
	}
	public MemberVo(String id, String pwd, String enrollDate) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.enrollDate = enrollDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	@Override
	public String toString() {
		return "MemberVo [id=" + id + ", pwd=" + pwd + ", enrollDate=" + enrollDate + "]";
	}
	
	
}
	