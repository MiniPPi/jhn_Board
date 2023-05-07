package com.kh.app.service;

import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.app.dao.BoardDaoImpl;
import com.kh.app.vo.ListVo;
@Service
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDaoImpl dao;
	
	@Autowired
	private SqlSessionTemplate sst;
	
	@Override
	public List<ListVo> selectBoardList(Map map) {

		return dao.selectBoardList(sst,map);
	}
	@Override
	public int selectCount() {

		return dao.selectCount(sst);
	}

	@Override
	public int boardWrite(ListVo vo) {

		return dao.boardWrite(sst,vo);
	}
	@Override
	public ListVo selectOne(ListVo vo) {
		
		
		return dao.selectOne(sst,vo);
	}

	@Override
	public List<ListVo> selectRelatedBoardList(Map<String, Map<String, Integer>> wordCount) {
		
		System.out.println("word"+wordCount);
		return dao.selectRelatedBoardList(sst, wordCount);
	}
	@Override
	public ListVo getBoard(String no) {
		return dao.getBoard(sst,no);
	}
	

}
