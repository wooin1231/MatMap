<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    	<jsp:include page="header.jsp"/>
   	    <link href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css" rel="stylesheet">
    </head>
    <body>
        <!-- Navigator -->
        <jsp:include page="nav.jsp"/>
        <!-- Contents Page -->
		<section class="book-page shadow">
			<div class="book-page-title fw-bolder">🔔 예약 등록</div>
			
			<br/>
			
			<div class="book-form-items">
				<div>
					<div class="book-form-title fw-bolder">📌 인원 선택</div>
					<div class="form-people">
						<div class="placeholder-people form-control">예약 인원을 선택하세요.</div>
						<span id="arrow-people" class="arrow fw-bolder">&#8744;</span>
						<ul class="options-people">
							<li data-value="1">1명</li>
							<li data-value="2">2명</li>
				            <li data-value="3">3명</li>
				            <li data-value="4">4명</li>
				            <li data-value="5">5명</li>
				            <li data-value="6">6명</li>
				            <li data-value="7">7명</li>
				            <li data-value="8">8명</li>
				            <li data-value="8">8명 이상(별도 문의)</li>
						</ul>
					</div>
				</div>
				
				<br/>
				
				<div>
					<div class="book-form-title fw-bolder">📌 날짜 선택</div>
					<div class="form-calendar">
						<div class="placeholder-calendar form-control">예약 날짜를 선택하세요.</div>
						<div id="calendar-container">
						    <input type="text" id="calendar"/>
						</div>
					</div>
				</div>
				
				<br/>
				
				<div>
					<div class="book-form-title fw-bolder">📌 시간 선택</div>
					<div class="form-time">
						<div class="placeholder-time form-control">예약 시간을 선택하세요.</div>
						<span id="arrow-time" class="arrow fw-bolder">&#8744;</span>
						<ul class="options-time">
							<li data-value="">10:00</li>
							<li data-value="">10:30</li>
							<li data-value="">11:00</li>
							<li data-value="">11:30</li>
							<li data-value="">12:00</li>
							<li data-value="">12:30</li>
							<li data-value="">13:00</li>
							<li data-value="">13:30</li>
							<li data-value="">14:00</li>
							<li data-value="">14:30</li>
							<li data-value="">15:00</li>
							<li data-value="">15:30</li>
							<li data-value="">16:00</li>
							<li data-value="">16:30</li>
							<li data-value="">17:00</li>
							<li data-value="">17:30</li>
							<li data-value="">18:00</li>
							<li data-value="">18:30</li>
							<li data-value="">19:00</li>
							<li data-value="">19:30</li>
							<li data-value="">20:00</li>
							<li data-value="">20:30</li>
							<li data-value="">21:00</li>
							<li data-value="">21:30</li>
							<li data-value="">22:00</li>
							<li data-value="">22:30</li>
							<li data-value="">23:00</li>
							<li data-value="">23:30</li>
							<li data-value="">24:00</li>
						</ul>
					</div>
				</div>
			</div>
			
			<br/>
			
			<div class="book-button-items">
				<div class="book-button-seat">
					<span class="fw-bolder" style="margin-right: 0.5rem;">잔여 좌석</span>
					<span class="fw-bolder" style="margin-right: 0.5rem;">:</span>
					<span class="fw-bolder">10석</span>
				</div>
				<div class="book-button-basic">
					<button class="btn btn-outline-dark mt-auto fw-bolder">등록</button>
					<button class="btn btn-outline-dark mt-auto fw-bolder">취소</button>
				</div>
			</div>
		</section>
        <!-- Footer -->
        <jsp:include page="footer.jsp"/>
    </body>
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
	<script>
		/* togglePeopleForm 함수 정의 */
		
		// 인원 선택
		function togglePeopleForm() {
			const optionPeople = document.querySelector('.options-people');
			const arrowPeople = document.getElementById('arrow-people');
			
			// show에 정의된 기능 ON/OFF
			optionPeople.classList.toggle('show');
			arrowPeople.classList.toggle('rotation');
		}
		
		// 날짜 선택
		function toggleCalendarForm() {
			const optionCalendar = document.getElementById('calendar');
			
			// show에 정의된 기능 ON/OFF
			optionCalendar.classList.toggle('show');
		}
		
		// 시간 선택
		function toggleTimeForm() {
			const optionTime = document.querySelector('.options-time');
			const arrowTime = document.getElementById('arrow-time');
			
			// show에 정의된 기능 ON/OFF
			optionTime.classList.toggle('show');
			arrowTime.classList.toggle('rotation');
		}
		
		
		/* 폼 클릭 시 이벤트 설정 */
		
		// 인원 선택
		document.querySelector('.placeholder-people').addEventListener('click', togglePeopleForm);
		document.getElementById('arrow-people').addEventListener('click', togglePeopleForm);
		document.querySelectorAll('.options-people li').forEach(optionPeople => {
			optionPeople.addEventListener('click', function() {
				const placeholderPeople = document.querySelector('.placeholder-people');
				// placeholder-people의 텍스트를 this.textContent로 설정
				// this = 클릭 이벤트가 발생한 options-people의 li 요소
				placeholderPeople.textContent = this.textContent;
				
				// 클릭 동작을 마친 폼 및 화살표 원위치
				document.querySelector('.options-people').classList.remove('show');
				document.getElementById('arrow-people').classList.remove('rotation');
			});
		});
		
		// 시간 선택
		document.querySelector('.placeholder-time').addEventListener('click', toggleTimeForm);
		document.getElementById('arrow-time').addEventListener('click', toggleTimeForm);
		document.querySelectorAll('.options-time li').forEach(optionTime => {
			optionTime.addEventListener('click', function() {
				const placeholderTime = document.querySelector('.placeholder-time');
				// placeholder-time의 텍스트를 this.textContent로 설정
				// this = 클릭 이벤트가 발생한 options-people의 li 요소
				placeholderTime.textContent = this.textContent;
				
				// 클릭 동작을 마친 폼 및 화살표 원위치
				document.querySelector('.options-time').classList.remove('show');
				document.getElementById('arrow-time').classList.remove('rotation');
			});
		});
		
		/* 폼 외부 영역 클릭 시 이벤트 설정 */
		
		// 인원 선택
		document.addEventListener('click', function(event) {
			const optionPeople = document.querySelector('.options-people');
			const placeholderPeople = document.querySelector('.placeholder-people');
			const arrowPeople = document.getElementById('arrow-people')
			
			// 클릭된 위치가 폼이 아닐 경우 가정
			if (!optionPeople.contains(event.target) &&
				!placeholderPeople.contains(event.target) &&
				!arrowPeople.contains(event.target)) {
				
				optionPeople.classList.remove('show');
				arrowPeople.classList.remove('rotation');
			}
		});
		
		// 날짜 선택
		document.addEventListener('click', function(event) {
			const optionCalendar = document.getElementById('calendar');
			const placeholderCalendar = document.querySelector('.placeholder-calendar');
			
			// 클릭된 위치가 폼이 아닐 경우 가정
			if (!optionCalendar.contains(event.target) &&
				!placeholderCalendar.contains(event.target)) {
				optionCalendar.classList.remove('show');
			}
		});
		
		// 시간 선택
		document.addEventListener('click', function(event) {
			const optionTime = document.querySelector('.options-time');
			const placeholderTime = document.querySelector('.placeholder-time');
			const arrowTime = document.getElementById('arrow-time')
			
			// 클릭된 위치가 폼이 아닐 경우 가정
			if (!optionTime.contains(event.target) &&
				!placeholderTime.contains(event.target) &&
				!arrowTime.contains(event.target)) {
				
				optionTime.classList.remove('show');
				arrowTime.classList.remove('rotation');
			}
		});
	
		
		/* '날짜 선택' 달력 설정 */
		flatpickr("#calendar", {
			locale: "ko",
			minDate: "today",
			dateFormat: "Y-m-d",
	        defaultDate: "today",
	        inline: true,
	        appendTo: document.getElementById('calendar-container'),
        	onChange: function(selectedDates, dateStr, instance) {
                // 선택된 날짜가 dateStr에 저장되며 이를 placeholder-calendar에 적용
                const placeholderCalendar = document.querySelector('.placeholder-calendar');
                placeholderCalendar.textContent = dateStr;
            }
	    });		
	</script>
</html>