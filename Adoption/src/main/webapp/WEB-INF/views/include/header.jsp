<%@page import="com.cos.service.CategoryService"%>
<%@page import="javax.inject.Inject"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Adopt Web Page</title>

<!-- Core Stylesheet -->
<link rel="stylesheet" href="resources/css/style.css">
</head>

<body>
	<!-- ##### Preloader ##### -->
	<div class="preloader d-flex align-items-center justify-content-center">
		<div class="circle-preloader">
			<img src="resources/img/core-img/loding.png" alt="">
			<div class="foode-preloader">
				<span></span>
			</div>
		</div>
	</div>

	<!-- ##### Header Area Start ##### -->
	<header class="header-area">

		<!-- Top Header Area -->
		<div class="top-header">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="top-header-content d-flex align-items-center justify-content-between">
							<!-- Search Form -->
							<div class="search-form">
								<form action="#" method="get">
									<input type="search" name="search" class="form-control" placeholder="Search and hit enter...">
									<button type="submit">
										<i class="fa fa-search"></i>
									</button>
								</form>
							</div>

							<!-- Social Button -->
							<div class="top-social-info">
								<c:if test="${sessionScope.userID!=null }">
									<a href="userLogout">로그아웃(${sessionScope.userID})</a>
								</c:if>
								<c:if test="${sessionScope.userID==null }">
									<a href="userLoginForm">로그인</a>
								</c:if>
								<a href="userJoinForm">회원가입</a>
								<a href="readRequest">신청서 확인</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Logo Area -->
		<div class="logo-area text-center">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<!-- Nav brand -->
						<a href="index" class="nav-brand"><img src="resources/img/core-img/logo.jpg" alt=""></a>
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Area -->
		<div class="foode-main-menu">
			<div class="classy-nav-container breakpoint-off">
				<div class="container">
					<!-- Menu -->
					<nav class="classy-navbar" id="foodeNav">

						<!-- Navbar Toggler -->
						<div class="classy-navbar-toggler">
							<span class="navbarToggler"><span></span><span></span><span></span></span>
						</div>

						<!-- Menu -->
						<div class="classy-menu">

							<!-- close btn -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
							</div>

							<!-- Nav Start -->
							<div class="classynav">
								<ul>
									<li><a href="index">보호소 소개</a></li>
									<li><a href="#">강아지 분양</a>
										<div class="megamenu">
											<ul class="single-mega cn-col-4">
												<li><a href="#">대형견</a></li>
												<c:forEach var="item" items="${ctg1}">
													<li><a href="lectureView?ctNum=${item.ctNum}">- ${item.ctGubun2}</a></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="#">중형견</a></li>
													<c:forEach var="item" items="${ctg2}">
													<li><a href="lectureView?ctNum=${item.ctNum}">- ${item.ctGubun2}</a></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="#">소형견</a></li>
													<c:forEach var="item" items="${ctg3}">
													<li><a href="lectureView?ctNum=${item.ctNum}">- ${item.ctGubun2}</a></li>
												</c:forEach>
											</ul>
											
										</div></li>
									<li><a href="#">고양이 분양</a><div class="megamenu">
											<ul class="single-mega cn-col-4">
												<li><a href="#">대형묘</a></li>
												<c:forEach var="item" items="${ctg1}">
													<li><a href="lectureView?ctNum=${item.ctNum}">- ${item.ctGubun2}</a></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="#">중형묘</a></li>
													<c:forEach var="item" items="${ctg2}">
													<li><a href="lectureView?ctNum=${item.ctNum}">- ${item.ctGubun2}</a></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="#">소형묘</a></li>
													<c:forEach var="item" items="${ctg3}">
													<li><a href="lectureView?ctNum=${item.ctNum}">- ${item.ctGubun2}</a></li>
												</c:forEach>
											</ul>
											
										</div></li>
									<li><a href="#">입양 후 소식</a></li>
									<li><a href="adoptRequest">분양 신청</a></li>
									<li><a href="#contact">문의하기</a></li>
								</ul>

							</div>
							<!-- Nav End -->

						</div>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- ##### Breadcrumb Area Start ##### -->
	<div class="breadcrumb-area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<img src="resources/img/core-img/breadcrumb-line.png" alt="">
					
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcrumb Area End ##### -->
