	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ page session="false"%>
	
	<!DOCTYPE html>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
	<html lang="en">
	<style>
	
	* {
		padding: 0;
		margin: 0;
		box-sizing: border-box;
	}
	
	html, body {
		
	}
	
	.slider {
		margin: 0 auto;
		width: 800px;
	}
	
	.slick-slide {
		transform: scale(0.8);
		transition: all 0.4s ease-in-out;
		padding: 60px 0;
	}
	
	.slick-slide img {
		max-width: 100%;
		transition: all 0.4s ease-in-out;
	}
	
	.slick-center {
		transform: scale(1.1);
	}
	
	.rsTitle {
		position:  relative;
        left:  500px;
	}
	
	.rating {
		font-size: 24px;
	}
	
	.rating2 {
		font-size: 16px;
	}
	
	.btn-group {
		top: -150px;
		left: 560px;
	}
	
	table.storeInfo {
		width: 400px;
		padding-top: - 100px;
		border-collapse: collapse;
		text-align: left;
		height: 30px;
		line-height: 1.5;
		border-top: none;
		border-left: none;
		border-right: none;
		border-bottom: none;
		float: left;
	}
	
	table.storeInfo th {
		width: 130px;
		padding: 10px;
		text-align: left;
		font-size: 15px;
		vertical-align: top;
		color: #999999;
		border-right: none;
		border-bottom: none;
	}
	
	table.storeInfo td {
		padding: 10px;
		vertical-align: top;
		border-right: none;
		border-bottom: none;
		width: 40px;
	}
	
	table.storeInfo  td>#nextButton {
		margin-top: -5px;
		width: 15px;
		height: 15px;
		cursor: pointer;
	}
	
	table.storeInfo  td>#prevButton {
		margin-top: -5px;
		width: 15px;
		height: 15px;
		cursor: pointer;
	}
	
	#btn2 {
		width: 40px;
		height: 20px;
		font-size: 13px;
		color: black;
		text-align: center;
		border: solid 0.4px black;
		border-radius: 3px;
	}
	
	.yotubeLogo {
		width: 20px;
		height: 20px;
	}
	
	#mediaImage {
		width: 20px;
		height: 20px;
		margin-top: -5px;
	}
	
	.stNumber {
		width: 20px;
		height: 20px;
		font-size: 13px;
		border: 1px solid #ccc;
	}
	
	.stNump {
		margin-top: -2px;
		margin-left: -15px;
		height: 13px;
	}
	
	table.storeMap {
		float: left;
		width: 400px;
		border: 1px solid black;
		padding-top: - 100px;
		border-collapse: collapse;
		text-align: left;
		height: 30px;
		line-height: 1.5;
		border-top: none;
		border-left: none;
		border-right: none;
		border-bottom: none;
		padding-top: - 100px; 
	}
	
	table.storeMap th {
		width: 130px;
		padding: 10px;
		text-align: left;
		font-size: 15px;
		vertical-align: top;
		color: #999999;
		border-right: none;
		border-bottom: none;
	}
	
	table.storeMap td {
		padding: 10px;
		vertical-align: top;
		border-right: none;
		border-bottom: none;
		width: 40px;
		height: 400px;
	}
	
	#map {
		margin-top: 10px;
		width: 300px;
		height: 400px;
		margin-left: 70px;
		margin-right: auto;
	}
	
	.card-text {
		margin-top: -20px;
		margin-left: 15px;
	}
	
	#btn-group2 {
		margin-top: 30px;
		text-align: center;
	}
	
	#plusButton{
		margin-top: 20px;
		width:850px;
	}
	
