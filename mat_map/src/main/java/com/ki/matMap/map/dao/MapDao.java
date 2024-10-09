package com.ki.matMap.map.dao;

import com.ki.matMap.map.vo.MapVo;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public interface MapDao {
	
	// 지도에 불러올 연예인들 조회
	List<MapVo> selectList(SqlSessionTemplate sst,String rsYoutube);
}
