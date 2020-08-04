<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
 <%@include file="../mypage/myPage.jsp" %>
<!-- <section class="readSection"> -->
<div class="mPpage">
 	<div class="listTable" align="center">
  	<div class="readReqTable">
		<table class="table table-hover" >
		<tr align="center"> 
		<td>신청번호</td>
		<td>보호 동물</td>
		<td>품종</td>
		<td>방문 날짜</td>
		</tr>
		
		 <c:forEach items="${mylist}" var="list">
			<tr onClick="location.href='readRequest?num=${list.num}'" style="cursor:pointer;" align="center">
				<td><c:out value="${list.num}"/></td>
				<td><c:out value="${list.animal_name}" /></td>
				<td><c:out value="${list.kind}" /></td>
				<td><c:out value="${list.regdate}" /></td>
			</tr>
			<tr>
			</tr>
		</c:forEach> 
		</table>
	</div>
</div>
<!-- </section> -->
</div>




</div>

<%@include file="../include/footer.jsp"%>
</body>
</html>