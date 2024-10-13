<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- JSTL 태그 라이브러리 선언 -->
<!DOCTYPE html>
<html>
    <body>
        <nav class="nav-container">
            <span class="nav-left">
            	<span><img class="nav-logo" src="https://github.com/user-attachments/assets/c565326b-cf09-48c4-9d9f-6225e3e75344" alt="nav-logo"/></span>
                <a class="title-nav-bar fw-bolder" href="#">미정(<span class="chinese" style="font-weight:100;">味停</span>)</a>
            </span>
            <span class="nav-right">
                <a class="menu-nav-bar fw-bolder" href="/home">홈</a>                
                <a class="menu-nav-bar fw-bolder" href="/ranking">랭킹</a>                
                <a class="menu-nav-bar fw-bolder" href="/map">맛집 지도</a>                
          <!-- 로그인 여부에 따라 메뉴가 변경됨 -->
                <c:choose>
                    <c:when test="${sessionScope.user != null}">
                        <!-- 로그인된 상태 -->
                        <a class="menu-nav-bar fw-bolder" href="/mypage">마이페이지</a>
                        <a class="menu-nav-bar fw-bolder" href="/logout">로그아웃</a>
                    </c:when>
                    <c:otherwise>
                        <!-- 비로그인 상태 -->
                        <a class="menu-nav-bar fw-bolder" href="/login">로그인</a>
                        <a class="menu-nav-bar fw-bolder" href="/join">회원가입</a>
                    </c:otherwise>
                </c:choose>
                </span>
        </nav>
    </body>
</html>