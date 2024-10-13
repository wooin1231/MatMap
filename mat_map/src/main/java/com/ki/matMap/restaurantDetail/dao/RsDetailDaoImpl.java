package com.ki.matMap.restaurantDetail.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.ki.matMap.restaurantDetail.vo.RestaurantVo;
import com.ki.matMap.restaurantDetail.vo.RsImgVo;
import com.ki.matMap.restaurantDetail.vo.RsMenuVo;
import com.ki.matMap.restaurantDetail.vo.RsReviewVo;

@Repository
@Primary
public class RsDetailDaoImpl implements RsDetailDao{
	
	@Autowired
	 private SqlSessionTemplate sqlSession;
	 
	 private static final String NAMESPACE = "rsMapper";
	@Override
	public RestaurantVo getRstById(int rsNo) {
		return sqlSession.selectOne(NAMESPACE +".getRstById", rsNo);
				
	}

	@Override
	public List<RsImgVo> getRsImages(int rsNo) {
		return sqlSession.selectList(NAMESPACE +".getRsImages", rsNo);
	}

	@Override
	public List<RsMenuVo> getRsMenu(int rsNo) {
		return sqlSession.selectList(NAMESPACE +".getRsMenu", rsNo);
	}

	@Override
	public List<RsReviewVo> getRev(int rsNo) {
		
	        return sqlSession.selectList(NAMESPACE + ".getRev", rsNo);
	}

	@Override
	public double getAverageRating(int rsNo) {
		return sqlSession.selectOne(NAMESPACE +".getAverageRating", rsNo);
	}
	
	 @Override
	 public void insertReview(RsReviewVo review) {
	        sqlSession.insert(NAMESPACE + ".insertReview", review);
	    }
	
	
}
