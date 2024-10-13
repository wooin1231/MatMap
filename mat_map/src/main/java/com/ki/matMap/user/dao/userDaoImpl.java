package com.ki.matMap.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.ki.matMap.map.vo.MapVo;
import com.ki.matMap.user.vo.userVo;

@Repository
@Primary
public class userDaoImpl implements userDao {
	
	 @Autowired
	 private SqlSessionTemplate sqlSession;
	 
	 private static final String NAMESPACE = "userMapper";
	 
	 @Override
	    public void register(userVo user) {
	        sqlSession.insert(NAMESPACE + ".register", user);
	    }

	    @Override
	    public userVo findByUsername(String memId) {
	        return sqlSession.selectOne(NAMESPACE + ".findByUsername", memId);
	    }
	
}
