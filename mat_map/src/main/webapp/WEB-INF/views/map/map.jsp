<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<c:set var="root" value="${pageContext.request.contextPath}" />
<style>
	#map {
		width: 1000px;
		height: 800px;
		margin-left: auto;
		margin-right: auto;
		margin-top: -100px;
	}
	
	.text-center {
		margin: 0 auto;
	}
	
	#bjongWon {
		margin-left: 20px;
	}
	
	#chJaRoad {
		margin-left: 20px;
	}
	
	#HjooYeop {
		margin-left: 20px;
	}
	
	#scwi {
		margin-left: 20px;
	}
	
	.modal-body {
		text-align: center;
	}
	
	#detailButton {
		margin: auto;
		display: block;
	}
	
	/* InfoWindow 내부 스타일 */
	.info-window {
		display: flex;
		width: 250px;
		font-family: Arial, sans-serif;
		border:none;
	}
	
	.card {
		height:220px;
		border:none;
	}
	
	.card img {
		width: 190px;
		height: 100px;
		border-radius: 5px;
	}
	
	.card .content {
		text-align:center;
		margin-top:10px;
	}
	
	.info-window h3 {
		margin: 0;
		font-size: 16px;
	}
	
	.info-window p {
		margin-top: - 10px;
		font-size: 12px;
		color: gray;
	}
	
	.info-window .price {
		font-weight: bold;
		margin-top: auto;
		font-size: 14px;
	}
</style>
<head>
	<script async="false" type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<meta charset="utf-8" />
	<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="/resources/css/map.css">
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
</head>
<body >
	<!-- Navigator-->
	<jsp:include page="/WEB-INF/views/main/nav.jsp"/>
	<!-- Search -->
    <section class="search-container">
    	<div>
    		<input class="search-input shadow-search" type="text" placeholder="🔍 맛집 이름, 장소, 주소, 유튜브 채널명 등을 입력해주세요. ">
    		<img class="search-img" src="https://github.com/user-attachments/assets/56e17edd-45c3-4582-a6ce-f611333d03fe" alt="landing-img"/>
    	</div>
    </section>
	<!-- About-->
	<section>
		<div class="container">
			<div class="text-center">
				 <button id="btnSung" class="btn btn-outline-dark rounded-pill btn-lg" onclick="loadMap('성시경 먹을텐데')">성시경 먹을텐데</button>
		        <button id="btnBaek" class="btn btn-outline-dark rounded-pill btn-lg"  onclick="loadMap('백종원')">백종원</button>
		        <button id="btnChoi" class="btn btn-outline-dark rounded-pill btn-lg"  onclick="loadMap('최자로드')" >최자로드</button>
		        <button id="btnHyun" class="btn btn-outline-dark rounded-pill btn-lg"  onclick="loadMap('현주엽')">현주엽</button>
		        <button id="btnHong" class="btn btn-outline-dark rounded-pill btn-lg"  onclick="loadMap('홍석천이원일')">홍석천이원일</button>
		   </div>
		</div>
	</section>
	<section>
		<div class="container">
			<div id="map">
			</div>
		</div>
	</section>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"/>
</body>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script>

			
				let map;
				var markers = [];
				
				// 현재 열려있는 InfoWindow를 저장하는 변수
				var currentInfoWindow = null;

				
				// 구글 맵 초기화
				function initMap() {
				    map = new google.maps.Map(document.getElementById("map"), {
				        center: { lat: 36.68914, lng: 127.2137 }, // 서울의 중심 좌표
				        zoom: 7,
				 	    scrollwheel: true 

				    });
				}
				
				
				// 마커 추가 함수
				function addMarker(location, info) {
					myIcon =  new google.maps.MarkerImage("${root}/resources/assets/img/logo/matMapFinal.png", null, null, null, new google.maps.Size(40,50));
				    let marker = new google.maps.Marker({
				        position: location,
				        map: map,
				        icon: myIcon
				    });
					
				    var contentString = 
	    	            '<div class="card">' + 
	    	                '<img src="' + info.rsYoutubeImg +'" alt="' +  info.rsName +'">'+
	    	                '<div class="content">'+
	    	                   '<h5>' + info.rsName +'</h5>' +
	    	                    '<p>'  +  info.rsPlaceRoad.substring(0, 5)  + '</p>'+
	    	                    '<button type="button" <a href="/restaurantDetail?rsNo=${info.rsNo}" class="btn btn-light" style="margin-top: -15px;">상세보기</button>'+
	    	                '</div>'+
	    	            '</div>'
	    	        ; 

				    
				    let infowindow = new google.maps.InfoWindow({
				        content: contentString
				    }); 
				
				    marker.addListener('click', function() {
				    	// 현재 열려 있는 InfoWindow가 있으면 닫기
				        if (currentInfoWindow) {
				            currentInfoWindow.close();
				        }

				        // 새로 클릭한 마커의 InfoWindow 열기
				        infowindow.open(map, marker);

				        // 현재 열려 있는 InfoWindow 업데이트
				        currentInfoWindow = infowindow;
				    });
				    
				 // markers 배열에 마커 추가
				    markers.push(marker);
				}
				
				// 마커 초기화 함수 (기존 마커들 삭제)
				function clearMarkers() {
				    for (var i = 0; i < markers.length; i++) {
				        markers[i].setMap(null);  // 마커를 지도에서 제거
				    }
				    markers = [];  // 배열 초기화
				    
				    // InfoWindow도 초기화
				    if (currentInfoWindow) {
				        currentInfoWindow.close();  // 열려있는 InfoWindow 닫기
				        currentInfoWindow = null;   // InfoWindow 변수 초기화
				    }
				}

				
				// AJAX로 유튜버에 맞는 매장 정보 가져오기
				function loadMap(youtuber) {
				    $.ajax({
				        url: "/getLocations",
				        type: "GET",
				        data: { rsYoutube: youtuber },
				        dataType: "json",
				        success: function(locations) {
				        	  // 기존 마커들 초기화
				            clearMarkers();

				            // 새로운 마커들 추가
				            if (locations.length > 0) {
				                map.setCenter({ lat: locations[0].rsLat, lng: locations[0].rsLong });
				                for (let i = 0; i < locations.length; i++) {
				                    addMarker({ lat: locations[i].rsLat, lng: locations[i].rsLong }, locations[i]);
				                }
				            } else {
				                console.log("No locations found for this YouTuber.");
				            }
				        },
				        error: function(xhr, status, error) {
				            console.log("Error: " + error);
				            console.log("Status: " + status);
				            console.log(xhr.responseText);  // 서버에서 보낸 에러 응답 확인
				        }
				    });
				}
				
				// 구글 맵 초기화 호출
				initMap();
</script>
<!-- 구글맵 API 스크립트 : initMap 기 정의 필요 -->

</html>
