<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    					
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
<%@include file="../include/header.jsp"%>

 	<section class="readSection" >
 	<div align="center">
	<div class="col-12 col-lg-6">
		<div class="contact-content">
			<!-- Contact Form Area -->
			<div class="contact-form-area">
			
					<div class="row">
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>신청 번호</p>
								<input type="text" class="form-control" name="num" value="${list.num}" id="contact-name" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>신청자 성함</p>
								<input type="text" class="form-control" name="name"  value="${list.name}" id="contact-email" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>강아지 or 고양이</p>
								<input type="text" class="form-control" name="kind"  value="${list.kind}" id="contact-email" disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>아이 이름</p>
								<input type="text" class="form-control" name="animal_name"  value="${list.animal_name}" id="contact-email"  disabled>
							</div>
						</div>
						<div class="col-12 col-lg-6">
							<div class="form-group">
								<p>방문 날짜</p>
								<input type="date" class="form-control" name="regdate"  value="${list.regdate}" id="contact-email" placeholder="방문 날짜" disabled>
							</div>
						</div>
						<div class="col-12">
							<div class="form-group">
								<p>요청 사항</p>
								<textarea class="form-control" name="content" id="message" cols="30" rows="10"  value="${list.content}" disabled></textarea>
							</div>
						</div>
						<div class="col-12">
							<c:if test="${list.id eq sessionScope.userID}">
								<input type="button"  class="btn foode-btn"  onClick="location.href='deleteRequest?num=${list.num}'" style="cursor:pointer;" value="delete">
								<input type="button"  class="btn foode-btn" onClick="location.href='updatePage?num=${list.num}'"  value="update">
							</c:if>
						</div>
					</div>
					<%-- <%@include file="../admin/requestComment.jsp" %> --%>

					<div class="commentDiv">
						<div class="readComment">
							 <form id="commentListForm" name="commentListForm" method="post">
				       			 <div id="commentList">
				       			 
				      			  </div>
				      		</form>
							</div>
							<div class="writeComment">
								<form id="commentForm" name="commentForm" method="post">
								<input type="text" class="form-control" name="comment" id="comment" placeholder="댓글 쓰기..." >
								<input type="button" class="btn foode-btn" id="commentAddBtn" onClick="fn_comment('${list.num }')" value="쓰기">
								<input type="hidden" id="num" name="num" value="${list.num} ">
								<input type="hidden" id="writer" name="writer" value="${sessionScope.userID}">
								<input type="hidden" id="codate" name="codate" value="2020-01-22">
								</form>
							</div>
						</div>
				
<script>

/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
 $(document).ready(function() { 
	 var key ='userID';
	 var value=document.getElementById('writer').value;
	 window.sessionStorage.setItem(key, value);
	 getCommentList(); 
 });

/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/addComment.do'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
            	getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
function deleteComment(num){
	$.ajax({
        type:'POST',
        url : "<c:url value='/deleteComment.do'/>",
        data:$("#commentListForm").serialize(),
        success : function(data){
            if(data=="success")
            {
            	alert(num);
            	getCommentList();
            	alert('댓글이 삭제 되었습니다.');
            }
        },
        error:function(request,status,error){
            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}

function modifyComment(num){
	var comment=document.getElementById('myComment'+num).value;
	
	if(document.getElementById('modifyBtn'+num).value=='완료'){
		$.ajax({
	        type:'POST',
	        url : "<c:url value='/modifyComment.do'/>",
	        data:{'conum' : num, 'comment' : comment},
	        success : function(data){
	            if(data=="success")
	            {
	            	alert('댓글이 수정 되었습니다.');
	            	getCommentList();
	                $("#myComment").val("");
	                $("#modifyBtn").val("수정");
	            }
	        },
	        error:function(request,status,error){
	            alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
	       }
	        
	    });
	}
	else{
		alert(comment);
		document.getElementById('myComment'+num).removeAttribute("disabled");
		document.getElementById('myComment'+num).style.border='1px solid lightgray';
		document.getElementById('modifyBtn'+num).value='완료';
	}
}

function getCommentList(){
    $.ajax({
        type:'GET',
        url : "<c:url value='/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
        	
            var html = "";
            var cCnt = data.length;
           		 html += "<h5><strong>Comment</strong></h5>";
            if(data.length > 0){
            	
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div align='left'><table class='table'><tr><td></td></tr></table>";
                    html += "<h6><strong>"+data[i].writer+" </strong></h6>";
                    html += "<textarea  name='comment' class='myComment' id='myComment"+data[i].conum+"' disabled>"+data[i].comment+"</textarea>" ;
                    html += "<h6>"+data[i].codate+"</h6>";
                    html += "</div>";
                    if(data[i].writer == sessionStorage.getItem('userID')){
                    html += "<div align='right'>";
                    html += "<input type='button' id='modifyBtn"+data[i].conum+"' onclick='modifyComment("+data[i].conum+")' value='수정'>";
                    html += "<input type='button' onclick='deleteComment("+data[i].conum+")'  value='삭제'>";
                    html += "<input type='hidden' name='conum'  value="+data[i].conum+">";
                    html += "</div>";
                    }
                    html += "</div>";
                }
                
            } else {
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
            	alert(status);
       }
        
    });
}
 
</script>
			</div>
		</div>
	</div>
   </div>
</section>
<!-- ##### Blog Content Area End ##### -->
<%@include file="../include/footer.jsp"%>
</body>
</html>