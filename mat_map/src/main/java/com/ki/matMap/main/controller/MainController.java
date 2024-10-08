package com.ki.matMap.main.controller;

import java.lang.System.Logger;
import java.util.Locale;

import org.mybatis.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
		
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		return "main/home";

	}
	
	@RequestMapping(value = "/ranking", method = RequestMethod.GET)
	public String ranking(Locale locale, Model model) {
		
		return "main/ranking";
		
	}
	
}
