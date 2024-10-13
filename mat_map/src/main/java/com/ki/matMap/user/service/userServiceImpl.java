package com.ki.matMap.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.ki.matMap.map.dao.MapDao;
import com.ki.matMap.map.vo.MapVo;
import com.ki.matMap.user.dao.userDao;
import com.ki.matMap.user.vo.userVo;

@Service
@Primary
public class userServiceImpl implements userService {
	
	@Autowired
	private userDao userD;
	
	  @Autowired
	  private BCryptPasswordEncoder passwordEncoder;
	  	
	  @Override
	    public void registerUser(userVo user) {
	        // 비밀번호 암호화
	        user.setMemPwd(passwordEncoder.encode(user.getMemPwd()));
	        userD.register(user);
	    }
	
	  
	  @Override
	    public userVo login(String memId, String memPwd) {
		  userVo user = userD.findByUsername(memId);
	        if (user != null && passwordEncoder.matches(memPwd, user.getMemPwd())) {
	            return user;
	        }
	        return null;
	    }
	
}
