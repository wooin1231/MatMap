package com.ki.matMap.restaurantDetail.vo;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class RestaurantVo {
    private int rsNo;
    private String rsName;
    private String rsPlaceRoad;
    private String rsPlaceLocal;
    private BigDecimal rsLat;
    private BigDecimal rsLong;
    private String rsPhone;
    private String rsOpenTime;
    private String rsCloseTime;
    private String rsCloseDay;
    private String rsYoutube;
    
    
   
    // Getters and Setters
}