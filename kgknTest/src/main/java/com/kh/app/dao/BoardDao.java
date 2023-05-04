package com.kh.app.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.app.vo.ListVo;
import com.kh.app.vo.PageVo;

@Repository
public class BoardDao {
	
public List<ListVo> selectBoardList(SqlSessionTemplate sst, Map map) {
		
		PageVo pv = (PageVo)map.get("pv");
		int offset = (pv.getCurrentPage() -1)* pv.getBoardLimit();
		int limit = pv.getBoardLimit();
		RowBounds rb = new RowBounds(offset, limit);
		
	
		
		return sst.selectList("boardMapper.boardList",map,rb);
	}

	public int selectCount(SqlSessionTemplate sst) {
	
		
		return sst.selectOne("boardMapper.selectCount");
	}

	public int boardWrite(SqlSessionTemplate sst, ListVo vo) {
		return sst.insert("boardMapper.boardWrite",vo);
	}

}
