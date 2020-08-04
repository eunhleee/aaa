<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<html>
<body>
<div class="container">
	<form method="get" action="categoryUpdate" name="categoryFrm">
		<label class="form-control-label">카테고리 수정</label> 
		<input type="hidden" name="ctGubun1" value="${ctGubun1}">
		<input type="hidden" name="ctGubun2" value="${ctGubun2}">
		<input type="text" class="form-control" name="ctGubun3" value="${ctGubun3}" readonly>
		<input type="text" class="form-control" name="newGubun3" placeholder="수정할 품종을 입력하세요." required>
		
		<input type="submit" class="form-control foode-btn" value="수정">
	</form>
</div>

<%@include file="../include/footer.jsp"%>
</body>
</html>