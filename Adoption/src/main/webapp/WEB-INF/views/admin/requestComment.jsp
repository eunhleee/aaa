<%@ page  pageEncoding="utf-8"%> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
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
				<input type="hidden" id="writer" name="writer" value="${sessionScope.userID} ">
				<input type="hidden" id="codate" name="codate" value="2020-01-22">
				</form>
			</div>
		</div>

		<script>


		 $(document).ready(function() { 
			 getCommentList(); 
		 });

/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/board/addComment.do'/>",
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
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */

function getCommentList(){
   
    $.ajax({
        type:'GET',
        url : "<c:url value='/board/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
           
            var html = "";
            var cCnt = data.length;
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].writer+"</strong></h6>";
                    html += data[i].comment + "<tr><td></td></tr>";
                    html += "</table></div>";
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