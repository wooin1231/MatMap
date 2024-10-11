package com.ki.matMap.map.dao;

import com.ki.matMap.map.vo.MapVo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import org.apache.ibatis.annotations.Param;

public interface MapDao {
	
	// 정보 다가져오기
	List<MapVo> getAllLocations(String rsYoutube);
}
