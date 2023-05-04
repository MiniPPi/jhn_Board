package com.kh.app.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ListVo {
	
	private int no;
	private String writer;
	private String title;
	private String content;
	private Timestamp enrollDate;
	
	public ListVo() {
		
	}
	public ListVo(int no, String writer, String title, String content, Timestamp enrollDate) {
		super();
		this.no = no;
		this.writer = writer;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(Timestamp enrollDate) {
		this.enrollDate = enrollDate;
	}
	
	
	

}
