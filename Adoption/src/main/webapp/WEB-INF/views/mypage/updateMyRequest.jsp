<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

 	<section class="readSection" >
 	<div align="center">
	<div class="col-12 col-lg-6">
		<div class="contact-content">
			<!-- Contact Form Area -->
			<div class="contact-form-area">
				<form action="updateRequest" method="post">
					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>신청 번호</p>
								<input type="text" class="form-control" name="num" value="${list.num}" id="contact-name" disabled >
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>신청자 성함</p>
								<input type="text" class="form-control" name="name"  value="${list.name}" id="contact-email" placeholder="Name" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>강아지 or 고양이</p>
								<input type="text" class="form-control" name="kind"  value="${list.kind}" id="contact-email" placeholder="강아지 or 고양이">
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>아이 이름</p>
								<input type="text" class="form-control" name="animal_name"  value="${list.animal_name}" id="contact-email" placeholder="아이 이름">
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>방문 날짜</p>
								<input type="date" class="form-control" name="regdate"  value="${list.regdate}" id="contact-email" placeholder="방문 날짜">
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								<p>요청 사항</p>
								<textarea class="form-control" name="content" id="message" cols="30" rows="10" placeholder="Message" value="${list.content}"></textarea>
							</div>
						</div>
						<div class="col-12">
							<input type="button"  class="btn foode-btn" onClick="location.href='deleteRequest?num=${list.num}'" style="cursor:pointer;" value="delete">
							<input type="submit"  class="btn foode-btn" value="update">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
 <%--  	<div align="center">
	<form method="post" action="updateRequest">
		<table class="readTable">
			<tr><td>신청번호</td></tr>
			
			<tr><td><input type="text" class="form-control" name="num" value="${list.num}" disabled/></td></tr>
			
			<tr><td>신청자</td></tr>
			
			<tr><td><input type="text" class="form-control" name="name" value="${list.name}" /></td></tr>
			
			<tr><td>아이 이름</td></tr>
			
			<tr><td><input type="text" class="form-control" name="animal_name" value="${list.animal_name}" /></td></tr>
			
			<tr><td>품종</td></tr>
			
			<tr><td><input type="text" class="form-control" name="kind" value="${list.kind}" /></td></tr>
			
			<tr><td>방문날짜</td></tr>
			
			<tr><td><input type="date" class="form-control" name="regdate" value="${list.regdate}" /></td></tr>
			
			<tr><td>요청사항</td></tr>
			
			<tr><td><textarea class="form-control" row="4" name="content" value="${list.content}" ></textarea></td></tr>
			
			<tr>
				<c:if test="${list.id eq sessionScope.userID}">
				
				<td>
					<input type="button"  class="btn foode-btn" onClick="location.href='deleteRequest?num=${list.num}'" style="cursor:pointer;" value="삭제">
					<input type="submit"  class="btn foode-btn" value="수정">
				</td>
				</c:if>
			</tr>
		</table>
	</form>
	
</div> --%>
</section>


<!-- ##### Blog Content Area End ##### -->





<%@include file="../include/footer.jsp"%>

</body>
</html>