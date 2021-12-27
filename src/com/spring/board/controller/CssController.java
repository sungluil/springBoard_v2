package com.spring.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.board.service.boardService;

@Controller
public class CssController {

	@Autowired
	boardService boardService;
	
	@RequestMapping("css/work-slider1.do")
	public String page1() {
		
		return "css/work-slider1";
	}
	@RequestMapping("css/Responsive.do")
	public String page2() {
		
		return "css/Responsive";
	}
	@RequestMapping("css/scrollTop.do")
	public String page3() {
		
		return "css/scrollTop";
	}
	@RequestMapping("css/smoothScroll.do")
	public String page4() {
		
		return "css/smoothScroll";
	}
	@RequestMapping("css/fullPage.do")
	public String page5() {
		
		return "css/fullPage";
	}
	@RequestMapping("css/headerPage.do")
	public String page6() {
		
		return "css/Header";
	}
	@RequestMapping("css/dragonwoo.do")
	public String page7() {
		
		return "css/dragonwoo";
	}
}
