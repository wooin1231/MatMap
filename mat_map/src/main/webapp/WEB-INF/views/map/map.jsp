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
		display: flex;
		margin: 0 auto;
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
	
	button.selected{
	  color: white;
	  background-color: black;
	}

</style>
<head>
	<meta charset="utf-8" />
	<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="/resources/css/map.css">
	<!-- Header -->
	<jsp:include page="/WEB-INF/views/main/header.jsp"/>
</head>
<body>
	<!-- Navigator-->
	<jsp:include page="/WEB-INF/views/main/nav.jsp"/>
	<!-- Search -->
    <section class="search-container" style="height: 200px">
      	<div>
      		<input class="search-input shadow-search" type="text" placeholder="🔍 맛집 이름, 장소, 주소, 유튜브 채널명 등을 입력해주세요. ">
      		<img class="search-img" src="https://github.com/user-attachments/assets/56e17edd-45c3-4582-a6ce-f611333d03fe" alt="landing-img"/>
      	</div>
    </section>
	<!-- About-->
	<section style="display: flex; padding: 0; margin-top: 2%; margin-bottom: 2.5%; text-align: center; justify-content: center;">
		<div class="container" style="padding: 0; margin: 0;">
			<div class="text-center">
				 <button id="btnSung" class="btn btn-outline-dark mt-auto fw-bolder shadow-basic" onclick="loadMap('성시경 먹을텐데')">성시경 먹을텐데</button>
		        <button id="btnBaek" class="btn btn-outline-dark mt-auto fw-bolder shadow-basic"  onclick="loadMap('백종원')">백종원</button>
		        <button id="btnChoi" class="btn btn-outline-dark mt-auto fw-bolder shadow-basic"  onclick="loadMap('최자로드')" >최자로드</button>
		        <button id="btnHyun" class="btn btn-outline-dark mt-auto fw-bolder shadow-basic"  onclick="loadMap('현주엽')">현주엽</button>
		        <button id="btnHong" class="btn btn-outline-dark mt-auto fw-bolder shadow-basic"  onclick="loadMap('홍석천이원일')">홍석천이원일</button>
		   </div>
		</div>
	</section>
	<section>
		<div class="container" style="margin-bottom: 3%;">
			<div id="map">
			</div>
		</div>
	</section>
	<jsp:include page="/WEB-INF/views/main/footer.jsp"/>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
<script>
    let map;
    var markers = [];
    var currentInfoWindow = null;

    // Google Map 초기화 함수
    function initMap() {
        map = new google.maps.Map(document.getElementById("map"), {
            center: { lat: 36.68914, lng: 127.2137 },
            zoom: 7,
            scrollwheel: true 
        });
    }

    $('button').on('click', function(){
        $('button').removeClass('selected');
        $(this).addClass('selected');
    });

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
                    '<button type="button"  class="btn btn-light" style="margin-top: -15px;" onclick="location.href=\'/restaurantDetail/' + info.rsNo + '\' ">상세보기</button>'+
                '</div>'+
            '</div>'
        ; 

        let infowindow = new google.maps.InfoWindow({
            content: contentString
        }); 
    
        marker.addListener('click', function() {
            if (currentInfoWindow) {
                currentInfoWindow.close();
            }
            infowindow.open(map, marker);
            currentInfoWindow = infowindow;
        });
        
        markers.push(marker);
    }

    // 마커 초기화 함수
    function clearMarkers() {
        for (var i = 0; i < markers.length; i++) {
            markers[i].setMap(null);
        }
        markers = [];
        
        if (currentInfoWindow) {
            currentInfoWindow.close();
            currentInfoWindow = null;
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
                clearMarkers();
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
                console.log(xhr.responseText);
            }
        });
    }

    // initMap 함수 호출 대기
    window.onload = function() {
        if (typeof google !== 'undefined' && google.maps) {
            initMap();
        } else {
            console.error("Google Maps API가 로드되지 않았습니다.");
        }
    };
</script>

</html>
