var anNum = '${animal.num}'; //게시글 번호
 
$('[name=acInsertBtn]').click(function(){ //댓글 등록 버튼 클릭시 
    var insertData = $('[name=acInsertForm]').serialize(); //acInsertForm의 내용을 가져옴
    commentInsert(insertData); //Insert 함수호출(아래)
});
 
 
 
//댓글 목록 
function acList(){
    $.ajax({
        url : '/ancomment/acList',
        type : 'get',
        data : {'anNum':anNum},
        success : function(data){
            var a =''; 
            $.each(data, function(key, value){ 
                a += '<div class="acArea" style="border-bottom:1px solid darkgray; margin-bottom: 15px;">';
                a += '<div class="acInfo'+value.acNum+'">'+'댓글번호 : '+value.acNum+' / 작성자 : '+value.acId;
                a += '<a onclick="acUpdate('+value.acNum+',\''+value.acContent+'\');"> 수정 </a>';
                a += '<a onclick="acDelete('+value.acNum+');"> 삭제 </a> </div>';
                a += '<div class="acContent'+value.acNum+'"> <p> 내용 : '+value.acContent +'</p>';
                a += '</div></div>';
            });
            
            $(".acList").html(a);
        }
    });
}
 
//댓글 등록
function acInsert(insertData){
    $.ajax({
        url : '/ancomment/acInsert',
        type : 'post',
        data : insertData,
        success : function(data){
            if(data == 1) {
                acList(); //댓글 작성 후 댓글 목록 reload
                $('[name=acContent]').val('');
            }
        }
    });
}
 
//댓글 수정 - 댓글 내용 출력을 input 폼으로 변경 
function acUpdate(acNum, content){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+acNum+'" value="'+content+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="acUpdateProc('+acNum+');">수정</button> </span>';
    a += '</div>';
    
    $('.acContent'+acNum).html(a);
    
}
 
//댓글 수정
function acUpdateProc(acNum){
    var updateContent = $('[name=content_'+acNum+']').val();
    
    $.ajax({
        url : '/ancomment/acUpdate',
        type : 'post',
        data : {'accontent' : updateContent, 'acNum' : acNum},
        success : function(data){
            if(data == 1) acList(acNum); //댓글 수정후 목록 출력 
        }
    });
}
 
//댓글 삭제 
function acDelete(acNum){
    $.ajax({
        url : '/ancomment/acDelete',
        type : 'post',
        success : function(data){
            if(data == 1) acList(acNum); //댓글 삭제후 목록 출력 
        }
    });
}
 
 
 
 
$(document).ready(function(){
    commentList(); //페이지 로딩시 댓글 목록 출력 
});

