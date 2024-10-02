<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<title>Insert title here</title>
<style>
	.container { 
		margin-left: 30px;
	}
	
	.card-body{
		margin-top: -20px;
	}
	
	
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/MyPage.jsp"%>
	
	
		<!-- Review Section -->
		<section class="container" style="max-width: 620px; float: left;">
			<div class="card" style="margin-top: 20px; max-width: 620px; max-height: 400px; margin-bottom: 20px;">
				<div class="row" style="margin-top: 20px;">
					<div class="col-2 text-center">
						<h5>김철수</h5>
					</div>
					<div class="col-10 text-end">
						<button type="button" class="btn btn-primary" style="width:60px; font-size:15px; margin-left:8px; ">수정</button>
						<button type="button" class="btn btn-danger" style="width:60px;font-size:15px; margin-right:16px;">삭제</button>
					</div>
				</div>
				<div class="row" style="margin-top: 0px;">
					<div class="col-2 text-center">
						<p class="rating2">
						⭐<strong>5</strong>
					</p>
					</div>
					<div class="col-10 text-end">
						<p style="margin-right:16px;">2024-09-29 23:27:05</p>
					</div>
				</div>
				
				<div class="card-body">
					<p class="card-text">정말 맛있었습니다 다음에도 오려고요</p>
					<img src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="..."> <img
						src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="..."> <img
						src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="..."> <img
						src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="..."> <img
						src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="...">
						
						
				</div>
	
			</div>
	
			<div class="card" style=" max-width: 600px; max-height: 400px; margin-bottom: 20px;">
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
					<img src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="..."> <img
						src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="...">
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
					<img src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="..."> <img
						src="assets/img/dogany.jpg" class="rounded float-start"
						style="width: 100px; height: 100px;" alt="...">
				</div>
				</div>
				
				</section>
				
				 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js">
        </script>
				
</body>
</html>