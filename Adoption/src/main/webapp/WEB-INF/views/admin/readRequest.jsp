<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>


  	<section class="readSection" >
  	<div align="center">
	<form method="post" action="">
		<table class="readTable">
		<tr>
		<th>신청자</th>
		<th>보호 동물</th>
		<th>품종</th>
		<th>요청사항</th>
		<th>방문 날짜</th>
		</tr>
		 <c:forEach items="${list}" var="list">
			<tr>
				<td><c:out value="${list.name}" /></td>
				<td><c:out value="${list.animal_name}" /></td>
				<td><c:out value="${list.kind}" /></td>
				<td><c:out value="${list.content}" /></td>
				<td><c:out value="${list.regdate}" /></td>
			</tr>
		</c:forEach> 
		</table>
	
	</form>
</div>
</section>


<!-- ##### Blog Content Area End ##### -->





<%@include file="../include/footer.jsp"%>

</body>
</html>