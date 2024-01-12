<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    <!-- JS -->
    <script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
    
    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/styles.css">

    <title>SideBar sub menus</title>
    
    <style>
		.container{
			background-color: rgba(0, 0, 0, 0.05);
			width: 100wh;
			height: 100vh;

		}
		header{
			
			width: 100%;
			height: 12.5%;
			background-color: #26282A;
			color: white;
		}
		section{
			margin: 0 auto;
			width: 100%;
			height: 67.5%;
		}
		footer{
			
			width: 100%;
			height: 20%;
			background-color: #26282A;
			color: #fff;
			text-align: center;
		}
		footer p{
			padding-top: 30px;
		}
		footer a{
			text-decoration: none;
			color: white;
		}
		.header_container{
			width: 100%;
			height: 100%;
			display: flex;
			justify-content: start;
			align-items: center;
			flex-direction: row;
		
			
		}
		.header_container h1{
			text-align: center;
			padding-right: 100px;
			width: 60%;
			height: 100%;
			line-height: 100px;
			color: white;
			
		}
		.section_container{
			width: 60%;
			height: 90%;
			margin: 50px auto;

			border-radius: 15px;
			
		}
	</style>
</head>
<body id="body-pd">
    <div class="l-navbar expander" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand ">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo">Menu</a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                      
                        <span class="nav_name">Home</span>
                    </a>
                    
                    <a href="#" class="nav__link">
      
                        <span class="nav_name">Room Join</span>
                    </a>
               

                    <a href="#" class="nav__link">

                        <span class="nav_name">Room Setting</span>
                    </a>
                    
                    <a href="/list.other" class="nav__link">

                        <span class="nav_name">Other</span>
                    </a>

					<c:choose>
						<c:when test="${sessionScope.user_id == null }">
						
	                    <a href="/join.member" class="nav__link">
	                        
	                        <span class="nav_name">Join</span>
	                    </a>
	                    
	               		 <a href="/login.member" class="nav__link">
	
	                   		 <span class="nav_name">Log In</span>
	                    </a>
	                    </c:when>
                    <c:otherwise>
	                    
	                    <a href="/mypage.member" class="nav__link">
	                        
	                        <span class="nav_name">MYPAGE</span>
	                    </a>
	                    
	               		 <a href="/logout.member" class="nav__link">
	
	                    	<span class="nav_name">Log Out</span>
	                    </a>
                    </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </nav>
    </div>
    
    <div class="container">
		<header>
			<div class="header_container">

					<h1>HOME</h1>
			
			</div>
		</header>
		
		<section>
			<div class="section_container">