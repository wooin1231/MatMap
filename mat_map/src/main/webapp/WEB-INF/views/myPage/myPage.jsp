<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>	
		
		.MyPageTitle{
			width:600px;
   			margin-top:200px;
   			margin-left:440px;
   			border-bottom: 6px solid #ff7f00;
   		}
		
   		#leftNav{
   			width:300px;
   			background-color: white;
   			border-right:2px solid #ff7f00;
   			height:350px;
   			margin-top: 30px;
   			margin-left:100px;
   			float:left;
   		}
   		
   		
   		
   		#home{
   			height:10px ;
   			line-height:30px;
   			display:block ;
   			padding:0 20px;
   			font-size:15px ;
   			color:#555 ;
   			text-decoration: none;
   			margin-top: 0px;
   			margin-left:30px ;
   			text-align: center ;
   			margin-bottom: -10px;
   		}
   		
   		#home:hover{
   			color:#64D498;
   			}
   		
   		#myReview{
   			height:10px ;
   			line-height:30px;
   			display:block ;
   			padding:0 20px;
   			font-size:15px ;
   			color:#555 ;
   			text-decoration: none;
   			margin-top: 30px;
   			margin-left:30px ;
   			margin-bottom: -10px;
   			text-align: center ;
   		}
   		
   		#myReview:hover{
   			color:#64D498;
   			}
   			
   		#like{
   			height:10px ;
   			line-height:30px;
   			display:block ;
   			padding:0 20px;
   			font-size:15px ;
   			color:#555 ;
   			text-decoration: none;
   			margin-top: 30px;
   			margin-left:30px ;
   			margin-bottom: -10px;
   			text-align: center ;
   		}
   		
   		#like:hover{
   			color:#64D498;
   			}
   	
   		#book{
   			height:10px ;
   			line-height:30px;
   			display:block ;
   			padding:0 20px;
   			font-size:15px ;
   			color:#555 ;
   			text-decoration: none;
   			margin-top: 30px;
   			margin-left:30px ;
   			margin-bottom: -10px;
   			text-align: center ;
   		}
   		
   		#book:hover{
   			color:#64D498;
   			}
   		
   		
   		#middleLine  {
   			margin-top: 50px;
   			margin-left:50px;
   			margin-right:30px;
   			border-style:solid;
   			border-color:#ff7f00;
   			border-width: 1px;
   			width:190px;
   			
   		}
   		
   		
   		.menu{
   			 list-style:none;
   			 
   		}

   		
   
  	
</style>
<head>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/main/header.jsp"/>
</head>
<body>

	<!-- Navigator-->
	<jsp:include page="/WEB-INF/views/main/nav.jsp" />
	<!-- Search -->
	<section class="search-container">
		<div>
			<input class="search-input shadow-search" type="text"
				placeholder="🔍 맛집 이름, 장소, 주소, 유튜브 채널명 등을 입력해주세요. "> <img
				class="search-img"
				src="https://github.com/user-attachments/assets/56e17edd-45c3-4582-a6ce-f611333d03fe"
				alt="landing-img" />
		</div>
	</section>

	<table class="MyPageTitle">
				<tr id="MyPageTitle">
					<th scope="row"></th>
						<td><h2>MyPage</h2></td>
				</tr>
			</table>	
	 	
		
		<div id="leftNav">
		<ul class="menu">
			<li><a onclick="location.href='/myInfo'" id="home" style="font-weight:bold">회원정보</a></li>
			<div id="middleLine"></div>
			<li><a onclick="location.href='/myReview'" id="myReview"  style="font-weight:bold">리뷰</a></li>
			<div id="middleLine"></div>
			<li><a onclick="location.href='/myLike'" id="like"  style="font-weight:bold">좋아요</a></li>
			<div id="middleLine"></div>
			<li><a onclick="location.href='/myBook'" id="book"  style="font-weight:bold">예약 내역</a></li>
		</ul>

	</div>	
	
			
		
</body>
 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js">
        </script>
</html>

