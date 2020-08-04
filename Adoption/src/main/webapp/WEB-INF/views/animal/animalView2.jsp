<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- ##### Blog Content Area Start ##### -->
<div class="about-us-area section-padding-0-100">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-9">
				<div class="about-content">
					<c:if test="${sessionScope.userID=='master' && sessionScope.userID!=null}">
					<div align="right">
						<button type="button" class="foode-btn" style="width:50px" 
						onclick="location.href='animalUpdateForm?num=${animal.num}'">
						수정</button>
						<button type="button" class="foode-btn" style="width:50px" 
						onclick="location.href='AnimalDelete?kind1=${animal.kind1}&kind2=${animal.kind2}&num=${animal.num}'">
						삭제</button>
					</div>
					</c:if>
					<h3 style="text-align: center;"><b>반려묘 정보</b></h3>
					<div style="text-align:center;">
						<img src="resources${animal.mainImage}" alt="" class="card-img-top" style="border: 5px solid rgba(255,0,0,0.5); width:300px; height:400px;">
					</div>
					<table style="text-align: center;" class="anvtable">
						<tr>
							<td width="200px">묘  종</td>
							<td width="200px">${animal.kind3}</td>
							<td width="200px">성  별</td>
							<td width="200px">${animal.gender}</td>
						</tr>
						<tr>
							<td width="200px">나  이</td>
							<td width="200px">${animal.age}개월</td>
							<td width="200px">체  중</td>
							<td width="200px">${animal.weight}Kg</td>
						</tr>
						<tr>
							<td width="200px">털  색</td>
							<td width="200px">${animal.color}</td>
							<td width="200px">접  종</td>
							<td width="200px">${animal.inoculation}</td>
						</tr>
						<tr>
							<td width="200px">발견된 장소</td>
							<td width="200px">${animal.area}</td>
							<td width="200px">보호기간</td>
							<td width="200px">${animal.protect_date}</td>
						</tr>
						<tr>
							<td>기  타</td>
							<td colspan="3">${animal.etc}</td>
						</tr>
					</table>
				</div>
				<hr>
				<div class="about-content" style="text-align:center;">
					${animal.content}
				</div>
				<%@ include file="../animal/anComment.jsp" %>
			</div>
			
		</div>

	</div>
</div>
<!-- ##### Blog Content Area End ##### -->

<%@include file="../include/footer.jsp"%>

</body>
</html>