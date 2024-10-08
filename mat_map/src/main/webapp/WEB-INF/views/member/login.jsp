<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<jsp:include page="/WEB-INF/views/main/header.jsp"/>
		<style>
	        body {
	            margin: 0;
	            padding: 0;
	            background: #FFFFFF;
	        }
	        .container {
	            position: relative;
	            width: 573px;  /* Custom width */
	            height: 615px; /* Custom height */
	            margin: auto;
	            background: #FFFFFF;
	            box-shadow: 0px 0.593692px 0px rgba(0, 0, 0, 0.15);
	        }
	        .logo {
	            position: absolute;
	            width: 480px;  /* Adjusted for better visibility */
	            height: 50px; /* Adjusted for better visibility */
	            background: url('/mnt/data/image.png') no-repeat center;
	            background-size: contain;
	            top: 0; /* Adjust top position for spacing */
	            left: 50%; /* Center the logo horizontally */
	            transform: translateX(-50%); /* Center the logo */
	            z-index: 10; /* Make sure logo appears above other elements */
	        }
	        h1 {
	            margin: 100px 0 20px 0; /* 로고와의 간격 */
	            font-size: 36px;
	            font-weight: 600;
	            color: #FF7400;
	            text-align: center;
	        }
	        .form-field {
	            margin-bottom: 15px;
	        }
	        .form-field label {
	            display: block;
	            margin-bottom: 5px;
	            color: #666;
	        }
	        .form-field input {
	            width: calc(100% - 20px); /* Adjusted width to match custom size */
	            padding: 10px; /* Adjusted height */
	            border: 1px solid #ccc;
	            border-radius: 4px;
	            margin: 0 auto; /* Center the input fields */
	        }
	        .button {
	            background-color: #FF8C00;
	            color: white;
	            padding: 10px;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            width: 100%;
	            font-size: 16px;
	            margin-top: 10px;
	        }
	        .button:hover {
	            background-color: #e07b00;
	        }
	    </style>
    </head>
    <body>
        <!-- Navigator -->
		<jsp:include page="/WEB-INF/views/main/nav.jsp"/>
        <!-- Contents Page -->
        <section class="login-container">
		    <div class="logo"></div> <!-- Logo at the top -->
		
		    <h1>로그인</h1>
		
		    <div class="form-field">
		        <label for="login-username">아이디 (Username)</label>
		        <input type="text" id="login-username" name="login-username" required>
		    </div>
		    <div class="form-field">
		        <label for="login-password">비밀번호 (Password)</label>
		        <input type="password" id="login-password" name="login-password" required>
		    </div>
		    <div class="checkbox">
		        <input type="checkbox" id="stay-logged-in" name="stay-logged-in">
		        <label for="stay-logged-in">로그인 상태 유지 (Stay logged in)</label>
		    </div>
		    <button class="button">로그인 (Log In)</button>
		    <div class="links">
		        <a href="join">회원가입 하기 (Register)</a>
		    </div>
		</section>
        <!-- Footer -->
        <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
    </body>
</html>