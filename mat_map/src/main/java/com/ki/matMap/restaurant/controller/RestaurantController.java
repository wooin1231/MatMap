package com.ki.matMap.restaurant.controller;

import java.lang.System.Logger;
import java.util.Locale;

import org.mybatis.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RestaurantController {
		
	@RequestMapping(value = "/review", method = RequestMethod.GET)
	public String review(Locale locale, Model model) {
		
		return "restaurant/review";

	}
	
	@RequestMapping(value = "/book", method = RequestMethod.GET)
	public String book(Locale locale, Model model) {
		
		return "restaurant/book";
		
	}
	
}
