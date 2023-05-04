package com.kh.app.member.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.kh.app.member.dao.MemberDao;
import com.kh.app.member.vo.MemberVo;
@Component
public class MemberService {
	@Autowired
	private SqlSessionTemplate sst;
	@Autowired
	private MemberDao dao;
	
	
	public int join(MemberVo vo) {
		
		return dao.join(sst,vo);
	}

	public MemberVo login(MemberVo vo) {
		
		return dao.login(sst,vo);
		
	}

}
