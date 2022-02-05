package com.suflower.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.suflower.domain.MemberDTO;
import com.suflower.service.MemberService;

@Controller
@RequestMapping(value = "/member/*")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Autowired
	private MemberService memberservice;

	// 회원가입 페이지 이동
	@GetMapping("/register")
	public void loginGET() {
		logger.info("회원가입 페이지 진입");
	}

	// 회원가입
	@PostMapping("/register")
	public String joinPOST(MemberDTO member) throws Exception {
		logger.info("register 진입");
		// 회원가입 서비스 실행
		memberservice.memberJoin(member);
		logger.info("register Service 성공");
		return "redirect:/member/login";
	}

	// 아이디 중복 검사
	@PostMapping("/memberIdChk")
	@ResponseBody
	public String memberIdChkPOST(String memberId) throws Exception {
		/* logger.info("memberIdChk() 진입"); */
		logger.info("memberIdChk() 진입");
		int result = memberservice.idCheck(memberId);
		logger.info("결과값 = " + result);
		if (result != 0) {
			return "fail"; // 중복 아이디가 존재
		} else {
			return "success"; // 중복 아이디 x
		}
	} // memberIdChkPOST() 종료

	// 로그인 페이지 이동
	@GetMapping("/login")
	public void joinGET() {
		logger.info("로그인 페이지 진입");
	}

	/* 로그인 */
	@PostMapping("/login")
	public String loginPOST(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr) throws Exception {
//			System.out.println("login 메서드 진입");
//			System.out.println("전달된 데이터 :" +member);
		HttpSession session = request.getSession();
		MemberDTO lvo = memberservice.memberLogin(member);

		if (lvo == null) {
			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/member/login";
		}
		session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
		return "redirect:/";
	}

	/* 메인페이지 로그아웃 */
	@PostMapping("logout.do")
	@ResponseBody
	public void logoutMainPOST(HttpServletRequest request) throws Exception {
		logger.info("비동기 로그아웃 메서드 진입");

		HttpSession session = request.getSession();

		session.invalidate();

	}

	// 내정보
	@GetMapping("/info")
	public void MemberInfoGET() {
		logger.info("memberInfo 진입");

	}


	/* 정보 수정 */
	@GetMapping("/update")
	public void MemberUpdateGET() {
		logger.info("memberUpdate 진입");

	}

	@PostMapping("/update")
	public String memberUpdatePost(HttpServletRequest request, MemberDTO member, RedirectAttributes rttr)
			throws Exception {
		HttpSession session = request.getSession();
		memberservice.updateMember(member);
		rttr.addFlashAttribute("result", "success");
		session.setAttribute("member", member);
		logger.info("수정완료");
		return "member/info";
	}

}
