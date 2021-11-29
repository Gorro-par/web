<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="Dto.Userinfo"%>
<!DOCTYPE html>
<html>
<head>
    	<meta charset="UTF-8">
    	<title>main</title>
    	<link rel="stylesheet" href="main_style.css">
	</head>
	<body>
    	<div class="head">
    	<a href="#head" class="logo">logo</a>
	        <div class="search">
	            <input type="input_text">
	            <button><img src="./img/searchr.png" alt="searchr.png"></button>
	        </div>
	        <div class="info-form">
	        <%
        		Userinfo userinfo = (Userinfo)request.getSession().getAttribute("userinfo");	
        	%>
        	<%= userinfo.getName() %>님 로그인중 
	        <a href="#!" class="member-info">회원정보 수정</a>
	        <a href="#!" class="login" onclick = "location.href='main.html'" >로그아웃</a>
	        </div>
	    </div>
    	<div class="back">     
        	<div class="center">
            	<div class="banner" onclick = "location.href='CategorySelect.jsp'">
                	<p>당신만의 특별한</p>
                	<p>여행지를 찾아보세요.</p>
            	</div>
        	</div>
        



        	<div class="leg">
            		<div class="class_a">
            <!-- 클래스 통일 -->
            <!-- 1번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 2번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 3번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 4번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 클래스 통일 -->
            </div>
            
            <div class="class_b">
            <!-- 클래스 통일 -->
            <!-- 1번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 2번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 3번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 4번 -->
            <div class="box_in">
                <a href="#!"><img class="she" src="./img/she.jpg" alt="she.jpg"></a>
                <div class="box_text">
                    <a href="#!" class="text">The current fire house installed</a>
                    <a href="#!" class="text">within the building used by</a>
                    <div class="teg">
                        <a href="#!">#시원한</a>
                        <a href="#!">#연인</a>
                        <a href="#!">#여름</a>
                        <a href="#!">#아름다운</a>
                    </div>
                </div>
            </div>
            <!-- 클래스 통일 -->
            </div>
        </div>
    </div>
</body>
</html>