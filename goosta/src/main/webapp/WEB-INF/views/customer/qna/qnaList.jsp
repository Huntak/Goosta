<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>1:1 문의 내역</title>
<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/qna/qnaList.css" rel="stylesheet" type="text/css" />
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

<script type="text/javascript">
$(document).ready(function(){
	$("#selecter").change(function(e){
		e.preventDefault();
		var type = "문의유형순"
		if($("#selecter").val() == type){
			location.href="qnaManagerType.do?qnatype='문의유형순'";
		}else{
			location.href="qnaManagerType.do?qnatype='최근날짜순'";
		}
	});
});
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div id="title">
	| QnA MANAGER
</div>
<section>	
<div id="sort">
<select id="selecter">
<option selected>선택</option>
<option id="type">문의유형순</option>
<option id="date">최근날짜순</option>
</select>
</div>
	<div id="contents">
		<table>
			<tr class="tr1" align="center" >
				<th  id="#qnatype">문의유형</th>
				<th  id="memberid">회원ID</th>
				<th id="qnatitle">제목</th>
				<th id="qnadate">작성날짜</th>
				<th id="status">답변여부</th>
			</tr>
			<c:forEach items="${ qnaList }" var="qna">
			<tr align="center" height="50px">
				<td class="member_value">${qna.questiontype }</td>
				<td class="member_value">${qna.memberid }</td>
				<td class="member_value"><a href="qnaDetail.do?questionno=${qna.questionno }">${qna.questiontitle }</a></td>
				<td class="member_value">${qna.questiondate }</td>
				<td class="member_value"><c:if test="${qna.questionstatus == 'N'}">미완료</c:if><c:if test="${qna.questionstatus == 'Y'}">완료</c:if></td>
			</tr>
			</c:forEach>
		</table>
		</div>
</section>
<!-- <footer></footer> -->
<c:import url="/WEB-INF/views/common/footer.jsp"></c:import>
</body>
</html>