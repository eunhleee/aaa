<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<!-- 스타일은 resources/css/style.css에 추가하기 -->

 	<section class="readSection">
 	<div class="listTable" align="center" >
  	<div class="readReqTable">
		<table class="table table-hover" >
		<tr align="center"> 
		<td>신청번호</td>
		<td>신청자</td>
		<td>보호 동물</td>
		<td>품종</td>
		<td>방문 날짜</td>
		</tr>
		
		 <c:forEach items="${list}" var="list">
			<tr onClick="location.href='readRequest?num=${list.num}'" style="cursor:pointer;" align="center">
				<td><c:out value="${list.num}"/></td>
				<td><c:out value="${list.name}" /></td>
				<td><c:out value="${list.animal_name}" /></td>
				<td><c:out value="${list.kind}" /></td>
				<td><c:out value="${list.regdate}" /></td>
			</tr>
			<tr>
			</tr>
		</c:forEach> 
		</table>
	</div>
		<!-- pagination{s} -->

	<div id="paginationBox" >
		<ul class="pagination">
			<c:if test="${pagination.prev}">
				<li class="page-item">
				<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}')">Previous</a>
				</li>	
			</c:if>


			<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
				<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
					<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}')"> ${idx} </a>
				</li>
			</c:forEach>

			<c:if test="${pagination.next}">
				<li class="page-item">
					<a class="page-link" href="#" onClick="fn_next('${pagination.range}', '${pagination.range}', '${pagination.rangeSize}')" >Next</a>
				</li>
			</c:if>

		</ul>

	</div>

	<!-- pagination{e} -->

</div>
</section>


<!-- ##### Blog Content Area End ##### -->





<%@include file="../include/footer.jsp"%>
<script>

//이전 버튼 이벤트

function fn_prev(page, range, rangeSize) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		var url = "${pageContext.request.contextPath}/requestList";
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;
	}


  //페이지 번호 클릭
function fn_pagination(page, range, rangeSize, searchType, keyword) {
		var url = "${pageContext.request.contextPath}/requestList";
		
		url = url + "?page=" + page;
		url = url + "&range=" + range;

		location.href = url;	
	}
  
//다음 버튼 이벤트
function fn_next(page, range, rangeSize) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		var url = "${pageContext.request.contextPath}/requestList";

		url = url + "?page=" + page;
		url = url + "&range=" + range;
		
		location.href = url;
	}

</script>

</body>
</html>
 