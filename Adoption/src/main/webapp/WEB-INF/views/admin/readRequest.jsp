<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

 	<section class="readSection" >
 	<div align="center">
	<div class="col-12 col-lg-6">
		<div class="contact-content">
			<!-- Contact Form Area -->
			<div class="contact-form-area">
			
					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>신청 번호</p>
								<input type="text" class="form-control" name="num" value="${list.num}" id="contact-name" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>신청자 성함</p>
								<input type="text" class="form-control" name="name"  value="${list.name}" id="contact-email" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>강아지 or 고양이</p>
								<input type="text" class="form-control" name="kind"  value="${list.kind}" id="contact-email" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>아이 이름</p>
								<input type="text" class="form-control" name="animal_name"  value="${list.animal_name}" id="contact-email"  disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>방문 날짜</p>
								<input type="date" class="form-control" name="regdate"  value="${list.regdate}" id="contact-email" placeholder="방문 날짜" disabled>
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								<p>요청 사항</p>
								<textarea class="form-control" name="content" id="message" cols="30" rows="10"  value="${list.content}" disabled></textarea>
							</div>
						</div>
						<div class="col-12">
							<c:if test="${list.id eq sessionScope.userID}">
								<input type="button"  class="btn foode-btn"  onClick="location.href='deleteRequest?num=${list.num}'" style="cursor:pointer;" value="delete">
								<input type="button"  class="btn foode-btn" onClick="location.href='updatePage?num=${list.num}'"  value="update">
				</c:if>
						</div>
					</div>
	
			</div>
		</div>
	</div>
	
	</div>
</section>


<!-- ##### Blog Content Area End ##### -->





<%@include file="../include/footer.jsp"%>

</body>
</html>