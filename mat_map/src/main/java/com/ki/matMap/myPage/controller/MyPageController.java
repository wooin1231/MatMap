package com.ki.matMap.myPage.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class MyPageController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/myBook", method = RequestMethod.GET)
	public String myBook(Locale locale, Model model) {
		
		
		
		return "myPage/MyBook";
	}

	@RequestMapping(value = "/myLike", method = RequestMethod.GET)
	public String myLike(Locale locale, Model model) {
		
		
		
		return "myPage/MyLike";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public String myPage(Locale locale, Model model) {
		
		
		
		return "myPage/MyPage";
	}
	
	@RequestMapping(value = "/myReview", method = RequestMethod.GET)
	public String myReview(Locale locale, Model model) {
		
		
		
		return "myPage/myReview";
	}
	
	@RequestMapping(value = "/myReviewUp", method = RequestMethod.GET)
	public String myReviewUp(Locale locale, Model model) {
		
		
		
		return "myPage/ReviewUpdate";
	}
	
	@RequestMapping(value = "/myInfo", method = RequestMethod.GET)
	public String myInfo(Locale locale, Model model) {
		
		
		
		return "myPage/myInfo";
	}
	
	@RequestMapping(value = "/myUpdate", method = RequestMethod.GET)
	public String myUpdate(Locale locale, Model model) {
		
		
		
		return "myPage/myUpdate";
	}
}
