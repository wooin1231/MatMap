package com.ki.matMap.user.controller;

import java.lang.System.Logger;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.mybatis.logging.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ki.matMap.map.service.MapService;
import com.ki.matMap.map.vo.MapVo;
import com.ki.matMap.user.service.userService;
import com.ki.matMap.user.vo.userVo;

@Controller
public class userController {
	
	@Autowired
	private userService us;
	
	
	@RequestMapping("/register")
    public String showRegisterForm() {
        return "member/join";
    }
	
	@PostMapping("/register")
    public String register(userVo userVo, Model model) {
        us.registerUser(userVo);
        model.addAttribute("message", "회원가입이 완료되었습니다.");
        return "redirect:/login";
    }

	 @RequestMapping("/login")
	    public String showLoginForm() {
	        return "member/login";
	    }

	    @PostMapping("/login")
	    public String login(@RequestParam("memId") String memId,
	                        @RequestParam("memPwd") String memPwd,
	                        HttpSession session, Model model) {
	    	userVo user = us.login(memId, memPwd);
	        if (user != null) {
	            session.setAttribute("user", user);
	            session.setAttribute("memId", memId);
	            return "redirect:/home";
	        } else {
	            model.addAttribute("error", "로그인 실패: 아이디 또는 비밀번호를 확인하세요.");
	            return "member/login";
	        }
	    }

	    @RequestMapping("/logout")
	    public String logout(HttpSession session) {
	        session.invalidate();
	        return "redirect:/home";
	    }

}
