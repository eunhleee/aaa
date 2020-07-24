<!-- 회원 탈퇴 페이지 -->
<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../mypage/myPage.jsp" %>
<div class="mPpage">
	<div class="checkMyPw" align="center">
		<p>탈퇴를 위해 비밀번호를 한번 더 입력해주세요.</p>
			<div class="cMP">
				<form action="checkPw" method="post">
					<div class="contact-content" >
						<div class="contact-form-area2">
							<input type="password" class="form-control" name="checkPwText" style="width:300px;">
						</div>
					</div>
						<p style="color:red;">${sessionScope.warning }</p>
						${sessionScope.warning ="" }
					<div>
						<button type="submit" class="foode-btn1" name="checkBtn" style="width:60px; height:40px;" >확인</button>
					</div>
					<input type="hidden" name="userID" value="${sessionScope.userID }">
					<input type="hidden" name="pageValue" value="secession">
				</form>
				
			</div>
	</div>
</div>
</div>

<%@include file="../include/footer.jsp"%>

</body>
</html>