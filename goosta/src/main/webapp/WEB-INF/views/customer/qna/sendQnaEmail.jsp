	<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
<link href="resources/css/qna/sendQnaEmail.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
$(document).ready(function(){
$("#send").click(function(){
	 	$.ajax({
	          url: "sendQnaEmail.do",
	          method:"POST",
	         async:true, 
	          data:{
	        	  email : $('#email').val(),
	        	  questionno : $('#questionno').val(),
	        	  content : $('#content').val(),
	        	  title : $("#title_input").val()
	          },
	          success: function(data) {
	        	  alert("메일 발송이 완료되었습니다.");
	        	  opener.parent.toList();
	        	  self.close();
	        	  },
	        	  beforeSend:function(){
	        	       // (이미지 보여주기 처리)
	        	        $('.wrap-loading').removeClass('display-none');
	        	    },
	        	    complete:function(){
	        	       // (이미지 감추기 처리)
	        	        $('.wrap-loading').addClass('display-none');
	        	    },
	        	    error: function(error){
	  	        	  alert("이메일 발송에 실패했습니다.");
	  	        	  self.close();
	  	          }
	 	});
	});
});
</script>
<title>qna 문의 답변 메일 보내기</title>
</head>
<body>
<div class="wrap-loading display-none" id="image">
    <div><img src="resources/images/ysw/call.gif" /></div>
</div>  
<header><label>1:1문의</label></header>
<div id="banner"><font color="#027dbf">${memberid }</font> 회원님에게 보낼 답변을 입력해주세요.</div>
<div id="content_div">
<input type="hidden" value="${questionemail }" id="email">
<input type="hidden" value="${questionno}" id="questionno">
<table id="content_table">
<tr><td id="title_td">제목</td>
<td id="input_title_td"><input type="text" value="&nbsp;[${memberid }] 님의 문의내용에 대한 답변입니다." name="title" id="title_input"></td></tr>
<tr><td colspan="2"><textarea id="content" placeholder="내용을 입력해 주세요."></textarea></td></tr>
</table>
<div id="btn_div"><input id="cancle" type="button" value="취소"><input id="send" type="button" value="보내기"></div>
</div>
</body>
</html>