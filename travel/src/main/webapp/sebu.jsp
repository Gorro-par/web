<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style-sebu.css">

</head>
<body>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1c79d8a3ec2fbe7e43e57ac4b9d9359e"></script>

		<div class="head">
	        <a href="#head" class="logo">logo</a>
	        <div class="search">
	            <input type="input_text">
	            <button><img src="./img/searchr.png" alt="searchr.png"></button>
	        </div>
	        <div class="info-form">
	        <a href="#!" class="member-info">회원정보 수정</a>
	        <a href="#!" class="login">로그아웃</a>
	        </div>
	    </div>
        <div class="wrap">
            <div class="form-wrap">
            	<div class="gyungro-form" id="map" style="width:100%;height:350px;"></div>
            	<div class="sulmyung-form">
            		설명
            	</div>
            	<div class="matgip-form">
            		근처 맛집
            	</div>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
            mapOption = { 
                center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
                level: 3 // 지도의 확대 레벨
            };

        var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

        // 마커가 표시될 위치입니다 
        var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 

        // 마커를 생성합니다
        var marker = new kakao.maps.Marker({
            position: markerPosition
        });

        // 마커가 지도 위에 표시되도록 설정합니다
        marker.setMap(map);
        </script>
</body>
</html>