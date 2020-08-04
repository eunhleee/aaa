<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>

<script>
//이전 버튼 이벤트
function fn_prev(page, range, rangeSize, kind1, kind2, kind3) {
		var page = ((range - 2) * rangeSize) + 1;
		var range = range - 1;
		
		var url = "${pageContext.request.contextPath}/animalList";
		url = url + "?kind1=" + kind1;
		url = url + "&kind2=" + kind2;
		url = url + "&kind3=" + kind3;
		url = url + "&page=" + page;
		url = url + "&range=" + range;
		
		location.href = url;
	}

//페이지 번호 클릭
	function fn_pagination(page, range, rangeSize, kind1, kind2, kind3) {
		var url = "${pageContext.request.contextPath}/animalList";
		url = url + "?kind1=" + kind1;
		url = url + "&kind2=" + kind2;
		url = url + "&kind3=" + kind3;
		url = url + "&page=" + page;
		url = url + "&range=" + range;

		location.href = url;	
	}

	//다음 버튼 이벤트
	function fn_next(page, range, rangeSize, kind1, kind2, kind3) {
		var page = parseInt((range * rangeSize)) + 1;
		var range = parseInt(range) + 1;
		
		var url = "${pageContext.request.contextPath}/animalList";
		url = url + "?kind1=" + kind1;
		url = url + "&kind2=" + kind2;
		url = url + "&kind3=" + kind3;
		url = url + "&page=" + page;
		url = url + "&range=" + range;
		
		location.href = url;
	}
</script>

<div class="about-us-area section-padding-0-100">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-12 col-lg-9">
				<div class="about-content">
					<c:if test="${kind2!='4'}">
					<table style="text-align: center; width:100%; height:40px; table-layout:fixed;">
						<tr>
							<td 
							<c:if test="${kind3=='all'}">
								style="background-color:#C091E0;"
							</c:if>
							>
								<a href="animalList?kind1=${kind1}&kind2=${kind2}&kind3=all"
							<c:if test="${kind3=='all'}">
								style="color:white; font-weight: bold;"
							</c:if>
							>전체</a>
							</td>
							<c:forEach var="item" items="${category}">
								<td
								<c:if test="${kind3==item.ctGubun3}">
									style="background-color:#C091E0;"
								</c:if>
								>
									<a href="animalList?kind1=${kind1}&kind2=${kind2}&kind3=${item.ctGubun3}"
									<c:if test="${kind3==item.ctGubun3}">
										style="color:white; font-weight: bold;"
									</c:if>
									>${item.ctGubun3}</a>
								</td>
							</c:forEach>
						</tr>
					</table>
					</c:if>
					<hr class="anlhr">
					<div class="row">
						<c:if test="${animal=='[]'}">
							<p class="anltext1">등록된 글이 없습니다.</p>
						</c:if>
						<c:forEach var="item" items="${animal}">
							<div class="col-lg-4 col-sm-6 mb-4">
								<div class="dogcard transform-on-hover" style="border:1px solid rgba(255,0,0,0.5)">
									<a class="dogbox">
										<img src="resources${item.mainImage}" alt="" class="card-img-top" style="border: 5px solid rgba(255,0,0,0.5); height:400px;">
									</a>
									<div class="dogname" style="text-align:center; height:50px;">
										<a href="animalView${item.kind1}?num=${item.num}"><span>${item.name}</span></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- pagination{s} -->
						<div id="paginationBox">
							<ul class="pagination">
								<c:if test="${pagination.prev}">
									<li class="page-item">
									<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangeSize}', '${kind1}', '${kind2}', '${kind3}')">Previous</a>
									</li>
								</c:if>
									
								<c:forEach begin="${pagination.startPage}" end="${pagination.endPage}" var="idx">
									<li class="page-item <c:out value="${pagination.page == idx ? 'active' : ''}"/> ">
									<a class="page-link" href="#" onClick="fn_pagination('${idx}', '${pagination.range}', '${pagination.rangeSize}', '${kind1}', '${kind2}', '${kind3}')"> ${idx} </a>
									</li>
								</c:forEach>
									
								<c:if test="${pagination.next}">
									<li class="page-item"><a class="page-link" href="#" onClick="fn_next('${pagination.range}', 
					'${pagination.range}', '${pagination.rangeSize}', '${kind1}', '${kind2}', '${kind3}')" >Next</a></li>
								</c:if>
							</ul>
						</div>
						<!-- pagination{e} -->
				</div>
			</div>
			
		</div>

	</div>
</div>

<%@include file="../include/footer.jsp"%>
</body>
</html>