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
												<c:if test="${not empty sessionScope.userID}">
												<button type="submit" class="btn foode-btn">Send</button>
												</c:if>
												<c:if test="${empty sessionScope.userID}">
												<p>로그인한 후 이용 가능합니다.</p>
												</c:if>
											</div>
										</div>
										<input type="hidden" name="id" value="${sessionScope.userID}">
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
									<p>부산광역시 부산진구 부전2동 중앙대로 708.</p>
								</div>

								<!-- Single Contact Info -->
								<div class="single-contact-info d-flex">
									<div class="icon">
										<i class="fa fa-phone" aria-hidden="true"></i>
									</div>
									<p>Tel.(051)753-5600</p>
								</div>

								<!-- Single Contact Info -->
								<div class="single-contact-info d-flex">
									<div class="icon">
										<i class="fa fa-print" aria-hidden="true"></i>
									</div>
									<p>Fax.(051)753-5117</p>
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