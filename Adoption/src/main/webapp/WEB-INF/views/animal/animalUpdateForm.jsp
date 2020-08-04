<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="resources/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
<div class="container">
	<div class="section-heading">
		<h2>분양글 수정</h2>
	</div>
	<script>
	function categoryChange(e) {
		var ca1 = w_form.customcategory1.selectedIndex;
		var ca2 = w_form.customcategory2;
		if(ca1==0) {
			ca2.options[0].text = "소형견";
			ca2.options[0].value = "1";
			ca2.options[1].text = "중형견";
			ca2.options[1].value = "2";
			ca2.options[2].text = "대형견";
			ca2.options[2].value = "3";
			ca2.options[3].text = "특수견 / ETC";
			ca2.options[3].value = "4";
		} else if(ca1==1) {
			ca2.options[0].text = "소형묘";
			ca2.options[0].value = "1";
			ca2.options[1].text = "중형묘";
			ca2.options[1].value = "2";
			ca2.options[2].text = "대형묘";
			ca2.options[2].value = "3";
			ca2.options[3].text = "특수묘 / ETC";
			ca2.options[3].value = "4";
		}
	}
	</script>
	<form name="w_form" method="post" action="AnimalUpdate?num=${animal.num}" enctype="multipart/form-data">
		<input type="hidden" name="filepath" value="/editor/upload/"/>
		<label class="form-control-label">이름</label>
		<input type="text" class="form-control" name="name" required value="${animal.name}">
		<label class="form-control-label">나이(개월)</label> 
		<input type="text" class="form-control" name="age" required value="${animal.age}">
		<label class="form-control-label">성별</label> 
		<input type="text" class="form-control" name="gender" required value="${animal.gender}">
		<label class="form-control-label">발견된 장소</label> 
		<input type="text" class="form-control" name="area" required value="${animal.area}">
		<label class="form-control-label">보호기간</label> 
		<input type="text" class="form-control" name="protect_date" required value="${animal.protect_date}">
		<label class="form-control-label">털색</label> 
		<input type="text" class="form-control" name="color" required value="${animal.color}">
		<label class="form-control-label">동물분류1</label> 
		<select class="custom-select" id="customcategory1" name="kind1" 
		onchange="categoryChange(this)">
			<option value="1" <c:if test="${animal.kind1=='1'}">selected</c:if>>강아지</option>
			<option value="2" <c:if test="${animal.kind1=='2'}">selected</c:if>>고양이</option>
		</select>
		<label class="form-control-label">동물분류2</label> 
		<select class="custom-select" id="customcategory2" name="kind2">
			<option value="1" <c:if test="${animal.kind2=='1'}">selected</c:if>>소형견</option>
			<option value="2" <c:if test="${animal.kind2=='2'}">selected</c:if>>중형견</option>
			<option value="3" <c:if test="${animal.kind2=='3'}">selected</c:if>>대형견</option>
			<option value="4" <c:if test="${animal.kind2=='4'}">selected</c:if>>특수견 / ETC</option>
		</select>
		<label class="form-control-label">품종</label>
		<input type="text" class="form-control" name="kind3" required value="${animal.kind3}">
		<label class="form-control-label">체중(kg)</label> 
		<input type="text" class="form-control" name="weight" required value="${animal.weight}">
		<label class="form-control-label">접종유무</label> 
		<input type="text" class="form-control" name="inoculation" value="${animal.inoculation}">
		<label class="form-control-label">기타</label> 
		<input type="text" class="form-control" name="etc" value="${animal.etc}">
		<label class="form-control-label">이미지</label> <br>
		<label class="form-control-label">이전 이미지</label><br>
		<img src="resources${animal.mainImage}" style="border: 5px solid rgba(255,0,0,0.5); width:300px; height:400px;">
		<input type="file" class="form-control" id="animalImg" name="file">
		<label class="form-control-label">내용</label> 
		<textarea name="content" id="textAreaContent" style="width: 100%" rows="15" cols="80">${animal.content}</textarea>
		<button class="form-control foode-btn" type="button" onclick="submitContents(this)">글쓰기</button>
	</form>
</div>

<!-- Naver Smart Editor 2 -->
<script src="resources/js2/animalUpdateScript.js"></script>
<!-- Naver Smart Editor 2 END-->

<%@include file="../include/footer.jsp"%>
</body>
</html>