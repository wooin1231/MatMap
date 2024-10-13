<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="true" %>
<c:set var="restaurant" value="${restaurant}" />
<c:if test="${not empty restaurant}">
    <p>Restaurant ID: ${restaurant.rsNo}</p>
    <script>
        console.log("Restaurant ID in JSP: ${restaurant.rsNo}");
    </script>
</c:if>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<html>
	<head>
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
				height: 500px;
			}
			
			.slick-slide {
				transform: scale(0.8);
				transition: all 0.4s ease-in-out;
				padding: 60px 0;
			}
			
			.slick-slide img {
				margin: 0 auto;
				max-width: 100%;
				transition: all 0.4s ease-in-out;
				height: 400px;
			} 
			
			/*   .slider img {
            width: 200px;
            height: auto;
        } */
			
			
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
				  width: 100%;
          		 height: 300px; /* 높이 설정 */
			}
			
			.card-text {
				margin-top: -20px;
				margin-left: 15px;
			}
			
			#btn-group2 {
				margin-top: 30px;
				text-align: center;
			}
			
			#showMoreReviews{
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
			
			/* 모달 스타일 */
			.modal-review {
				display:none;
				position: fixed;
				top:0; right: 0; bottom: 0; left: 0;
				background-color: rgba(0, 0, 0, 0.5);
				border:none;
				
			}
			
			.modal-book {
				display:none;
				position: fixed;
				top:0; right: 0; bottom: 0; left: 0;
				border:none;
			}
			
			.modal {
				display: none;
				position: fixed;
				top: 0;
				bottom: 0;
				left: 0;
				right: 0;
				margin-left: 500px;
				background-color: rgba(0, 0, 0, 0.5);	
		        max-height: 600px;
				max-width: 1000px;
			}

			.modal-content {
	            background-color: #fefefe;
	            margin: 15% auto;
	            padding: 20px;
	            border: 1px solid #888;
	            width: 50%;
	            border-radius: 10px;
	            position: relative;
			}

	        .close {
	            color: #aaa;
	            position: absolute;
	            right: 10px;
	            top: 10px;
	            font-size: 28px;
	            font-weight: bold;
	            cursor: pointer;
	        }

	        .close:hover, 
	        .close:focus {
	            color: black;
	            text-decoration: none;
	            cursor: pointer;
	        }

			#bookmodal {
	            display: none;
	            position: fixed;
	            top: 0;
			   	bottom: 0;
				left: 0;
				right: 0;
	            max-height: 1200px;
			}

	        .close {
	            color: #aaa;
	            position: absolute;
	            right: 10px;
	            top: 10px;
	            font-size: 28px;
	            font-weight: bold;
	            cursor: pointer;
	        }

	        .close:hover, 
	        .close:focus {
	            color: black;
	            text-decoration: none;
	            cursor: pointer;
			}
        </style>
        <script async="false" type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
		<meta charset="UTF-8">
	 <!-- jQuery 로드 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- Slick Slider CSS 로드 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>

    <!-- Slick Slider JS 로드 -->
    <script src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
		
		<link rel="stylesheet" href="${root}/resources/css/map.css">
		
		<jsp:include page="/WEB-INF/views/main/header.jsp"/>
	</head>
	
	<script>
	  // 구글 맵 초기화
			let map;

			  function initMap() {
			    // 지도 옵션 설정
			    const mapOptions = {
			      center: { lat: parseFloat("${restaurant.rsLat}"), lng: parseFloat("${restaurant.rsLong}") }, // 좌표 설정
			      zoom: 15, // 줌 레벨 설정
			      scrollWheel: true
			    };
			
			    // 지도를 표시할 위치
			    map = new google.maps.Map(document.getElementById("map"), mapOptions);
			
			    // 마커 생성
			    const marker = new google.maps.Marker({
			      position: { lat: parseFloat("${restaurant.rsLat}"), lng: parseFloat("${restaurant.rsLong}") },
			      map: map,
			      title: "${restaurant.rsName}", // 마커의 제목
			    });
			  };
			  </script>
	 <!-- Slick Slider 초기화 -->
    <script type="text/javascript">
        $(document).ready(function(){
            $('.slider').slick({
                arrows: true,        // 왼쪽, 오른쪽 화살표
                dots: true,          // 아래 점 네비게이션
                infinite: true,      // 무한 반복
                speed: 500,          // 슬라이드 속도
                slidesToShow: 1,     // 한 번에 표시할 슬라이드 개수
                slidesToScroll: 1    // 한 번에 스크롤할 슬라이드 개수
            });
            
            
            // 리뷰를 3개씩 보여주는 로직
		    let reviewIndex = 0;
		    const reviewStep = 3;
		    const totalReviews = $(".card").length;
		
		    function showMoreReviews() {
		        for (let i = reviewIndex; i < reviewIndex + reviewStep && i < totalReviews; i++) {
		            $(".card").eq(i).show();
		        }
		        reviewIndex += reviewStep;
		
		        // 모든 리뷰가 보여졌다면 버튼 숨김
		        if (reviewIndex >= totalReviews) {
		            $("#showMoreReviews").hide();
		        }
		    }
		
		    $(".card").hide(); // 처음에 리뷰 숨기기
		    showMoreReviews(); // 초기 3개 리뷰 보여주기
		
		    $("#showMoreReviews").click(function() {
		        showMoreReviews();
		    });
	
        });
        
    
    </script>
    
   
	<body>
		<!-- Navigator -->
		<jsp:include page="/WEB-INF/views/main/nav.jsp"/>
		<!-- Contents -->

		
	  <!-- 슬릭슬라이더 이미지 섹션 -->
	    <div class="slider">
	        <c:forEach var="img" items="${images}">
	            <div>
	                <img src="${img.rsImgPath}" alt="Restaurant Image">
	            </div>
	        </c:forEach>
	    </div>

			
		<section class="container" style="max-width: 850px; max-height: 600px; margin-top: 50px;">
			<div style="font-size: 2rem; margin-top: -120px;" class="rsTitle fw-bolder">
				<strong>${restaurant.rsName}</strong>
			</div>
			<div class="title">
				<div class="title">
					<p class="rating">⭐<fmt:formatNumber value="${averageRating}" type="number" maxFractionDigits="1"/> </p>
				</div>
			</div>

			<!-- Modal Container -->	
			<div class="btn-group" role="group" aria-label="Basic mixed styles example" style="margin-top: 20px;">
			<button type="button" class="btn btn-danger" id="likeBtn"
					style="background-color: #ff7f00; border-color: white;">좋아요</button>
					<span id="likeIcon" style="display:none;">❤️</span>
			<button type="button" class="btn btn-danger" id="reviewWri"
					style="background-color: #ff7f00; border-color: white"
				   onclick="console.log('${pageContext.request.contextPath}/review/write?rsNo=${restaurant.rsNo}'); 
                  location.href='${pageContext.request.contextPath}/review/write?rsNo=${restaurant.rsNo}'">리뷰 작성</button>
			<button type="button" class="btn btn-danger" id="bookBtn"
					style="background-color: #ff7f00; border-color: white;">예약 등록 </button>
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
							<td colspan="8">주중 ${restaurant.rsOpenTime} ~ ${restaurant.rsCloseTime}</td>
						</tr>
						<tr>
							<th scope="row">휴무일</th>
							<td colspan="8">${restaurant.rsCloseDay}</td>
						</tr>
						<tr>
							<th scope="row">주소</th>
							<td colspan="8">${restaurant.rsPlaceRoad}</td>
						</tr>
						<tr>
							<th scope="row"></th>
							<td>
								<div id="btn2">지번</div>
							</td>
							<td colspan="5" id="stNum">
								<p class="stNump">${restaurant.rsPlaceLocal}</p>
							</td>
						</tr>
						<c:forEach var="menu" items="${menus}" varStatus = "status">
						<tr id="first">
							<c:choose>
							<c:when test="${status.first}">
							<th scope="row">메뉴</th>
							</c:when>
							<c:otherwise>
			                    <td></td>
			                </c:otherwise>
							</c:choose>
							<td colspan="4">${menu.rsFoodMenu}</td>
							<td colspan="4">${menu.rsFoodPrice}원</td>
						</tr>
						</c:forEach>
						<tr>
							<th scope="row">전화번호</th>
							<td colspan="8">${restaurant.rsPhone}</td>
						</tr>
	
						<tr>
							<th scope="row">미디어</th>
							<td colspan="8"><img src="${root}/resources/assets/img/youtube logo.png" alt=""
								id="mediaImage" /> ${restaurant.rsYoutube}</td>
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
	   <c:forEach var="review" items="${reviews}">
			<div class="card" style="margin-top: 20px; width: 850px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<div class="fw-bolder" style="font-size: 1.2rem"> ${review.memNick}</div>
					</div>
					<div class="col-9 text-end">
						<p>${review.revCreateDate}</p>
					</div>
				</div>
				<div class="col-1 text-center"
					style="margin-left: 10px; margin-top: -10px;">
					<p class="rating2">
						⭐<strong>${review.rsRevRating}</strong>
					</p>
				</div>
				<div class="card-body">
					<p class="card-text">${review.revContents}</p>
				</div>
			</div>
	
			
		</c:forEach>	
			<button type="button" class="btn btn-danger" id = "showMoreReviews"  style="background-color: #ff7f00;">더보기</button>		
		</section>

		<!-- Footer -->
        <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
	</body>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/flatpickr.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.9/l10n/ko.min.js"></script>
	<script>flatpickr.localize(flatpickr.l10ns.ko);</script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script>
	
	
	    
			 
		  
	$(document).ready(function () {
		$('.center').slick({
			  centerMode: true,
			  centerPadding: '60px',
			  slidesToShow: 3,
			  responsive: [
			    {
			      breakpoint: 768,
			      settings: {
			        arrows: false,
			        centerMode: true,
			        centerPadding: '40px',
			        slidesToShow: 3
			      }
			    },
			    {
			      breakpoint: 480,
			      settings: {
			        arrows: false,
			        centerMode: true,
			        centerPadding: '40px',
			        slidesToShow: 1
			      }
			    }
			  ]
			});
	  });
	
		document.getElementById("reviewWri").addEventListener("click", function() {
        	const isLoggedIn = '<%= session.getAttribute("memNo") != null %>';

        if (!isLoggedIn) {
            alert("회원이 아닙니다. 로그인이 필요합니다.");
            window.location.href = "/login"; // 로그인 페이지로 이동
        } else {
            window.location.href = "/review/write?${restaurant.rsNo}=<%= request.getParameter("rsNo") %>";
        }
    });
	
	
    
	
			
	</script>
	
	</html>