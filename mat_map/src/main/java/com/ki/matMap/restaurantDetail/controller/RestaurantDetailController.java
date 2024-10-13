package com.ki.matMap.restaurantDetail.controller;

import java.lang.reflect.Member;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ki.matMap.restaurantDetail.service.RsDetailService;
import com.ki.matMap.restaurantDetail.vo.RestaurantVo;
import com.ki.matMap.restaurantDetail.vo.RsImgVo;
import com.ki.matMap.restaurantDetail.vo.RsMenuVo;
import com.ki.matMap.restaurantDetail.vo.RsReviewVo;
import com.ki.matMap.user.vo.userVo;




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
	
	 // 리뷰 작성 페이지 이동
    @GetMapping("/review/write")
    public String showReviewForm(HttpSession session, Model model, @RequestParam("rsNo") int rsNo) {
    	
    	userVo user = (userVo) session.getAttribute("user");
        
        if (user == null) {
        	 model.addAttribute("errorMessage", "회원이 아닙니다. 사용 불가능합니다.");
            return "redirect:/login"; // 로그인 페이지로 리다이렉트
        }

        model.addAttribute("rsNo", rsNo);
        return "restaurant/review"; // 리뷰 작성 페이지 JSP
    }

 // 리뷰 등록 처리
    @PostMapping("/insert")
    public String submitReview( @ModelAttribute RsReviewVo reviewVO, HttpSession session) {

    	userVo memNo = (userVo) session.getAttribute("memNo");

        if (memNo == null) {
            return "redirect:/login";
        }

        RsReviewVo review = new RsReviewVo();
        review.setMemNo(memNo.getMemNo());
        rsService.insertReview(review);
        review.setRevCreateDate(new Timestamp(System.currentTimeMillis()));


        return "redirect:/restaurantDetail/?rsNo=" + review.getRsNo(); // 상세 페이지로 리다이렉트
    }
}
