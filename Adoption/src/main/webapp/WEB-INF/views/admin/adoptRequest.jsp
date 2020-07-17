<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<br>
<br>
<br>
<br>

<!-- ##### Contact Area Start ##### -->
<section class="contact-area">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="contact-content-area">
					<div class="row">

						<div class="col-12 col-lg-6">
							<div class="contact-content">
								<h4>Application</h4>

								<!-- Contact Form Area -->
								<div class="contact-form-area">
									<form action="request" method="post">
										<div class="row">
										<!-- 분양 신청자 이름 -->
											<div class="col-12 col-lg-6">
												<div class="form-group">
													<p>신청자 성함</p>
													<input type="text" class="form-control" name="name" id="contact-name" placeholder="성함" >
												</div>
											</div>
											<div class="col-12 col-lg-6">
												<div class="form-group">
													<p>방문 날짜</p>
													<input type="date" class="form-control" name="regdate"  id="contact-date">
												</div>
											</div>
											<div class="col-12 col-lg-6">
												<div class="form-group">
													<p>보호 동물 종류</p>
													<input type="radio"  name="kind"  value="dog"  checked>강아지
													<input type="radio"  name="kind"  value="cat">고양이
												</div>
											</div>
											<div class="col-12 col-lg-6">
												<div class="form-group">
													<p>보호 동물 이름</p>
													<input type="text" class="form-control" name="animal_name"  id="contact-animal_name" placeholder="아이의 이름">
												</div>
											</div>
											<div class="col-12">
												<div class="form-group">
													<textarea class="form-control" name="content" id="message" cols="30" rows="10" placeholder="요청사항"></textarea>
												</div>
											</div>
											<div class="col-12">
												<button type="submit" class="btn foode-btn">Send</button>
											</div>
										</div>
										
									</form>
								</div>
							</div>
						</div>

						<div class="col-12 col-lg-6">
							<div class="contact-content contact-information">
								<h4>Information</h4>

								<!-- Single Contact Info -->
								<div class="single-contact-info d-flex">
									<div class="icon">
										<i class="fa fa-map-marker" aria-hidden="true"></i>
									</div>
									<p>3919 New Cut Rd, Mary land, United State.</p>
								</div>

								<!-- Single Contact Info -->
								<div class="single-contact-info d-flex">
									<div class="icon">
										<i class="fa fa-phone" aria-hidden="true"></i>
									</div>
									<p>(12)-100-100-100</p>
								</div>

								<!-- Single Contact Info -->
								<div class="single-contact-info d-flex">
									<div class="icon">
										<i class="fa fa-print" aria-hidden="true"></i>
									</div>
									<p>(12)-112-123-123</p>
								</div>

								<!-- Single Contact Info -->
								<div class="single-contact-info d-flex">
									<div class="icon">
										<i class="fa fa-envelope" aria-hidden="true"></i>
									</div>
									<p>deercreative@gmail.com</p>
								</div>

								<!-- Contact Social Info -->
								<div class="contact-social-info mt-50">
									<a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip" data-placement="top"
										title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram"
										aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip" data-placement="top" title="Google Plus"><i class="fa fa-google-plus" aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip"
										data-placement="top" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ##### Contact Area End ##### -->

<%@include file="../include/footer.jsp"%>

</body>
</html>