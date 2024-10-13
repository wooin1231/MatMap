package com.ki.matMap.restaurantDetail.service;

import java.util.List;

import com.ki.matMap.restaurantDetail.vo.RestaurantVo;
import com.ki.matMap.restaurantDetail.vo.RsImgVo;
import com.ki.matMap.restaurantDetail.vo.RsMenuVo;
import com.ki.matMap.restaurantDetail.vo.RsReviewVo;

public interface RsDetailService {
	
	RestaurantVo getRstById(int rsNo);
	
    List<RsImgVo> getRsImages(int rsNo);
    
    List<RsMenuVo> getRsMenu(int rsNo);
    
    List<RsReviewVo> getRev(int rsNo);
    
    double getAverageRating(int rsNo);
    
    void insertReview(RsReviewVo review);
}
