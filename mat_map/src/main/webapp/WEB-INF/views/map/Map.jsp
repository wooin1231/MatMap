<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<c:set var="root" value="${pageContext.request.contextPath}" />
<style>


#map {
	width: 1000px;
	height: 800px;
	margin-left: auto;
	margin-right: auto;
	margin-top: -100px;
}

.text-center {
	margin: 0 auto;
}

#bjongWon {
	margin-left: 20px;
}

#chJaRoad {
	margin-left: 20px;
}

#HjooYeop {
	margin-left: 20px;
}

#scwi {
	margin-left: 20px;
}

.modal-body {
	text-align: center;
}

#detailButton {
	margin: auto;
	display: block;
}


        /* InfoWindow 내부 스타일 */
        .info-window {
            display: flex;
            width: 250px;
            font-family: Arial, sans-serif;
        }

        .info-window img {
            width: 80px;
            height: 80px;
            border-radius: 5px;
            margin-right: 10px;
        }

        .info-window .content {
            display: flex;
            flex-direction: column;
        }

        .info-window h3 {
            margin: 0;
            font-size: 16px;
        }

        .info-window p {
            margin: 5px 0;
            font-size: 12px;
            color: gray;
        }

        .info-window .price {
            font-weight: bold;
            margin-top: auto;
            font-size: 14px;
        }
</style>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Agency - Start Bootstrap Theme</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link rel="stylesheet" href="${root}/resources/css/map.css">
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>

</head>
<body >
	<!-- Navigation-->
	<%@ include file="/WEB-INF/views/main/header.jsp"%>
	<!-- About-->
	<section class="page-section" id="celMap">
		<div class="container">
			<div class="text-center">
				<input type="button" value="성시경" id="ssiKyung"
					onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="백종원" id="bjongWon" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="최자로드" id="chJaRoad" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="현주엽" id="HjooYeop" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg"> <input
					type="button" value="홍석천이원일" id="scwi" onclick="readValue();"
					class="btn btn-outline-dark rounded-pill btn-lg">
			</div>

		</div>
	</section>
	<section class="page-section" id="celMap">
		<div class="container">
			<div id="map">
				
			</div>

		</div>
	</section>
	
		
		
	<!-- Button trigger modal -->


	<!-- Modal -->

	<!-- Team-->

	<!-- Clients-->

	<!-- Contact-->

	<!-- Submit success message-->
	<!---->
	<!-- This is what your users will see when the form-->
	<!-- has successfully submitted-->

	<!-- Submit error message-->
	<!---->
	<!-- This is what your users will see when there is-->
	<!-- an error submitting the form-->

	</form>
	</div>
	</section>
	<!-- Footer-->

	<!-- Portfolio Modals-->
	<!-- Portfolio item 1 modal popup-->

	<!-- Portfolio item 2 modal popup-->

	<!-- Portfolio item 3 modal popup-->

	<!-- Portfolio item 4 modal popup-->

	<!-- Portfolio item 5 modal popup-->

	<!-- Portfolio item 6 modal popup-->

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js">
        </script>
	<!--  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9b14f09a103775911723758f2b3c62ff"></script>
        <script type="text/javascript">
	
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(36.35218384, 127.4170933), //지도의 중심좌표.
		level: 13 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	</script> -->
	<script>
/*   function myMap(){
      var mapOptions = { 
            center:new google.maps.LatLng(36.68914, 127.2137),
            zoom:7
      };
 
      var map = new google.maps.Map( 
             document.getElementById("googleMap") 
            , mapOptions );
   }  */
  
  window.initMap = function () {
	   
	   const map = new google.maps.Map(document.getElementById("map"), {
	    center: { lat: 36.68914, lng: 127.2137 },
	    zoom: 7,
	    scrollwheel: true 
	   });
	  
	  const locations = [
		    { label: "C", title: "대성집 도가니탕", description: "서울특별시 종로구",image:"https://www.mukbangmap.com/_next/image?url=https%3A%2F%2Fi3.ytimg.com%2Fvi%2Fwu1fOmsPEr8%2Fmqdefault.jpg&w=640&q=75",lat: 37.57271, lng: 126.9609 },
		    { label: "G", title: "어머니 대성집 해장국", lat: 37.57746, lng: 127.0286 },
		    { label: "D", title: "약수 순대국", lat: 37.5532076, lng: 127.007702 },
		    { label: "I", title: "IFC몰", lat: 37.5251644, lng: 127.0106781 },
		    { label: "L", title: "롯데월드타워몰", lat: 37.5125585, lng: 127.1025353 },
		    { label: "M", title: "명동지하상가", lat: 37.563692, lng: 126.9822107 },
		    { label: "T", title: "타임스퀘어", lat: 37.5173108, lng: 126.9033793 },
		  ];
	  
	
	  
	  var myIcon = new google.maps.MarkerImage("${root}/resources/assets/img/logo/matMapFinal.png", null, null, null, new google.maps.Size(40,50));
	  
	  const bounds = new google.maps.LatLngBounds();
	  const modal = document.querySelector('.modal');
	  const modaldialog = document.querySelector('.modal-dialog');
	  
	  locations.forEach(({ label, title, description, image , lat, lng }) => {
		    const marker = new google.maps.Marker({
		      position: { lat, lng },
		      label,
		      map,
		      icon: myIcon,
		      title: locations.title,
		      image: locations.image
		    });
		    bounds.extend(marker.position);
		    
		 

	        // InfoWindow 내용
	     	 var contentString = 
	            '<div class="info-window">' + 
	                '<img src="${locations.image}" alt="${locations.title}">'+
	                '<div class="content">'+
	                   "<h5>"+ '${locations.title}' +"</h5>"+
	                    "<p>" + '${locations.description}'  + "</p>"+
	                    '<button type="button" class="btn btn-light">상세보기</button>'+
	                '</div>'+
	            '</div>'
	        ; 
	            
	          
	            
	        var infoWindow = new google.maps.InfoWindow({
	            content: contentString
	        });

		    
		    marker.addListener("click", function() {
				  /* map.panTo(marker.position);
				  map.setZoom(8); */
		    	infoWindow.open(map, marker);
		    	map.panTo(marker.position);
				  map.setZoom(8);
				  alert("왜 안담기나"+ contentString);
			    });
			    });
		    
		   
	  
	
	  }; 
	  	
	  
	
	
	  
	  	/* locations.forEach(({ label, name, lat, lng }) => {
		    const marker = new google.maps.Marker({
		      position: { lat, lng },
		      label,
		      map,
		    });
		  }); */


   
</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCVAKmqq4jYs2WoHxXe2Qflj7hP8rgZc6Q&callback=initMap"></script>
	<script>
/* const locations = [
    { label: "d" name: "대성집 도가니탕", lat: 37.57271 , lng: 126.9609 },
    { label: "m" name: "어머니 대성집 해장국", lat: 37.5774469, lng: 27.0285534},
    { label : "s" name: "약수 순대국", lat: 37.5532076 , lng: , 127.0106781 },
];

const bounds = new google.maps.LatLngBounds();
const infoWindow = new google.maps.InfoWindow();

malls.forEach(({ label, name, lat, lng }) => {
    const marker = new google.maps.Marker({
      position: { lat, lng },
      label,
      map
    });
    bounds.extend(marker.position);
    
    marker.addListener("click", () => {
        map.panTo(marker.position);
        infoWindow.setContent(name);
        infoWindow.open({
          anchor: marker,
          map
        });
      });
    });

    map.fitBounds(bounds); */
    

</script>
</body>
</html>
