package com.kh.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.vo.ListVo;
import com.kh.app.vo.PageVo;

@Repository
public class BoardDaoImpl implements BoardDao{

	@Override
	public List<ListVo> selectBoardList(SqlSessionTemplate sst, Map map) {
		
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
	
		
		return sst.selectList("boardMapper.boardList",map,rb);
	}
	@Override
	public int selectCount(SqlSessionTemplate sst) {
	
		
		return sst.selectOne("boardMapper.selectCount");
	}
	@Override
	public int boardWrite(SqlSessionTemplate sst, ListVo vo) {
		return sst.insert("boardMapper.boardWrite",vo);
	}
	@Override
	public ListVo selectOne(SqlSessionTemplate sst, ListVo vo) {
		
		return sst.selectOne("boardMapper.selectOne",vo);
	}
	
	@Override
	public Map<String, Object> selectBoard(SqlSessionTemplate sst, String no) {
		return sst.selectOne("boardMapper.selectBoard",no);
	}
	@Override
	public List<ListVo> selectRelatedBoardList(SqlSessionTemplate sst, Map<String, Map<String, Integer>> wordCount) {
	   
	    return sst.selectList("boardMapper.boardListRelated", wordCount);
	}
	@Override
	public ListVo getBoard(SqlSessionTemplate sst, String no) {
		return sst.selectOne("boardMapper.getBoard",no);
	}

}
