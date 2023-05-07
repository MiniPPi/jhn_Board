package com.kh.app.service;

import java.util.List;
import java.util.Map;

import com.kh.app.vo.ListVo;

public interface BoardService {

	public List<ListVo> selectBoardList(Map map);

	public int selectCount();

	public int boardWrite(ListVo vo);

	public ListVo selectOne(ListVo vo);

	public List<ListVo> selectRelatedBoardList(Map<String, Map<String, Integer>> wordCount);

	public ListVo getBoard(String no);

}