/* 화살표 색상 변경*/
.slick-prev:before, .slick-next:before{
  color: black !important;
  opacity: 1 ; 
}
/* 화살표 위치 변경 */
.slick-prev{
  right: -190px !important ;
  z-index: 9 ;
}
.slick-next{
  right: -26px !important ;
  z-index: 9 ;  
}

	</style>
	<head>
		<meta name="viewport"
			content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<meta charset="UTF-8">
		
		<link rel="stylesheet" type="text/css"
			href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
		<!-- Add the slick-theme.css if you want default styling -->
		<link rel="stylesheet" type="text/css"
			href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
			<link rel="stylesheet" href="${root}/resources/css/map.css">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, shrink-to-fit=no" />
		<meta name="description" content="" />
		<meta name="author" content="" />
		<!-- Favicon-->
		<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
		<jsp:include page="/WEB-INF/views/main/header.jsp"/>
	</head>
	<body>
		<!-- Navigator -->
		<jsp:include page="/WEB-INF/views/main/nav.jsp"/>
	
	
		<div class="slider">
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
			<div class="item">
				<img
					src="https://images.unsplash.com/photo-1485550409059-9afb054cada4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80"
					alt="" />
			</div>
	
		</div>
			
	
		<section class="container" style="max-width: 850px; max-height: 600px;">
			<div style="font-size: 2rem; margin-top: -120px;" class="rsTitle fw-bolder">
				<strong>대성집 도가니탕</strong>
			</div>
			<div class="title">
				<div class="title">
					<p class="rating">⭐ 4.0 / 5.0</p>
				</div>
			</div>
	
			<div class="btn-group" role="group"
				aria-label="Basic mixed styles example">
				<button type="button" class="btn btn-danger"
					style="background-color: #ff7f00; border-color: white;">좋아요</button>
				<button type="button" class="btn btn-danger"
					style="background-color: #ff7f00; border-color: white;">리뷰
					쓰기</button>
				<button type="button" class="btn btn-danger"
					style="background-color: #ff7f00; border-color: white;">예약하기</button>
			</div>
	
	
			<div class="card" style="width: 850px;">
	
				<div id="infoTable">
					<table class="storeInfo">
						<tr>
							<th scope="row"></th>
							<td colspan="8"></td>
						</tr>
						<tr>
							<th scope="row">영업시간</th>
							<td colspan="8">주중 12:00 ~ 23:00</td>
							<!--     <td style ="width : 150px;"></td>
				    <td style ="width : 150px;"></td> -->
						</tr>
						<tr>
							<th scope="row">휴무일</th>
							<td colspan="8">매주 일요일</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td colspan="8">서울특별시 서대문구 옥천동 70번지 1층</td>
						</tr>
						<tr>
							<th scope="row"></th>
							<td>
								<div id="btn2">지번</div>
							</td>
							<td colspan="5" id="stNum">
								<p class="stNump">행촌동 209-35</p>
							</td>
						</tr>
						<tr id="first">
							<th scope="row">메뉴</th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="second">
							<th scope="row"></th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="next">
							<th scope="row"></th>
							<td colspan="4">도가니탕</td>
							<td colspan="3">13000원</td>
							<td><img src="assets/img/skip.png" id="nextButton"></img></td>
						</tr>
						<tr id="four" style="display: none;">
							<th scope="row">메뉴</th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="five" style="display: none;">
							<th scope="row"></th>
							<td colspan="4">도가니탕</td>
							<td colspan="4">13000원</td>
						</tr>
						<tr id="prev" style="display: none;">
							<th scope="row"></th>
							<td colspan="4"></td>
							<td colspan="3"></td>
							<td><img src="assets/img/prev.png" id="prevButton"></img></td>
						</tr>
						<tr>
							<th scope="row">전화번호</th>
							<td colspan="8">010-0000-0000</td>
						</tr>
	
						<tr>
							<th scope="row">미디어</th>
							<td colspan="8"><img src="assets/img/youtube logo.png" alt=""
								id="mediaImage" /> 성시경 먹을텐데</td>
						</tr>
	
						<tr class="hidden" id="last">
							<th scope="row"></th>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
	
					</table>
	
					<table class="storeMap">
						<tr>
							<th scope="row"></th>
							<td colspan="8">
								<div class="container">
									<div id="map"></div>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</section>
	
		<!-- Review Section -->
		<section class="container" style="max-width: 850px;">
			<div class="fw-bolder" style="font-size: 1.8rem">미정 리뷰</div>
	
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<div class="fw-bolder" style="font-size: 1.2rem">김철수</div>
					</div>
					<div class="col-9 text-end">
						<p>2024-09-29 23:27:05</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
					
						
				</div>
	
			</div>
	
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<div class="fw-bolder" style="font-size: 1.2rem">김철수</div>
					</div>
					<div class="col-9 text-end">
						<p>2024-09-29 23:27:05</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
					
				</div>
	
			</div>
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<div class="fw-bolder" style="font-size: 1.2rem">김철수</div>
					</div>
					<div class="col-9 text-end">
						<p>2024-09-29 23:27:05</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
				</div>
	
			</div>
					<button type="button" class="btn btn-danger" id = "plusButton" onclick="plusReview();" style="background-color: #ff7f00;">더보기</button>
		</section>
		
		
		<!-- Footer -->
        <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
	</body>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script>
	
		   var map; // 전역변수로 만들어둬야함
		   
		   function initMap() {
			   var place = { // 경도 위도 설정
			     lat: 37.56993,
			     lng: 126.9620
			   };
			   var map = new google.maps.Map(document.getElementById('map'), {
			     zoom: 16,
			     center: place, // 정해준 경도,위도가 가운데로 갈 수 있게
			     scrollwheel: true // 우리가 쓴 zoom이랑 같은데 스크롤 기능 활성화
			   });
			   
			   
			   var myIcon = new google.maps.MarkerImage("${root}/resources/assets/img/logo/matMapFinal.png", null, null, null, new google.maps.Size(40,50));
	
			   var marker = new google.maps.Marker({ // 마커 재정의
				     position: place,
				     map: map,
				     icon: myIcon,
				    
				   }); 
				   
			
		   }
		   
		   
		   
		   
		
		  
	$(document).ready(function () {
	    $(".slider").slick({
	    	  centerMode: true,
	    	  centerPadding: '60px',
	    	  slidesToShow: 3,
	    	  responsive: [
	    	    {
	    	      breakpoint: 768,
	    	      settings: {
	    	        arrows: true,
	    	        centerMode: true,
	    	        centerPadding: '60px',
	    	        slidesToShow: 3,
	    	        prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
	    	      }
	    	    },
	    	    {
	    	      breakpoint: 480,
	    	      settings: {
	    	        arrows: true,
	    	        centerMode: true,
	    	        centerPadding: '60px',
	    	        slidesToShow: 1,
	    	        nextArrow : "<button type='button' class='slick-next'>Next</button>",
	    	      }
	    	    }
	    	  ]
	    	});
	  });
	
	
	  
			$(function(){
				$("#nextButton").click(function(){
					//사용하고자 하는 함수
					nextMenu();
					
				});
				
				$("#prevButton").click(function(){
					//사용하고자 하는 함수
					prevMenu();
					
				});
				
			});	
	
			function nextMenu(){
				$('#first').attr('style', "display:none;");
				$('#second').attr('style', "display:none;");
				$('#next').attr('style', "display:none;");
				$('#four').attr('style', "display:'';");
				$('#five').attr('style', "display:'';");
				$('#prev').attr('style', "display:'';");
			}  
		
			function prevMenu(){
				$('#first').attr('style', "display:'';");
				$('#second').attr('style', "display:'';");
				$('#next').attr('style', "display:'';");
				$('#four').attr('style', "display:none;");
				$('#five').attr('style', "display:none;");
				$('#prev').attr('style', "display:none;");
			}  
			
				$('#stNum').attr('style', "text-align:start;"); 
				
				
		     
			
	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
	</html>