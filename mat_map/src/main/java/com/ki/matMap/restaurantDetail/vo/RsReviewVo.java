package com.ki.matMap.restaurantDetail.vo;

import java.security.Timestamp;

import lombok.Data;

@Data
public class RsReviewVo {
	
	 private int revNo;
	 private int memNo;
	 private Integer rsNo;
	 private int rsRevRating;
	 private String revContents;
	 private java.sql.Timestamp revCreateDate;
	 private java.sql.Timestamp revUpdateDate;
	 private String memNick; 
	 

	

}
