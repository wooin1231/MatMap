package com.ki.matMap.map.vo;

import java.math.BigDecimal;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class MapVo {
	
	private int rsNo;
	private String rsPlaceRoad;
	private String rsName;
	private BigDecimal rsLat;
	private BigDecimal rsLong;
	private String rsYoutube;
	private String rsYoutubeImg;
	
	 // Getters and Setters
    public int getRsNo() { return rsNo; }
    public void setRsNo(int rsNo) { this.rsNo = rsNo; }

    public String getRsPlaceRoad() { return rsPlaceRoad; }
    public void setRsPlaceRoad(String rsPlaceRoad) { this.rsPlaceRoad = rsPlaceRoad; }
    
    public String getRsName() { return rsName; }
    public void setRsName(String rsName) { this.rsName = rsName; }
    
    public BigDecimal getRsLat() { return rsLat; }
    public void setRsLat(BigDecimal rsLat) { this.rsLat = rsLat; }

    public BigDecimal getRsLong() { return rsLong; }
    public void setRsLong(BigDecimal rsLong) { this.rsLong = rsLong; }
    
    public String getRsYoutube() { return rsYoutube; }
    public void setRsYoutube(String rsYoutube) { this.rsYoutube = rsYoutube; }


    public String getRsYoutubeImg() { return rsYoutubeImg; }
    public void setRsYoutubeImg(String rsYoutubeImg) { this.rsYoutubeImg = rsYoutubeImg; }

   
}