<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	        .login-container {
	            position: relative;
	            width: 573px;
	            height: 70vh;
	            margin: auto;
	            background: #FFFFFF;
	            padding-top: 80px;
	            padding-left: 20px;
	            padding-right: 20px;
	        }
	        .title-login {
	            font-size: 36px;
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
	            width: 100%;
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 4px;
	            box-sizing: border-box;
	            margin: 0 auto;
	        }
	        .button {
	            width: 100%;
	            padding: 10px;
	            background-color: #FF8C00;
	            color: white;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            font-size: 16px;
	            margin-top: 40px;
	            box-sizing: border-box;
	            display: block;
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
        <section class="login-container" style="margin-bottom: 3%;">
		    <div class="title-login fw-bolder">로그인</div>
			<form action="${pageContext.request.contextPath}/login" method="post">
			    <div class="form-field">
			        <label for="login-username">아이디</label>
			        <input type="text" id="memId" name="memId" required>
			    </div>
			    <div class="form-field">
			        <label for="login-password">비밀번호</label>
			        <input type="password" id="memPwd" name="memPwd" required>
			    </div>
			    <button type="submit" class="button fw-bolder">로그인</button>
			</form>		    
		</section>
        <!-- Footer -->
        <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
    </body>
</html>
