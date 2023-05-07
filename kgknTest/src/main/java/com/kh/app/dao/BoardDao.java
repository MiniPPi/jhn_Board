package com.kh.app.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import com.kh.app.vo.ListVo;

public interface BoardDao {

	public List<ListVo> selectBoardList(SqlSessionTemplate sst, Map map);

	public int selectCount(SqlSessionTemplate sst);

	public int boardWrite(SqlSessionTemplate sst, ListVo vo);

	public ListVo selectOne(SqlSessionTemplate sst, ListVo vo);

	public List<ListVo> selectRelatedBoardList(SqlSessionTemplate sst, Map<String, Map<String, Integer>> wordCount);

	public Map<String, Object> selectBoard(SqlSessionTemplate sst, String no);

	public ListVo getBoard(SqlSessionTemplate sst, String no);
}
