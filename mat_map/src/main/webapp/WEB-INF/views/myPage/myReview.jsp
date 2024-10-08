<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css">
<style>

body{
	width:100%;
	height:100vh;
}
.container {

	margin-right: 20px;
}

.card{
	margin-top: 16px;
	margin-left: 25px;
	max-width: 620px; 
	max-height: 400px; 
	margin-bottom: 20px;
}

.card-body {
	margin-top: -20px;
}

 .modal__background{
 display:none;
  position: fixed;
  top:0; left: 0; bottom: 0; right: 0;
 	background-color: rgba(0, 0, 0, 0.5);
 	border:none;
}
 

/* 모달 스타일 */
        .modal {
            display: none; /* 기본적으로 숨김 */
            position: fixed;
			  top: 0;
			  bottom: 0;
			  left: 0;
			  right: 0;
			  margin: auto;
 			background-color: rgba(0, 0, 0, 0);
            justify-content: center;
            align-items: center;
            box-shadow: none;
           
        }
        .modal-content {
            background-color: white;
            margin: 15% auto;
            padding: 20px;
            width: 400px;
            border-radius: 10px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .close {
            position: absolute;
            top: 10px;
            right: 15px;
            font-size: 30px;
            font-weight: bold;
            cursor: pointer;
        }
        .review-content {
            margin-bottom: 20px;
        }
        .review-content label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        .review-content textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .star-rating {
            text-align: center;
            margin-bottom: 20px;
        }
        .star-rating i {
            font-size: 30px;
            color: #ddd;
            cursor: pointer;
            transition: color 0.3s ease;
        }
        .star-rating i.active {
            color: gold;
        }
        .submit-btn {
            display: flex;
            justify-content: center;
        }
        .submit-btn button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .submit-btn button:hover {
            background-color: #45a049;
        }
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/myPage/myPage.jsp"%>


	<!-- Review Section -->
	<section class="container" style="max-width: 650px; float: left;">
		<div class="card">
			<div class="row" style="margin-top: 20px;">
				<div class="col-2 text-center">
					<h5>김철수</h5>
				</div>
				<div class="col-10 text-end">
					<button type="button" class="btn btn-primary" id="open-modal" 
						style="width: 60px; font-size: 15px; margin-left: 8px;">수정</button>
					<button type="button" class="btn btn-danger"
						style="width: 60px; font-size: 15px; margin-right: 16px;">삭제</button>
				</div>
			</div>
			<div class="row" style="margin-top: 0px;">
				<div class="col-2 text-center">
					<p class="rating2">
						⭐<strong>5</strong>
					</p>
				</div>
				<div class="col-10 text-end">
					<p style="margin-right: 16px;">2024-09-29 23:27:05</p>
				</div>
			</div>

			<div class="card-body">
				<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>


			</div>

		</div>

		<div class="card"
			style="max-width: 600px; max-height: 400px; margin-bottom: 20px;">
			<div class="row" style="margin-top: 20px;">
				<div class="col-2 text-center">
					<h5>김철수</h5>
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
		<div class="card" style="max-width: 600px; max-height: 400px;">
			<div class="row" style="margin-top: 20px;">
				<div class="col-2 text-center">
					<h5>김철수</h5>
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
			
	</section>
		<!-- 모달 -->
		<div class="modal__background">
		<div id="reviewModal" class="modal">
			<div class="modal-content">
				<span class="close" id="close-modal">&times;</span>
				<h3>리뷰 수정</h3>
	
				<div class="review-content">
					<label for="review-text">내용:</label>
					<textarea id="review-text"></textarea>
				</div>
	
				<div class="star-rating">
					<span>별점</span><br> <i class="star" data-value="1">&#9733;</i>
					<i class="star" data-value="2">&#9733;</i> <i class="star"
						data-value="3">&#9733;</i> <i class="star" data-value="4">&#9733;</i>
					<i class="star" data-value="5">&#9733;</i>
				</div>
	
				<div class="submit-btn">
					<button onclick="submitReview()">수정</button>
				</div>
			</div>
		</div>
		</div>
		
</body>		
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${root}/resources/js/bootstrapMap.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js">
        </script>
	<script>
	
		 $('#open-modal').click(function(){
			$('.modal__background').fadeIn();
	        $('.modal').show();   //id가 "followModal"인 모달창을 열어준다. 
	    });
		 
		  $('#close-modal').on('click', function() {
			  $('.modal__background').fadeOut();
	            $('.modal').fadeOut();
	        });
		  
		  // 모달 바깥 클릭 시 닫기
	      $(window).on('click', function(event) {
	         if ($(event.target).is('#reviewModal')) {
               $('.modal').fadeOut();	            }
	        });
		  
	      // 별점 선택 기능
	        let selectedRating = 3; // 초기 별점

	        $('.star').on('click', function() {
	            selectedRating = $(this).data('value');
	            updateStars(selectedRating);
	        });

	        function updateStars(rating) {
	            $('.star').each(function(index) {
	                if (index < rating) {
	                    $(this).addClass('active');
	                } else {
	                    $(this).removeClass('active');
	                }
	            });
	        }

	</script>


</html>