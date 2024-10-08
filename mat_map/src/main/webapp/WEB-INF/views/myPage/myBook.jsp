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
<style>
	.container{
		margin-left: 30px;
	}
	
	
	
	.card-body{
		margin-top: 10px;
		text-align: center;
	}
	
	.card-title{
		font-weight: bold;
	}
	
	.card-text{
	}
	
	.card-text2{
		margin-top: -10px;
		text-align: left;
		font-size: 14px;
	}
	
	.card-text3{
		margin-top: -10px;
	}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/myPage/myPage.jsp"%>

	<section class="container" style="max-width: 620px; float: left;">
		<div class="row row-cols-1 row-cols-md-3 g-4" style="margin-top: 20px;margin-left: 20px; width: 650px; ">
			
			<div class="col">
				<div class="card"  style = "height:260px;">
					<img src= "${root}/resources/assets/img/rsimg/dogany.jpg" class="card-img-top" alt="..." style="width: 190px; height: 100px;">
					<div class="card-body">
						<h5 class="card-title">대성집 도가니탕</h5>
						<p class="card-text">서울특별시 종로구</p>
						<p class="card-text2">예약 날짜:<span>  2024-10-23</span></p>
						<p class="card-text3">2인</p>
					</div>
				</div>
			</div>
			
		</div>
	</section>
</body>
</html>