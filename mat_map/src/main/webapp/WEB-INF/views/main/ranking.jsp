<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
		<jsp:include page="/WEB-INF/views/main/header.jsp"/>
    </head>
    <body>
        <!-- Navigator -->
		<jsp:include page="/WEB-INF/views/main/nav.jsp"/>
        <!-- Search -->
        <section class="search-container">
        	<div>
        		<input class="search-input shadow-search" type="text" placeholder="🔍 맛집 이름, 장소, 주소, 유튜브 채널명 등을 입력해주세요. ">
        		<img class="search-img" src="https://github.com/user-attachments/assets/56e17edd-45c3-4582-a6ce-f611333d03fe" alt="landing-img"/>
        	</div>
        </section>
        <!-- Contents Page -->
        <section class="contents-page">
        	<div class="contents-center">
        		<div class="keyword-region-container">
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">전국</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">서울</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">경기</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">인천</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">부산</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">대구</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">대전</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">광주</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">강원</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">충북</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">충남</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">경북</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">경남</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">전북</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">전남</a></span>
        			<span><a class="region btn btn-outline-dark mt-auto fw-bolder" href="#">제주</a></span>
        		</div>
        		<div class="card-contents-center px-4 px-lg-5">
	        		<div class="row row-cols-md-5 row-cols-xl-4">
	        			<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FFpnRPY9Rfdo%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">한우생돌곱창구이</div>
	                                    <div class="text">전라남도 장성군</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
		        		<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2F1TmG1Wwb7_U%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">옛날감자전</div>
	                                    <div class="text">서울시 용산구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FFO9k7oVOBcw%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">녹향구이</div>
	                                    <div class="text">대구 달서구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FoLfnToIRI5s%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">강남주먹고기</div>
	                                    <div class="text">서울시 강남구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2F5e2S4YdJ2IY%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">보보식당</div>
	                                    <div class="text">서울시 강남구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FhtNjA3YqbG0%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">소나무집</div>
	                                    <div class="text">경기도 하남시</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FDbkkQTWZDUA%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">한재골 가든</div>
	                                    <div class="text">전라남도 담양군</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FIaPvcG_zlSw%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">여수집국밥</div>
	                                    <div class="text">광주시 북구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FGKqA4DvWlEU%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">우촌숯불갈비</div>
	                                    <div class="text">서울시 성동구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
						<div class="col mb-5">
	                        <div class="card h-100 shadow">
	                            <img class="card-img-top" src="https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2FXRbZ93mHyp4%2Fmqdefault.jpg&w=640&q=75" alt="card-contents"/>
	                            <div class="card-body p-4">
	                                <div class="text-center">
	                                    <div class="sub-title fw-bolder">바스버거</div>
	                                    <div class="text">서울시 성동구</div>
	                                </div>
	                            </div>
	                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
	                            	<div class="pictogram-container text-center">
	                            		<div class="pictogram-img-row">
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/138/138533.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/447/447031.png" alt="pictogram"/>
	                            			<img class="pictogram-img" src="https://cdn-icons-png.flaticon.com/128/20/20176.png" alt="pictogram"/>
	                            		</div>
	                            		<div>
	                            			<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">관심</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">위치</a></span>
			                            	<span class="pictogram-text"><a class="btn btn-outline-dark mt-auto" href="#">소개</a></span>
	                            		</div>
	                            	</div>
	                            </div>
	                        </div>
						</div>
					</div>
				</div>
        	</div>
        </section>
        <!-- Pagination -->
        <section>
        	<ul class="pagination-container">
		        <li class="page-item">
		            <a class="page-link" href="#" aria-label="Previous">
		                <span aria-hidden="true">&laquo;</span>
		            </a>
		        </li>
		        <li class="page-item"><a class="page-link" href="#">1</a></li>
		        <li class="page-item"><a class="page-link" href="#">2</a></li>
		        <li class="page-item"><a class="page-link" href="#">3</a></li>
		        <li class="page-item"><a class="page-link" href="#">4</a></li>
		        <li class="page-item"><a class="page-link" href="#">5</a></li>
		        <li class="page-item">
		            <a class="page-link" href="#" aria-label="Next">
		                <span aria-hidden="true">&raquo;</span>
		            </a>
		        </li>
        	</ul>
        </section>
        <!-- Footer -->
        <jsp:include page="/WEB-INF/views/main/footer.jsp"/>
    </body>
</html>