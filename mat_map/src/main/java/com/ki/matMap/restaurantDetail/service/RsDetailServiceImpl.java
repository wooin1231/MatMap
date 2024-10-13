package com.ki.matMap.restaurantDetail.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import com.ki.matMap.map.dao.MapDao;
import com.ki.matMap.restaurantDetail.dao.RsDetailDao;
import com.ki.matMap.restaurantDetail.vo.RestaurantVo;
import com.ki.matMap.restaurantDetail.vo.RsImgVo;
import com.ki.matMap.restaurantDetail.vo.RsMenuVo;
import com.ki.matMap.restaurantDetail.vo.RsReviewVo;

@Service
@Primary
public class RsDetailServiceImpl implements RsDetailService{
	
	
	@Autowired
	private RsDetailDao rsDeDao;
	
	
	@Override
	public RestaurantVo getRstById(int rsNo) {
		return rsDeDao.getRstById(rsNo);
	}

	@Override
	public List<RsImgVo> getRsImages(int rsNo) {
		return rsDeDao.getRsImages(rsNo);
	}

	@Override
	public List<RsMenuVo> getRsMenu(int rsNo) {
		// TODO Auto-generated method stub
		return rsDeDao.getRsMenu(rsNo);
	}

	@Override
	public List<RsReviewVo> getRev(int rsNo) {
		
        return rsDeDao.getRev(rsNo);
	}

	@Override
	public double getAverageRating(int rsNo) {
		return rsDeDao.getAverageRating(rsNo);
	}
	
	 @Override
	  public void insertReview(RsReviewVo review) {
	      rsDeDao.insertReview(review);
	    }

}
