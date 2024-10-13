<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<style>
	body{
		
	}
</style>

    <head>
    </head>
    <body>
        <!-- Navigator -->
        <!-- Contents Page -->
        <c:if test="${not empty errorMessage}">
        			<div style="color:red;">${errorMessage}</div>
    		</c:if>
         <form action="${pageContext.request.contextPath}/review/insert" method="post">
          <input type="hidden" name="rsNo" value="${rsNo}" />
		<section class="review-page shadow" style="margin: 0 auto; margin-left: 20px;">
			<div class="review-page-title fw-bolder">🔔 리뷰 등록</div>
			<br/>
			
			 
			<div class="review-form-items">
				<br/>
				
				<div>
					<div class="review-contents fw-bolder">📌 내용</div>
					<textarea name="revContent" id="revContent"  class="form-control review-contents-input" placeholder="내용을 입력하세요."></textarea>
				</div>
			</div>
			<div class="rating-container">
			  <label for="rating">평점:</label>
           		 <input type="number" name="rsRevrating" min="1" max="5" required />
			</div>
			<div class="review-button-items">
				<div class="review-button-img">
					
				</div>
				<div class="review-button-basic">
					<button type = "submit" class="btn btn-outline-dark mt-auto fw-bolder">등록</button>
					<button onclick="history.back()" class="btn btn-outline-dark mt-auto fw-bolder">취소</button>
				</div>
			</div>
		</section>
		</form>
        <!-- Footer -->
    </body>
</html>