<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: #FFFFFF;
        }

        .container {
            width: 573px;  
            background: #FFFFFF;
            box-shadow: 0px 0.593692px 0px rgba(0, 0, 0, 0.15);
            padding-top: 40px; 
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
        	margin-top:20px;
            margin-bottom: 15px;
        }
        .form-field label {
            display: block;
            margin-bottom: 5px;
            margin-left: 10px;
            color: #666;
        }
        .form-field div {
            width: calc(100% - 20px); 
            padding: 10px; 
            border: 1px solid #ccc;
            border-radius: 4px;
            margin: 0 auto; 
            background-color: #f9f9f9; 
            cursor: default; 
        }
        
        #updateB{
        	
        }
    </style>
</head>
<body>
<!-- Navigator-->
	
	
	<%@ include file="/WEB-INF/views/myPage/myPage.jsp"%>
<div class="container" style="max-width: 650px; float: left;">

    <div class="logo"></div> 

    <h2 style="color: #ff7f00; margin-left:10px; ">회원정보</h2> 
	
    <div class="form-field">
        <label for="account-name">계정명 (User Account Name)</label>
        <div id="account-name">[계정명 데이터]</div> 
    </div>
    <div class="form-field">
        <label for="phone">휴대폰 번호 (Phone Number)</label>
        <div id="phone">[휴대폰 번호 데이터]</div> 
    </div>
    <div class="form-field">
        <label for="email">이메일 (Email)</label>
        <div id="email">[이메일 데이터]</div> 
    </div>
    
    <button type="button" class="btn btn-success" id="updateB" style="margin: auto;
    display: block; " onclick="location.href='/myUpdate'">수정하기</button>
</div>

</body>
</html>
