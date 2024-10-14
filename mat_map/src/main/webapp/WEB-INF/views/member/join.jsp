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
        .container {
            position: relative;
            width: 573px;
            height: auto;
            margin: auto;
            background: #FFFFFF;
            padding-top: 80px;
            padding-left: 20px;
            padding-right: 20px;
        }
        .title-join {
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
        .form-field input, .submit {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin: 0 auto;
        }
        .submit {
            background-color: #FF8C00;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 40px;
        }
        .submit:hover {
            background-color: #e07b00;
        }
    </style>
</head>
    
<body>
    <!-- Navigator -->
    <jsp:include page="/WEB-INF/views/main/nav.jsp"/>
    <!-- Contents Page -->
    <section class="container" style="margin-bottom: 3%;">
        <div class="logo"></div>
        <div class="title-join fw-bolder">회원가입</div>
        <form action="${root}/register" method="post">
            <div class="form-field">
                <label for="username">아이디</label>
                <input type="text" id="memId" name="memId" required>
            </div>
            <div class="form-field">
                <label for="account-name">사용자 이름</label>
                <input type="text" id="memName" name="memName" required>
            </div>
            <div class="form-field">
                <label for="account-name">사용자 활동명</label>
                <input type="text" id="memNick" name="memNick" required>
            </div>
            <div class="form-field">
                <label for="password">비밀번호</label>
                <input type="password" id="memPwd" name="memPwd" required>
            </div>
            <div class="form-field">
                <label for="confirm-password">비밀번호 확인</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
                <small id="passwordError" style="color: red;"></small><br>
            </div>
            <div class="form-field">
                <label for="phone">휴대폰 번호</label>
                <input type="text" id="memPhone" name="memPhone" required>
            </div>
            <div class="form-field">
                <label for="email">이메일</label>
                <input type="email" id="memEmail" name="memEmail" required>
            </div>
            <button type="submit" class="submit fw-bolder">회원가입</button> 
        </form>
    </section>
    <!-- Footer -->
    <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</body>
</html>
