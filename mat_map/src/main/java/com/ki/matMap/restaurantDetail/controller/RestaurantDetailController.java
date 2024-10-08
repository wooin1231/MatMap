package com.ki.matMap.restaurantDetail.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
public class RestaurantDetailController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/resDetail", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		
		
		
		return "resDetail/restaurantDetail";
	}

}
