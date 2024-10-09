package com.ki.matMap.map.service;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Service;

import com.ki.matMap.map.dao.MapDao;
import com.ki.matMap.map.vo.MapVo;

@Service
public class MapServiceImpl {
	
	private final MapDao dao;
	private final SqlSessionTemplate sst;
	
	
	public MapServiceImpl(MapDao dao, SqlSessionTemplate sst) {
		this.dao = dao;
		this.sst = sst;
	}
	
	@Override
	public List<MapVo> selectList(String rsYoutube) {
		return dao.selectList(sst,rsYoutube);
	}
}
