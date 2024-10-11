package com.ki.matMap.map.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.ki.matMap.map.vo.MapVo;

@Repository
@Primary
public class MapDaoImpl implements MapDao {
	
	 @Autowired
	 private SqlSessionTemplate sqlSession;
	 
	 private static final String NAMESPACE = "mapMapper";
	 
	@Override
	public List<MapVo> getAllLocations(String rsYoutube){
		return sqlSession.selectList(NAMESPACE +".getAllLocations", rsYoutube);
	}
	
}
