package com.kh.app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.app.member.vo.MemberVo;
import com.kh.app.service.BoardService;
import com.kh.app.vo.ListVo;
import com.kh.app.vo.PageVo;
import com.kh.app.vo.Pagination;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ListController {
	
	@Autowired
	private BoardService bs;
	
	// FAQ 리스트 화면
	@GetMapping("list/boardList")
	public String boardList(ListVo vo,Model m,PageVo pv,String pno) {
		
		int currentPage = 1;
		if (pno != null) {
		        currentPage = Integer.parseInt(pno);
		}
		int listCount = bs.selectCount();
		int boardLimit = 10;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);
		
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("vo",vo );
		map.put("pv",pv);
		
		List<ListVo> list= bs.selectBoardList(map);
		
		m.addAttribute("pv",pv);
		m.addAttribute("list",list);
		
		
		
		
		
		return "list/boardList";
		
	}
	@PostMapping("list/boardList")
	public String boardList(ListVo vo) {
		return "list/boardList";
	}
	
	//FAQ 글쓰기
		@GetMapping("list/boardWrite")
		public String boardWrite() {
			return "list/boardWrite";
		}
		@PostMapping("list/boardWrite")
		public String boardWrite(ListVo vo, HttpSession session) {

			MemberVo loginMember = (MemberVo) session.getAttribute("loginMember"); 
			String writer = loginMember.getMemberId();
			vo.setWriter(writer);
			int result = bs.boardWrite(vo);
			if(result == 1) {
				return "redirect:/list/boardList?pno=1";
			}else {
				return "common/errorPage";
			}
			
		}
}