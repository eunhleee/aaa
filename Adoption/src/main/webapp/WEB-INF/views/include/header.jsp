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
								<c:if test="${sessionScope.userGrade==0}">
									<a href="animalWriteForm">분양글쓰기</a>
									<a href="categoryWriteForm">품종추가</a>
								</c:if>
								<c:if test="${sessionScope.userID!=null }">
									<a href="userLogout">로그아웃(${sessionScope.userID})</a>
									<a href="myPage">마이페이지</a>
								</c:if>
								<c:if test="${sessionScope.userID==null }">
									<a href="userLoginForm">로그인</a>
									<a href="userJoinForm">회원가입</a>
								</c:if>
								<c:if test="${sessionScope.userGrade eq 0 }">
								<a href="requestList">신청서 확인</a>
								</c:if>
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
						<a href="index" class="nav-brand"><img src="resources/img/core-img/logo.png" alt="" width="100" height="100"></a>
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
												<li><a href="animalList?kind1=1&kind2=1&kind3=all">소형견</a></li>
												<c:forEach var="item" items="${ctg1}">
													<li><div class="animalcategory">
													<a href="animalList?kind1=1&kind2=1&kind3=${item.ctGubun3}">- ${item.ctGubun3}</a>
													<c:if test="${sessionScope.userGrade==0}">
													<button type="button" 
													onclick="location.href='categoryUpdateForm?kind1=1&kind2=1&kind3=${item.ctGubun3}'">
													수정</button>
													<button type="button" 
													onclick="location.href='categoryDelete?ctNum=${item.ctNum}'">
													삭제</button>
													</c:if></div></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=1&kind2=2&kind3=all">중형견</a></li>
													<c:forEach var="item" items="${ctg2}">
													<li><div class="animalcategory">
													<a href="animalList?kind1=1&kind2=2&kind3=${item.ctGubun3}">- ${item.ctGubun3}</a>
													<c:if test="${sessionScope.userGrade==0}">
													<button type="button" 
													onclick="location.href='categoryUpdateForm?kind1=1&kind2=2&kind3=${item.ctGubun3}'">
													수정</button>
													<button type="button" 
													onclick="location.href='categoryDelete?ctNum=${item.ctNum}'">
													삭제</button>
													</c:if></div></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=1&kind2=3&kind3=all">대형견</a></li>
													<c:forEach var="item" items="${ctg3}">
													<li><div class="animalcategory">
													<a href="animalList?kind1=1&kind2=3&kind3=${item.ctGubun3}">- ${item.ctGubun3}</a>
													<c:if test="${sessionScope.userGrade==0}">
													<button type="button" 
													onclick="location.href='categoryUpdateForm?kind1=1&kind2=3&kind3=${item.ctGubun3}'">
													수정</button>
													<button type="button" 
													onclick="location.href='categoryDelete?ctNum=${item.ctNum}'">
													삭제</button>
													</c:if></div></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=1&kind2=4&kind3=all">특수견 / ETC</a></li>
											</ul>
										</div></li>
									<li><a href="#">고양이 분양</a><div class="megamenu">
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=2&kind2=1&kind3=all">소형묘</a></li>
												<c:forEach var="item" items="${ctg4}">
													<li><div class="animalcategory">
													<a href="animalList?kind1=2&kind2=1&kind3=${item.ctGubun3}">- ${item.ctGubun3}</a>
													<c:if test="${sessionScope.userGrade==0}">
													<button type="button" 
													onclick="location.href='categoryUpdateForm?kind1=2&kind2=1&kind3=${item.ctGubun3}'">
													수정</button>
													<button type="button" 
													onclick="location.href='categoryDelete?ctNum=${item.ctNum}'">
													삭제</button>
													</c:if></div></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=2&kind2=2&kind3=all">중형묘</a></li>
													<c:forEach var="item" items="${ctg5}">
													<li><div class="animalcategory">
													<a href="animalList?kind1=2&kind2=2&kind3=${item.ctGubun3}">- ${item.ctGubun3}</a>
													<c:if test="${sessionScope.userGrade==0}">
													<button type="button" 
													onclick="location.href='categoryUpdateForm?kind1=2&kind2=2&kind3=${item.ctGubun3}'">
													수정</button>
													<button type="button" 
													onclick="location.href='categoryDelete?ctNum=${item.ctNum}'">
													삭제</button>
													</c:if></div></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=2&kind2=3&kind3=all">대형묘</a></li>
													<c:forEach var="item" items="${ctg6}">
													<li><div class="animalcategory">
													<a href="animalList?kind1=2&kind2=3&kind3=${item.ctGubun3}">- ${item.ctGubun3}</a>
													<c:if test="${sessionScope.userGrade==0}">
													<button type="button" 
													onclick="location.href='categoryUpdateForm?kind1=2&kind2=3&kind3=${item.ctGubun3}'">
													수정</button>
													<button type="button" 
													onclick="location.href='categoryDelete?ctNum=${item.ctNum}'">
													삭제</button>
													</c:if></div></li>
												</c:forEach>
											</ul>
											<ul class="single-mega cn-col-4">
												<li><a href="animalList?kind1=2&kind2=4&kind3=all">특수묘 / etc</a></li>
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
					<img src="resources/img/core-img/grass.JPG" alt="">
					
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcrumb Area End ##### -->
