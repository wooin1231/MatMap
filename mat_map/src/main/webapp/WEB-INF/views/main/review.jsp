<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<jsp:include page="header.jsp"/>
    </head>
    <body>
        <!-- Navigator -->
		<jsp:include page="nav.jsp"/>
        <!-- Contents Page -->
		<section class="review-page shadow">
			<div class="review-page-title fw-bolder">🔔 리뷰 등록</div>
			<br/>
			<div class="review-form-items">
				<div>
					<div class="review-title fw-bolder">📌 제목</div>
					<input type="text" class="form-control review-title-input" placeholder="제목을 입력하세요."/>
				</div>
				
				<br/>
				
				<div>
					<div class="review-contents fw-bolder">📌 내용</div>
					<textarea class="form-control review-contents-input" placeholder="내용을 입력하세요."></textarea>
				</div>
			</div>
			<div class="rating-container">
				<div class="rating-title">평점 :</div>
			    <div class="stars">
			        <span class="star">⭐</span>
			        <span class="star">⭐</span>
			        <span class="star">⭐</span>
			        <span class="star">⭐</span>
			        <span class="half-star">⭐</span>
			    </div>
			</div>
			<div class="review-button-items">
				<div class="review-button-img">
					<input type="file" id="review-img" class="none" multiple accept="image/*">
					<label class="btn btn-outline-dark mt-auto button-img fw-bolder" for="review-img">이미지 선택</label>
				</div>
				<div class="review-button-basic">
					<button class="btn btn-outline-dark mt-auto fw-bolder">등록</button>
					<button class="btn btn-outline-dark mt-auto fw-bolder">취소</button>
				</div>
			</div>
		</section>
        <!-- Footer -->
        <jsp:include page="footer.jsp"/>
    </body>
</html>