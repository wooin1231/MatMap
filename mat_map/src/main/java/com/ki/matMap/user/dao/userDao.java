package com.ki.matMap.user.dao;

import com.ki.matMap.map.vo.MapVo;
import com.ki.matMap.user.vo.userVo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import org.apache.ibatis.annotations.Param;

public interface userDao {
	
	  void register(userVo user);
	  userVo findByUsername(String memId);
}
