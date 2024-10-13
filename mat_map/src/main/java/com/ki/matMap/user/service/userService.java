package com.ki.matMap.user.service;

import java.util.List;

import com.ki.matMap.map.vo.MapVo;
import com.ki.matMap.user.vo.userVo;

public interface userService {
	

	void registerUser(userVo userVo);
	 userVo login(String memId, String memPwd);
}
