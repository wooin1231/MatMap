<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<meta charset="utf-8" />
	<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<link rel="stylesheet" href="/resources/css/map.css">
	<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
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
				<input type="button" value="성시경" id="ssiKyung"
					onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="백종원" id="bjongWon" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="최자로드" id="chJaRoad" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="현주엽" id="HjooYeop" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="홍석천이원일" id="scwi" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg">
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
	window.initMap = function() {

		const map = new google.maps.Map(document.getElementById("map"), {
			center: { lat: 36.68914, lng: 127.2137 },
			zoom: 7,
			scrollwheel: true 
		});

		const locations = [
			{ label: "C", title: "대성집 도가니탕", description: "서울특별시 종로구",image:"https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2Fwu1fOmsPEr8%2Fmqdefault.jpg&w=640&q=75",lat: 37.57271, lng: 126.9609 },
			{ label: "G", title: "어머니 대성집 해장국", lat: 37.57746, lng: 127.0286 },
			{ label: "D", title: "약수 순대국", lat: 37.5532076, lng: 127.007702 },
			{ label: "I", title: "IFC몰", lat: 37.5251644, lng: 127.0106781 },
			{ label: "L", title: "롯데월드타워몰", lat: 37.5125585, lng: 127.1025353 },
			{ label: "M", title: "명동지하상가", lat: 37.563692, lng: 126.9822107 },
			{ label: "T", title: "타임스퀘어", lat: 37.5173108, lng: 126.9033793 },
		];
		
		var myIcon = new google.maps.MarkerImage("${root}/resources/assets/img/logo/matMapFinal.png", null, null, null, new google.maps.Size(40,50));
		
		const bounds = new google.maps.LatLngBounds();
		
		const modal = document.querySelector('.modal');
		
		const modaldialog = document.querySelector('.modal-dialog');
		  
		locations.forEach(({ label, title, description, image , lat, lng }) => {
			const marker = new google.maps.Marker({
				position: { lat, lng },
				label,
				map,
				icon: myIcon,
				title: title,
				image: image
			});
			
			bounds.extend(marker.position);
			
			// InfoWindow 내용
			var contentString =
				'<div class="card">' + 
				'<img src="' + image + '" alt="' + title +'">' +
				'<div class="content">' +
				'<h5>' + title +'</h5>' +
				'<p>' + description + '</p>' +
				'<button type="button" class="btn btn-light" style="margin-top: -15px;">상세보기</button>' +
				'</div>' +
				'</div>'
			;
			
			var infoWindow = new google.maps.InfoWindow({
				content: contentString
			});
			
			marker.addListener("click", function() {
				/* map.panTo(marker.position);
				map.setZoom(8); */
				infoWindow.open(map, marker);
				map.panTo(marker.position);
			});
		
		/* forEach 닫는 태그 */
		});
	};
</script>
<!-- 구글맵 API 스크립트 : initMap 기 정의 필요 -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
</html>
