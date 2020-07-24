<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@include file="../include/header.jsp"%>
 <div class="container">
	<div class="section-heading">
		<h2>로그인</h2>
	</div>
	<form method="post" action="userLogin">
		<input type="text" class="form-control" name="id" placeholder="ID" required> 
		<input type="password" class="form-control" name="pw" placeholder="Password" required> 
		<input type="submit" class="form-control foode-btn" value="로그인">
	</form>
</div>
<%@include file="../include/footer.jsp"%>
</body>
</html>

 --%>
 <!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V14</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/font/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/font/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css3/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css3/main.css">
<!--===============================================================================================-->
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-85 p-r-85 p-t-55 p-b-55">
					<form method="post" action="findid">
						<span class="login100-form-title p-b-20">
							forgot id
						</span>
	
						<span class="txt1 p-b-11">
							Email
						</span>
						<div class="wrap-input100 validate-input m-b-12" data-validate = "Email is required">
							<input class="input100" type="text" name="email" >
							<span class="focus-input100"></span>
						</div>
						
						<div>
							<p style="color:red;">${sessionScope.notice }</p>
								${sessionScope.notice="" }
						</div>
					
						<div class="container-login100-form-btn p-b-20">
							<input type="submit" class="customlogin100-form-btn"  value="Find Id">
						</div>
						
					</form>
					
					<form method="post" action="findpw">
						<span class="login100-form-title p-b-20">
							forgot password
						</span>
						
						<span class="txt1 p-b-11">
							Id
						</span>
						<div class="wrap-input100 validate-input m-b-12" data-validate = "Id is required">
							<input class="input100" type="text" name="id" >
							<span class="focus-input100"></span>
							
						</div>
						
						<span class="txt1 p-b-11">
							Email
						</span>
						<div class="wrap-input100 validate-input m-b-12" data-validate = "Email is required">
							<input class="input100" type="text" name="email" >
							<span class="focus-input100"></span>
							
						</div>
						
						<div>
							<p style="color:red;">${sessionScope.notice }</p>
								${sessionScope.notice="" }
						</div>
					
						<div class="container-login100-form-btn">
							<input type="submit" class="customlogin100-form-btn" value="Find Password">
							<input type="button" onclick="location.href='userLoginForm'" class="customlogin100-form-btn2" value="Go Login">
						</div>
					</form>
					
				
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath}/resources/js3/main.js"></script>

</body>
</html>