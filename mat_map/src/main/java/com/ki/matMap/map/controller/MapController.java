package com.ki.matMap.map.controller;

import java.lang.System.Logger;
import java.util.Locale;

import org.mybatis.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MapController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/map", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		
		return "Map";
	}

}
