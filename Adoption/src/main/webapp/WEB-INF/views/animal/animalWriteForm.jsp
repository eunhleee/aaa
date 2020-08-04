<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript" src="resources/editor/photo_uploader/plugin/hp_SE2M_AttachQuickPhoto.js" charset="utf-8"></script>
<div class="container">
	<div class="section-heading">
		<h2>분양글 등록</h2>
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
	<form name="w_form" method="post" action="AnimalWrite" enctype="multipart/form-data">
		<input type="hidden" name="filepath" value="/editor/upload/"/>
		<label class="form-control-label">이름</label> 
		<input type="text" class="form-control" name="name" required>
		<label class="form-control-label">나이(개월)</label> 
		<input type="text" class="form-control" name="age" required>
		<label class="form-control-label">성별</label> 
		<input type="text" class="form-control" name="gender" required>
		<label class="form-control-label">발견된 장소</label> 
		<input type="text" class="form-control" name="area" required>
		<label class="form-control-label">보호기간</label> 
		<input type="text" class="form-control" name="protect_date" required>
		<label class="form-control-label">털색</label> 
		<input type="text" class="form-control" name="color" required>
		<label class="form-control-label">동물분류1</label> 
		<select class="custom-select" id="customcategory1" name="kind1" onchange="categoryChange(this)">
			<option value="1" selected>강아지</option>
			<option value="2">고양이</option>
		</select>
		<label class="form-control-label">동물분류2</label> 
		<select class="custom-select" id="customcategory2" name="kind2">
			<option value="1" selected>소형견</option>
			<option value="2">중형견</option>
			<option value="3">대형견</option>
			<option value="4">특수견 / ETC</option>
		</select>
		<label class="form-control-label">품종</label>
		<input type="text" class="form-control" name="kind3" required>
		<label class="form-control-label">체중(kg)</label> 
		<input type="text" class="form-control" name="weight" required>
		<label class="form-control-label">접종유무</label> 
		<input type="text" class="form-control" name="inoculation">
		<label class="form-control-label">기타</label> 
		<input type="text" class="form-control" name="etc">
		<label class="form-control-label">이미지</label> 
		<input type="file" class="form-control" id="animalImg" name="file">
		<label class="form-control-label">내용</label> 
		<textarea name="content" id="textAreaContent" style="width: 100%" rows="15" cols="80"></textarea>
		<button class="form-control foode-btn" type="button" onclick="submitContents(this)">글쓰기</button>
	</form>
</div>

<!-- Naver Smart Editor 2 -->
<script src="resources/js2/animalWriteScript.js"></script>
<!-- Naver Smart Editor 2 END-->

<%@include file="../include/footer.jsp"%>
</body>
</html>