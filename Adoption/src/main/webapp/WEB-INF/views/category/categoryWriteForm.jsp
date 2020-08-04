<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../include/header.jsp"%>
<html>
<script>
// function categoryChange(e) {
// 	var ca_a = ["소형견", "중형견", "대형견"];
// 	var ca_b = ["소형묘", "중형묘", "대형묘"];
// 	var ca_c = ["1","2","3"];
// 	var target = document.getElementById("customcategory2");

// 	if(e.value == "1") var d = ca_a;
// 	else if(e.value == "2") var d = ca_b;

// 	target.options.length = 0;

// 	for (x in d) {
// 		var opt = document.createElement("option");
// 		opt.text = d[x];
// 		opt.innerHTML = d[x];
// 		target.appendChild(opt);
// 	}	
// }
function categoryChange(e) {
	var ca1 = categoryFrm.customcategory1.selectedIndex;
	var ca2 = categoryFrm.customcategory2;
	if(ca1==0) {
		ca2.options[0].text = "소형견";
		ca2.options[0].value = "1";
		ca2.options[1].text = "중형견";
		ca2.options[1].value = "2";
		ca2.options[2].text = "대형견";
		ca2.options[2].value = "3";
	} else if(ca1==1) {
		ca2.options[0].text = "소형묘";
		ca2.options[0].value = "1";
		ca2.options[1].text = "중형묘";
		ca2.options[1].value = "2";
		ca2.options[2].text = "대형묘";
		ca2.options[2].value = "3";
	}

}
</script>
<body>
<div class="container">
	<form method="get" action="categoryInsert" name="categoryFrm">
		<select class="custom-select" id="customcategory1" name="ctGubun1" onchange="categoryChange(this)">
			<option value="1" selected>강아지</option>
			<option value="2">고양이</option>
		</select>
		<select class="custom-select" id="customcategory2" name="ctGubun2">
			<option value="1" selected>소형견</option>
			<option value="2">중형견</option>
			<option value="3">대형견</option>
		</select>
		<input type="text" class="form-control" name="ctGubun3" placeholder="품종을 입력하세요." required>
		<input type="submit" class="form-control foode-btn" value="생성">
	</form>
</div>

<%@include file="../include/footer.jsp"%>
</body>
</html>