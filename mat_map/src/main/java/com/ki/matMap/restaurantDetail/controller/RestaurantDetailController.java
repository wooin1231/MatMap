package com.ki.matMap.restaurantDetail.controller;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ki.matMap.restaurantDetail.service.RsDetailService;
import com.ki.matMap.restaurantDetail.vo.RestaurantVo;
import com.ki.matMap.restaurantDetail.vo.RsImgVo;
import com.ki.matMap.restaurantDetail.vo.RsMenuVo;
import com.ki.matMap.restaurantDetail.vo.RsReviewVo;




@Controller
public class RestaurantDetailController {
	
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	 * @RequestMapping(value = "/resDetail", method = RequestMethod.GET) public
	 * String home(Locale locale, Model model) {
	 * 
	 * 
	 * 
	 * return "resDetail/restaurantDetail"; }
	 */
	
	@Autowired
    private RsDetailService rsService;

	@GetMapping("/restaurantDetail/{rsNo}")
    public String restaurantDetail(@PathVariable("rsNo") int rsNo, Model model) {
       
		RestaurantVo restaurant = rsService.getRstById(rsNo);
        List<RsImgVo> images = rsService.getRsImages(rsNo);
        List<RsMenuVo> menus = rsService.getRsMenu(rsNo);
        List<RsReviewVo> reviews = rsService.getRev(rsNo);
        double averageRating = rsService.getAverageRating(rsNo);


        model.addAttribute("restaurant", restaurant);
        model.addAttribute("images", images);
        model.addAttribute("menus", menus);
        model.addAttribute("reviews", reviews);
        model.addAttribute("averageRating", averageRating);

        return "resDetail/restaurantDetail";
    }
	

}
