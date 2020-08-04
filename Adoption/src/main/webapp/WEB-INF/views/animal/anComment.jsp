<!-- anComment.jsp -->
<%@ page pageEncoding="utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
<body>
<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comments</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width:100%" rows="3" cols="30" id="comment" name="acContent" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment(${animal.num})" class="btn pull-right btn-success">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="anNum" name="anNum" value="${animal.num}"/>
		<input type="hidden" id="writer" value="${sessionScope.userID}"/>
		<input type="hidden" id="master" value="${sessionScope.userGrade}"/>
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>
 
<script>
/*
 * 댓글 등록하기(Ajax)
 */
 var key1 = 'userID';
 var key2 = 'userGrade';
 var value = document.getElementById('writer').value;
 var master = document.getElementById('master').value;
 window.sessionStorage.setItem(key1, value);
 window.sessionStorage.setItem(key2, master);
 var writer = window.sessionStorage.getItem(key1);
 var master1 = window.sessionStorage.getItem(key2);
function fn_comment(code){
    $.ajax({
        type:'POST',
        url : "<c:url value='/animal/addComment.do'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            } else if (data=="fail") {
            	alert("로그인 후 이용가능합니다.");
            	return;
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
// /*
//  * 댓글 수정하기(Ajax)
//  */
// function fn_updatecomment(code){
    
//     $.ajax({
//         type:'POST',
//         url : "<c:url value='/animal/updateComment.do'/>",
//         data:$("#commentListForm").serialize(),
//         success : function(data){
//             if(data=="success")
//             {
//                 getCommentList();
//                 $("#comment").val("");
//             }
//         },
//         error:function(request,status,error){
//             //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
//        }
        
//     });
// }
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function fn_update(acNum){
//     var a ='';
    
//     a += '<div class="input-group">';
//     a += '<input type="text" class="form-control" name="content_'+acNum+'" value="'+content+'"/>';
//     a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="fn_updatecomment('+acNum+');">수정</button> </span>';
//     a += '</div>';
    
//     $('.commentContent'+acNum).html(a);
	if(document.getElementById('updateBtn'+acNum).value=="완료"){
		var content = document.getElementById('ancomment'+acNum).value;
		fn_updatecomment(acNum, content);
	}
	else{
		document.getElementById('ancomment'+acNum).removeAttribute("disabled");
		$("#updateBtn"+acNum).val("완료");
	}
    
}
//댓글 수정
function fn_updatecomment(acNum, content){
//     var updateContent = $('[name=content_'+acNum+']').val();
   
    $.ajax({
        url : "<c:url value='/animal/updateComment.do'/>",
        type : 'post',
        data :{'acNum' : acNum, 'acContent' : content},
        success : function(data){
        	if(data=="success")
            {
                getCommentList();
                $("#updateBtn"+acNum).val("수정");
            }
        }
    });
}
/*
 * 댓글 삭제하기(Ajax)
 */
function fn_deletecomment(acNum){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/animal/deleteComment.do'/>",
        data : {'acNum' : acNum},
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/animal/commentList.do'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].acId+"</strong></h6>";
                    html += "<input type='text' id='ancomment"+data[i].acNum+"' name='acContent' class='form-control' style='white-space:pre-line;' value='"+data[i].acContent+"' disabled><tr><td>";
                    html += "<input type='hidden' value='"+data[i].acNum+"' name='acNum'>";
                    if(data[i].acId==writer ||master1 == 0) {
                    html += "<button type='button' onclick='fn_deletecomment("+data[i].acNum+")' class='btn pull-right btn-success'>삭제</button>";
                    html += "<input type='button' onclick='fn_update("+data[i].acNum+")' id='updateBtn"+data[i].acNum+"' class='btn pull-right btn-success' value='수정'>";
                    }
                    html += data[i].acRegdate;
                    html += "</td></tr></table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><p class='anltext1'>등록된 댓글이 없습니다.</p>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
       }        
    });
}
</script>
</body>
</html>