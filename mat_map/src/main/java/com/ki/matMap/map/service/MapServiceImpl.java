package com.ki.matMap.map.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.ki.matMap.map.dao.MapDao;
import com.ki.matMap.map.vo.MapVo;

@Service
@Primary
public class MapServiceImpl implements MapService {
	
	@Autowired
	private MapDao mpDao;
	
	
	@Override
	public List<MapVo> getAllLocations(String rsYoutube) {
		return mpDao.getAllLocations(rsYoutube);
		
	}
}
