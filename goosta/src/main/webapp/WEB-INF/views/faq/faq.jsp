<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html5>
<html lang="ko">
<head>
<meta charset="utf-8">
	
	<!-- CSS -->
	<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="resources/css/faq/faq.css?ver=3" rel="stylesheet" media="screen">
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">

    
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
   
   	<!-- JS -->
   	<script src="http://code.jquery.com/jquery.js"></script>
   	<script src="resources/js/faq/faq.js"></script>
   	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
	<script src="resources/js/main/jquery.nicescroll.min.js" type="text/javascript"></script>
	<script src="resources/js/main/superfish.min.js" type="text/javascript"></script>
	<script src="resources/js/main/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="resources/js/main/owl.carousel.js" type="text/javascript"></script>
	<script src="resources/js/main/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/js/footer/jquery.scrolltop.js"></script>

<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});	
	
	$("#content_tr td").eq(0).css("width", "10%");
	$("#content_tr td").eq(1).css("width", "60%");
	$("#content_tr td").eq(2).css("width", "20%");
	$("#content_tr td").eq(3).css("width", "10%");
});
</script>
<title>FAQ</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="container-fluid">
		<div id="menu" onclick="location.href='viewCustomer.do';">
			<ul id="menu_ul">
				<li><a href="viewShopNotice.do">공지사항</a></li>
				<li id="center_li"><a href="viewfaq.do" style="background:#027dbf; color:white;">FAQ</a></li>
				<c:if test="${!empty loginUser}">
				<li><a href="viewquestion.do">1:1 문의</a></li>
				</c:if>
				<c:if test="${empty loginUser}">
				<li><a href='login.do'>1:1 문의</a></li>
				</c:if>
			</ul>
		</div>
		<div id="title">
		FAQ
		</div>
		<table id="submenu_table">
			<tr id="submenu_tr">
				<th><a href="viewfaq.do" style="background:#027dbf; color:white;">전체</a></th>
				<th><a href="faqType.do?answertype=배송">배송</a></th>
				<th><a href="faqType.do?answertype=주문">주문/결제</a></th>
				<th><a href="faqType.do?answertype=교환">교환/반품</a></th>
				<th><a href="faqType.do?answertype=회원">회원</a></th>
				<th><a href="faqType.do?answertype=기타">기타</a></th>
			</tr>
		</table>
		<table id="faq_table">
			<tr id="faq_table_menutr">
				<td>번호</td>
				<td>제목</td>
				<td>작성일</td>
				<td>조회수</td>
			</tr>
			<c:forEach items="${list}" var="faq">
			<tr id="content_tr">
				<td>${faq.fid }</td>
				<td><a href="faqDetail.do?fid=${faq.fid }">${faq.ftitle }</a></td>
				<td>${faq.fdate }</td>
				<td>${faq.fcount }</td>
			</tr>
			</c:forEach>
			<tr>
		</table>
		<div>
<c:if test="${loginsUser.memberid eq 'admin'}">
<div id="write_div">
<a id="writeBtn" href="viewInsertFaq.do">글쓰기</a>
</div>
</c:if>		
<!-- 페이징 처리  -->		
<div id="pagingDiv">
<table id="pagingTable">
<tr>
<td colspan="5" align="center"> 
<a href="viewfaq.do?pageNumber=1">◀</a>
<c:if test="${startPage>1}"> 
<a href="viewfaq.do?pageNumber=${startPage-1}">◀</a>
</c:if>
<c:if test="${startPage<=1}"> 
<a href="">◀</a>
</c:if>
<c:forEach var="i" begin="${startPage}" end="${endPage}"> 
<c:choose>
<c:when test="${pageNumber == i }">
<a href="viewfaq.do?pageNumber=${i}">${i}</a> 
</c:when>
<c:otherwise>
<a href="viewfaq.do?pageNumber=${i}" >${i}</a> 
</c:otherwise>
</c:choose>
</c:forEach>
<c:if test="${endPage < totalPageCount}">
<a href="viewfaq.do?pageNumber=${endPage+1}">▶</a>
</c:if>
<c:if test="${endPage >= totalPageCount}">
<a href="#">▶</a>
</c:if>
<a href="viewfaq.do?pageNumber=${totalPageCount}">▶</a>
</td>
</tr>
</table>
</div>
</div>
<!-- 검색 기능  -->		
 <div id="search_div">
	<form action="faqSearch.do" method="post">
		<input type="text" id="search_input" name="keyword"> <input type="submit" id="search_button" value="검색">
	</form>
 </div>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>