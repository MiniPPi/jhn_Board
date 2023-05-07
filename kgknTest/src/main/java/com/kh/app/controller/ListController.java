package com.kh.app.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.app.member.vo.MemberVo;
import com.kh.app.post.AnalyzeContent;
import com.kh.app.service.BoardServiceImpl;
import com.kh.app.vo.ListVo;
import com.kh.app.vo.PageVo;
import com.kh.app.vo.Pagination;

@Controller
public class ListController {

	private final Logger LOGGER = LoggerFactory.getLogger(ListController.class);

	@Autowired
	private BoardServiceImpl bs;

	@Autowired
	private AnalyzeContent ac;

	// 리스트 화면

	@GetMapping("list/boardList")
	public String boardList(ListVo vo, Model m, PageVo pv, String pno, HttpServletRequest request) {

		int currentPage = 1;
		if (pno != null) {
			currentPage = Integer.parseInt(pno);
		}
		int listCount = bs.selectCount();
		int boardLimit = 10;
		int pageLimit = 5;
		pv = Pagination.getPageVo(listCount, currentPage, pageLimit, boardLimit);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("vo", vo);
		map.put("pv", pv);

		List<ListVo> list = bs.selectBoardList(map);

		m.addAttribute("pv", pv);
		m.addAttribute("list", list);

		return "list/boardList";

	}

	@PostMapping("list/boardList")
	public String boardList(ListVo vo) {
		return "list/boardList";
	}

	// 글쓰기
	@GetMapping("list/boardWrite")
	public String boardWrite(HttpSession session) {

		return "list/boardWrite";
	}

	@PostMapping("list/boardWrite")
	public String boardWrite(ListVo vo, HttpSession session) {

		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");

		if (loginMember == null) {
			return "redirect:/member/login";
		}

		String writer = loginMember.getId();

		vo.setId(writer);
		int result = bs.boardWrite(vo);
		if (result == 1) {
			return "redirect:/list/boardList?pno=1";
		} else {
			return "common/errorPage";
		}

	}

	// 상세조회
	@GetMapping("list/boardDetail")
	public String boardDetail(ListVo vo, Model model) {

		vo = bs.selectOne(vo);
		System.out.println(vo);
		Map<String, Integer> wordCount = ac.analyzeContent(vo.getContent());
		Map<String, Map<String, Integer>> params = new HashMap<>();
		params.put("wordCount", wordCount);
		List<ListVo> relatedPosts = bs.selectRelatedBoardList(params);
		model.addAttribute("vo", vo);
		model.addAttribute("relatedPosts", relatedPosts);

		return "list/boardDetail";

	}

	
	@PostMapping("list/boardDetail")
	public String boardDetail(ListVo vo, HttpSession session, Model model) {
		MemberVo loginMember = (MemberVo) session.getAttribute("loginMember");
		if (loginMember != null) {
			vo = bs.getBoard(vo.getNo());
			System.out.println(vo);
			model.addAttribute("vo", vo);

			return "list/boardDetail";
		} else {
			return "common/error";
		}

	}
}