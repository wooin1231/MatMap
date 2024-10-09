package com.ki.matMap.map.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.ki.matMap.map.vo.MapVo;

@Repository
public class MapDaoImpl implements MapDao {

	@Override
	public List<MapVo> selectList(SqlSessionTemplate sst, String rsYoutube) {
		return sst.selectList("mapMapper.selectList", rsYoutube);
	}
	
}
