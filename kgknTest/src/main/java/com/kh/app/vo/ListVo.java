package com.kh.app.vo;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class ListVo {
	
	private String no;
	private String id;
	private String title;
	private String content;
	private Timestamp enrollDate;
	
	public ListVo() {
		
	}
	public ListVo(String no, String id, String title, String content, Timestamp enrollDate) {
		super();
		this.no = no;
		this.id = id;
		this.title = title;
		this.content = content;
		this.enrollDate = enrollDate;
	}
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	@Override
	public String toString() {
		return "ListVo [no=" + no + ", id=" + id + ", title=" + title + ", content=" + content + ", enrollDate="
				+ enrollDate + "]";
	}
	
	
	

}
