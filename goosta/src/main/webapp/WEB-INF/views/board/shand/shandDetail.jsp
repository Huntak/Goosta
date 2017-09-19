<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta content="text/html; charset=UTF-8">
<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/shand/shandDetail.css" rel="stylesheet" type="text/css" />
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
    
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
   
   	<!-- JS -->
	<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
	<script src="resources/js/main/jquery.nicescroll.min.js" type="text/javascript"></script>
	<script src="resources/js/main/superfish.min.js" type="text/javascript"></script>
	<script src="resources/js/main/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="resources/js/main/owl.carousel.js" type="text/javascript"></script>
	<script src="resources/js/main/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/js/footer/jquery.scrolltop.js"></script>
		
<title>중고거래 상세보기</title>
<script type="text/javascript">
$(document).ready(function(){
	$('#enroll').on('click', function(){
	 	$.ajax({
	          url: "insertShandReply.do",
	          method:"POST",
	         async:true, 
	          data:{
	        	  boardno : $('#boardno').val(),
	        	  replycontent : $('#comment_content').val(),
	        	  replywriter : $('#replywriter').val()
	          },
	          error: function(error){
	          },
	          success: function(data) {
	        	  $('#comment_content').val("");
	        	  $('#comment_table').html("");
	        	
	   			 $.each(data, function(index, data) {
	   			  $("<tr>" , {
						html : 
							"<td style='width:90%;'>"
							+"<div><span style='margin-right:10px'><b>"+data.replywriter +"</b></span>"
							+"<span style='font-size : 11px;'>"+data.replydate+"</span></div>"
							+"<div>"+data.replycontent+"</div></td>"
					}).css("border-bottom", "1px solid lightgray", "color", "gray").appendTo("#comment_table");
	        	}); //each
	          }//success
		}); 
	}); 	
});
/* function insert(no){
	$("#"+no).show();
} */
function notLogin(){
	$(this).disabled();
	alert("로그인이 필요합니다.");
}
/* function comment(ref,rLev,bNo){
	
	$.ajax({
 		url: "insertShandReReply.do",
         method:"POST",
         async:true, 
          data:{
        	  replyreref : ref,
        	  replyrelev : rLev,
        	  boardno : bNo,
        	  replycontent : $('#rerePly_content').val(),
 		      replywriter : $("#memberid").val()
          },
          success: function(data) {
        	 $('#rerePly_content').val("");
          	$(".rereply").hide();
          }//success
 	
 	});   
}

function selectComment(replyno){
	 var no = 0;
	$.ajax({
 		url: "selectShandReplyComment.do",
         method:"POST",
         async: false,
          data:{
        	  replyno : replyno
          },
          success: function(data) {
        	 $.each(data, function(index, data) {
	   			 var str = "<div style='width:100%; height : 40px;'><div style='border-top:1px solid lightgray;'><b>ㄴ"
	   			 +data.replywriter+"<span><font size='1'>&nbsp;&nbsp;"+data.replydate+"</font></span>"
	   			 +"</b><br><span style='margin-left:20px;'>"+data.replycontent+"</span></div></div>";
        		 $("#b"+no).append(str);
        		 no = data.replyreref
	        	}); 
        	 $("#b"+no).show();
          }//success
 	
 	});   
} */
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="cont758">
      <div class="reportboard">
         <h3>Shand Detail</h3>
      </div>
<!-- 글내용 -->
<div id="golist"><a href="viewShand.do">목록으로</a></div>
<table class="content">
<tr>
	<td id="title_td">&nbsp;&nbsp;&nbsp;&nbsp;<b>${shand.boardtitle }</b>&nbsp;&nbsp;|&nbsp;&nbsp;<font color="blue">${shand.shandbrand }</font></td>
	<td id="date_td"><div id="date_div">등록날짜</div>${shand.boarddate }</td>
	<td id="count_td"><div id="count_div">조회수</div>${shand.readcount }</td></tr>
<tr>
	<td style="border-bottom : 1px dashed gray;">
	<c:if test="${!empty shand.boardimage1 }"><img style="float:left;"width="400px" height="350px;" src="/goosta/resources/uploadFiles/${shand.boardimage1}"/></c:if>
	<c:if test="${empty shand.boardimage1 }"><image style="width:90%; height:180px;"src="resources/images/ysw/noimage.jpg"/></c:if>
	</td>
	<td style="width:70%; border-bottom : 1px dashed gray;" colspan="2">
		<div><font size="5" >[상품 거래]</font></div>
		<div><b>상품 가격 : <fmt:formatNumber value="${shand.shandprice}" type="number"/>원</b></div>
		<div><b>브랜드 : ${shand.shandbrand}</b></div>
		<div style="margin-bottom: 185px; "><b>판매자 : ${shand.boardwriter}</b></div>
	</td>
</tr>
<tr>
	<td colspan="3">
		<div style="text-align : center;"><font size="5">${shand.boardcontent }</font></div>
		<div style="text-align : center;">
		<c:if test="${!empty shand.boardimage1 }"><img class="boardimage" src="/goosta/resources/uploadFiles/${shand.boardimage1}"/></c:if>
		<c:if test="${empty shand.boardimage1 }"><image style="width:90%; height:180px;"src="resources/images/ysw/noimage.jpg"/></c:if>
		<br>
			<c:if test="${shand.boardimage2 != null}"><img class="boardimage" src="/goosta/resources/uploadFiles/${shand.boardimage2}"/><br></c:if>
			<c:if test="${shand.boardimage3 != null}"><img class="boardimage" src="/goosta/resources/uploadFiles/${shand.boardimage3}"/><br></c:if>
			<c:if test="${shand.boardimage4 != null}"><img class="boardimage" src="/goosta/resources/uploadFiles/${shand.boardimage4}"/><br></c:if>
			<c:if test="${shand.boardimage5 != null}"><img class="boardimage" src="/goosta/resources/uploadFiles/${shand.boardimage5}"/><br></c:if>
		</div>
	</td>
</tr>
</table>

<!-- 글수정 & 글삭제  -->
<div class="btn-area">
<a class="btn-ctm btn-blue delete" href="shandDelete.do?boardno=${shand.boardno }">delete</a>
<a class="btn-ctm btn-blue" href="viewShandUpdate.do?boardno=${shand.boardno }">modify</a>
<a class="btn-ctm btn-blue" style="margin-left:456px;"href="salesComplete.do?boardno=${shand.boardno }">판매 완료</a>
</div>

<!-- 댓글 등록과 댓글 출력해주는 부분  -->
<input type="hidden" id="boardno" value="${shand.boardno }">
<input type="hidden" id="replywriter" value="관리자">
<table id="comment_table">
<c:forEach items="${replylist }" var="list">
<tr id="comments">
<td style="width:90%;">
<div>${list.replywriter}&nbsp;&nbsp;${list.replydate }</div>
<div>&nbsp;&nbsp;${list.replycontent}</div></td></tr>
</c:forEach>
</table>
<c:if test="${!empty lgoinUser }">
<table>
<tr>
<td id="comment_td"><textarea id="comment_content" ></textarea></td>
<td id="enroll_td"><input type="button" id="enroll" value="등록"></td></tr>
</table>
</c:if>
<c:if test="${empty lgoinUser }">
<table>
<tr>
<td id="comment_td"><textarea id="comment_content" placeholder="로그인이 필요합니다."></textarea></td>
<td id="enroll_td"><input type="button" id="enroll" value="등록" disabled></td></tr>
</table>
</c:if>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>