package com.kh.app.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.app.member.service.MemberService;
import com.kh.app.member.vo.MemberVo;

@RequestMapping("member")
@Controller
public class MemberController {
	
	private MemberService ms;
	
	@Autowired 
	public MemberController(MemberService ms) {
		this.ms = ms;
		
	}
	
	
	@GetMapping("join")
	public String join() {
		return "member/join";
	}

	
	
	@PostMapping("join")
	public String join(MemberVo vo) {
		
		int result = ms.join(vo);
		
		if(result == 1) {
			return "common/success";
		}else {
			return "common/error";
		}
		
	}
	
	@GetMapping("login")
	public String login() {
		return "member/login";
		
	}
	
	@PostMapping("login")
	public String login(MemberVo vo, Model model,HttpSession s) {
		
		MemberVo loginMember = ms.login(vo);
		
		model.addAttribute("msg", "로그인");
		
		s.setAttribute("loginMember", loginMember);
		
		if(loginMember == null) {
			return "common/error";
		}
		
		return "redirect:/main";
		
	}
}
