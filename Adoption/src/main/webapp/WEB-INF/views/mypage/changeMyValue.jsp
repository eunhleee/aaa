<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../mypage/myPage.jsp" %>
<div class="mPpage">
	<div class="changeMV" >
	<h4 align="left">개인정보 수정</h4>
	<div class="contact-content" >
		<div class="contact-form-area2">
				<form method="post" action="changeMyValue">
					<input type="text" class="form-control" name="id" value="${user.id }" placeholder="ID"  required>
					<br>
					<input type="password" class="form-control" name="pw" placeholder="Password" required>
					<br>
					<input type="password" class="form-control" name="pw_confirm" placeholder="Password Confirm" required>
					<br>
					<input type="text" class="form-control" name="name" value="${user.name }" placeholder="Name" required>
					<br>
					<input type="email" class="form-control" name="email" value="${user.email }" placeholder="Email" required>
					<br>
					<input type="text"  class="form-control" name="phone" value="${user.phone }" placeholder="Phone" required> 
					<br>
					<button class="foode-btn" value="">수정하기</button>
					<p>${sessionScope.notice }</p>
					${sessionScope.notice="" }
				</form>
		</div>
		</div>
	</div>
</div>
</div>

<%@include file="../include/footer.jsp"%>

</body>
</html>