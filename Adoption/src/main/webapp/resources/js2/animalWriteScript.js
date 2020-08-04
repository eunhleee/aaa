var form = document.w_form;
  var oEditors = [];
  nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: "textAreaContent",
      sSkinURI: "resources/editor/SmartEditor2Skin.html",
      fCreator: "createSEditor2"
  });
   
  // submit
  function submitContents(elClickedObj) {
      // 에디터의 내용이 textarea에 적용된다.
      oEditors.getById["textAreaContent"].exec("UPDATE_CONTENTS_FIELD", [ ]);
      var con = document.w_form.content;
      con.value = document.getElementById("textAreaContent").value;
      try {
    	  var f = document.w_form;
    	  if(f.name.value=="") {
    		  alert("이름을 입력해 주세요.");
    		  f.name.focus();
    		  return;
    	  }
    	  if(f.age.value=="") {
    		  alert("나이를 입력해 주세요.");
    		  f.age.focus();
    		  return;
    	  }
    	  if(f.gender.value=="") {
    		  alert("성별을 입력해 주세요.");
    		  f.gender.focus();
    		  return;
    	  }
    	  if(f.area.value=="") {
    		  alert("발견된 장소를 입력해 주세요.");
    		  f.area.focus();
    		  return;
    	  }
    	  if(f.protect_date.value=="") {
    		  alert("보호기간을 입력해 주세요.");
    		  f.protect_date.focus();
    		  return;
    	  }
    	  if(f.color.value=="") {
    		  alert("털색을 입력해 주세요.");
    		  f.color.focus();
    		  return;
    	  }
    	  if(f.kind3.value=="") {
    		  alert("품종을 입력해 주세요.");
    		  f.kind3.focus();
    		  return;
    	  }
    	  if(f.weight.value=="") {
    		  alert("체중을 입력해 주세요.");
    		  f.weight.focus();
    		  return;
    	  }
    	  if(f.inoculation.value=="") {
    		  alert("접종유무를 입력해 주세요.");
    		  f.inoculation.focus();
    		  return;
    	  }
    	  if(f.etc.value=="") {
    		  alert("기타를 입력해 주세요.(없으면 없음 이라고 입력해 주세요!)");
    		  f.etc.focus();
    		  return;
    	  }
    	  if(f.file.value=="") {
    		  alert("이미지를 첨부해 주세요.");
    		  f.file.focus();
    		  return;
    	  }
          elClickedObj.form.submit();
      } catch(e) {
       
      }
  }
   
  // textArea에 이미지 첨부
  function pasteHTML(filepath){
      var sHTML = '<img src="<%=request.getContextPath()%>/resources/editor/upload/'+ filepath + '">';
	  oEditors.getById["textAreaContent"].exec("PASTE_HTML", [ sHTML ]);
  }
  
  