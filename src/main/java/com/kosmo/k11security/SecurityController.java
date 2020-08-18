package com.kosmo.k11security;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {

	//시큐리티1단계 기본 페이지 사용
	@RequestMapping("/security1-1/index.do")
	public String security1_1() {
		return "09Security/Step1/index";
	}
	
	@RequestMapping("/security1-2/access.do")
	public String security1_2() {
		return "09Security/Step1/access";
	}
	
	/////////////////////////////////////////////////////////////////////////////
	
	//시큐리티2단계 로그인 화면 커스컴
	@RequestMapping("/security2/index.do")
	public String securityIndex2(Principal principal,
			Authentication authentication, Model model) {
		/*
		1. controller에서 시큐리티를 통해 로그인한 사용자 정보 얻기
			: @controller로 선언된 클래스에서는 메소드 인자로
			Principal 객체를 통해 사용자 아이디를 얻을 수 있다.
		 */

		
		//1. Principal객체를 통한  아이디 얻어오기
		model.addAttribute("principal_getName",principal.getName()); //kosmo_user
		System.out.println("user_id"+principal.getName());
		
		
		//2. Authentication객체를 통한 아이디 얻어오기
		model.addAttribute("user_id",authentication.getName()); //kosmo_user
		model.addAttribute("getName",authentication.getName());
		model.addAttribute("details",authentication.getDetails());
		model.addAttribute("getCredentials",authentication.getCredentials());
		model.addAttribute("getPrincipal",authentication.getPrincipal());
		model.addAttribute("getAuthorities",authentication.getAuthorities());
		model.addAttribute("getClass",authentication.getClass());

		
		//3. 로그인된 아이디 얻어오기 
		UserDetails userDetails =
				(UserDetails) authentication.getPrincipal();
		String detail_id = userDetails.getUsername();
		System.out.println("detail_id: "+detail_id);//kosmo_user
		
		
		/*
		컨트롤러 클래스가 아닌 일반적인 클래스에서 사용자 정보 얻기
			: 스프링 컨테이너의 전역변수로 선언된 SecurityContextHolder
			객체를 이용해서 사용자 아이디를 얻어온다.
		*/
		Object object = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		UserDetails sch = (UserDetails) object;
		String sch_id = sch.getUsername();
		System.out.println("sch_id:  "+sch_id);//kosmo_user
		
		return "09Security/Step2/index";
	}
	
	@RequestMapping("/security2/login.do")
	public String securityIndex2Login(Model model, Principal principal) {
		System.out.println("securityIndex2Login():컨트롤러 실행");
		if(principal != null) {
			model.addAttribute("user_id", principal.getName());
			System.out.println("principal.getName(): "+principal.getName());
		}
		return "09Security/Step2/login";
	}
	
	@RequestMapping("/security2/admin/main.do")
	public String securityIndex2AdminMain() {
		
		return "09Security/Step2/adminMain";
	}
	
	@RequestMapping("/security2/accessDenied.do")
	public String securityIndex2AccessDenied() {
		
		return "09Security/Step2/accessDenied";
	}


	//사용시 주의사항
	@RequestMapping("/security3/form.do")
	public String formPage() {
		
		return "09Security/Warning/postForm";
	}


}






















