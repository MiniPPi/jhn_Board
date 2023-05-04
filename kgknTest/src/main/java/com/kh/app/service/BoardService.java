package com.kh.app.service;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.app.dao.BoardDao;
import com.kh.app.vo.ListVo;
@Service
public class BoardService {
	
	@Autowired
	private BoardDao dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	
	public List<ListVo> selectBoardList(Map map) {

		return dao.selectBoardList(sst,map);
	}

	public int selectCount() {

		return dao.selectCount(sst);
	}

	
	public int boardWrite(ListVo vo) {

		return dao.boardWrite(sst,vo);
	}

}
