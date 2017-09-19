<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

 <!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/qna/qnaWrite.css" rel="stylesheet" type="text/css" />
    
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
	
<script type="text/javascript">
$(document).ready(function(){
	$("#questiontype").change(function(){
		var email = $("#email1").val()+'@'+$("#email2").val();
		$("#questionemail").val(email);
	});
	
});
$("#submit").click(function(){
	alert("1:1문의가 완료되었습니다.");
});

function checkemailaddy(){
	if ($("#email_select").val() == "self") {
			$("#email2").val(" ");
            $("#email2").focus();
        }
        else {
        	  $("#email2").val($("#email_select").val()); 
        }
}
</script>	
<title>1:1문의</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="container-fluid" >
	<div id="menu" onclick="location.href='viewCustomer.do';">
		<ul id="menu_ul">
			<li><a href="viewShopNotice.do">공지사항</a></li>
			<li id="center_li"><a href="viewfaq.do">FAQ</a></li>
			<li><a href="viewquestion.do" style="background: #027dbf; color: white;">1:1 문의</a></li>
		</ul>
	</div>
<div id="title">1:1 문의</div>
<form action="writeQna.do" method="post" id="qnaForm">
<input type="hidden" value="" name="questionemail" id="questionemail">
	<table id="qnatable">
		<tr><td class="td1">작성자</td><td class="td2"><input type="text" id="writer" value="${loginUser.memberid }" name="memberid" readonly></td></tr>
		<tr><td class="td1"><font color="red">*</font>이메일</td>
		<td class="td2">
		<input name="email1" type="text" id="email1" size="15" required> @ <input name="email2" type="text" id="email2" size="20" required>
	<select name="email_select" id="email_select" onChange="checkemailaddy();">
    <option value="" selected>선택하세요</option>
    <option value="naver.com">naver.com</option>
    <option value="hotmail.com">google.com</option>
    <option value="hanmail.com">daum.net</option>
    <option value="self">직접입력</option>
</select></td></tr>
		<tr><td class="td1"><font color="red">*</font>문의유형</td><td class="td2">
			<select name="questiontype" id="questiontype" required> 
				<option value=" " selected>선택</option>
				<option value="결제">주문</option>
				<option value="결제">결제</option>
				<option value="배송">배송</option>
				<option value="환불">환불</option>
				<option value="기타">기타</option>
			</select></td></tr>
		<tr><td class="td1"><font color="red">*</font>제목</td><td class="td2"><input type="text" id="title_input" name="questiontitle" required></td></tr>
		<tr><td class="td1"><font color="red">*</font>내용</td><td class="td2"><textarea name="questioncontent" form="qnaForm" required></textarea></td></tr>
	</table>
	<label id="must_label"><font color="red">*</font>는 필수 입력사항입니다.</label>
<div id="submit_div">
	<input type="button" value="취소" id="cancle">
	<input type="submit" value="작성" id="submit">
</div>
</form>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>