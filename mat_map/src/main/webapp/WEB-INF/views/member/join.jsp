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
	            width: 573px; 
	            height: auto;  
	            margin: auto;
	            background: #FFFFFF;
	            box-shadow: 0px 0.593692px 0px rgba(0, 0, 0, 0.15);
	            padding-top: 80px; 
	        }
	
	        .logo {
	            position: absolute;
	            width: 250px;  
	            height: 100px; 
	            background: url('your_logo_image_path') no-repeat center; 
	            background-size: contain;
	            top: 0; 
	            left: 50%; 
	            transform: translateX(-50%); 
	            z-index: 10; 
	        }
	
	        h1 {
	            font-size: 36px;
	            font-weight: 600;
	            color: #FF7400;
	            text-align: center;
	            margin-bottom: 20px; 
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
	            width: calc(100% - 20px); 
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 4px;
	            margin: 0 auto; 
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
        <section class="container">
		    <div class="logo"></div> <!-- Logo at the top -->
		
		    <h1>회원가입</h1> <!-- Title for registration -->
		
		    <div class="form-field">
		        <label for="username">아이디 (Username)</label>
		        <input type="text" id="username" name="username" required>
		    </div>
		    <div class="form-field">
		        <label for="account-name">사용자 계정명 (User Account Name)</label>
		        <input type="text" id="account-name" name="account-name" required>
		    </div>
		    <div class="form-field">
		        <label for="password">비밀번호 (Password)</label>
		        <input type="password" id="password" name="password" required>
		    </div>
		    <div class="form-field">
		        <label for="confirm-password">비밀번호 확인 (Confirm Password)</label>
		        <input type="password" id="confirm-password" name="confirm-password" required>
		    </div>
		    <div class="form-field">
		        <label for="phone">휴대폰 번호 (Phone Number)</label>
		        <input type="text" id="phone" name="phone" required>
		    </div>
		    <div class="form-field">
		        <label for="email">이메일 (Email)</label>
		        <input type="email" id="email" name="email" required>
		    </div>
		    <button class="button">가입하기 (Register)</button> 
		</section>
        <!-- Footer -->
        <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
    </body>
</html>