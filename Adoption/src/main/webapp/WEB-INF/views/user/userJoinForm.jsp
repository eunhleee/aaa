<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- <div class="container">
	<div class="section-heading">
		<h2>회원가입</h2>
	</div>
	<form method="post" action="userJoin">
		<input type="text" class="form-control" name="userID" placeholder="ID" required>
		<input type="password" class="form-control" name="userPW" placeholder="Password" required>
		<input type="password" class="form-control" name="userPW_Confirm" placeholder="Password Confirm" required>
		<input type="text" class="form-control" name="userName" placeholder="Name" required>
		<input type="email" class="form-control" name="userEmail" placeholder="Email" required>
		<input type="submit" class="form-control foode-btn" value="가입하기">
	</form>
</div> -->

<br>
<br>
<br>
<br>

<section class="contact-area">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="contact-content-area">
					
							<div class="contact-content" align="center">
								<h4>Join Us</h4>

								<!-- Contact Form Area -->
								<div class="contact-form-area2">
									<form method="post" action="userJoin">
										<input type="text" class="form-control" name="id" placeholder="ID" required>
										<br>
										<input type="password" class="form-control" name="pw" placeholder="Password" required>
										<br>
										<input type="password" class="form-control" name="pw_confirm" placeholder="Password Confirm" required>
										<br>
										<input type="text" class="form-control" name="name" placeholder="Name" required>
										<br>
										<input type="email" class="form-control" name="email" placeholder="Email" required>
										<br>
										<input type="text"  class="form-control" name="phone" placeholder="Phone" required> 
										<br>
										<button class=" foode-btn" value="">가입하기</button>
									</form>
						</div>

						
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



<%@include file="../include/footer.jsp"%>
</body>
</html>


