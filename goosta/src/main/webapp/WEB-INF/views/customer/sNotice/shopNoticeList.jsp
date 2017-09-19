<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">

<!-- CSS -->
	<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/customer/shopNoticeList.css" rel="stylesheet" media="screen">
    
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
   
   	<!-- JS -->
   	<script src="http://code.jquery.com/jquery.js"></script>
   	<script src="resources/js/customer/customer.js"></script>
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
	
	$("#notice_table_tr td").eq(0).css("width", "10%");
	$("#notice_table_tr td").eq(1).css("width", "60%");
	$("#notice_table_tr td").eq(2).css("width", "20%");
	$("#notice_table_tr td").eq(3).css("width", "10%");
});
</script>
<title>공지사항</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="container-fluid">
	<div id="menu" onclick="location.href='viewCustomer.do';">
		<ul id="menu_ul">
			<li><a href="viewShopNotice.do" style="background:#027dbf; color:white;">공지사항</a></li>
			<li id="center_li"><a href="viewfaq.do">FAQ</a></li>
			<li><a>1:1 문의</a></li>
		</ul>
	</div>
		
<div id="title">공지사항</div>
<table id="notice_table">
	<tr id="notice_table_tr"><td>번호</td><td>제목</td><td>작성일</td><td>조회수</td></tr>
		<c:forEach items="${NoticeList }" var="notice">
			<tr><td>${notice.boardno }</td>
			<td><a href="shopNoticeDetail.do?boardno=${notice.boardno }">${notice.boardtitle }</a></td>
			<td>${notice.boarddate }</td><td>${notice.readcount }</td></tr>	
		</c:forEach>
</table>
<c:if test="${loginUser.memberid eq 'admin'}">
<div id="write_div">
<a id="writeBtn" href="viewShopNoticeWrite.do">글쓰기</a>
</div>
</c:if>
<!-- 페이징 처리  -->		
<div id="pagingDiv">
<table id="pagingTable">
<tr>
<td align="center"> 
<a href="viewShopNotice.do?pageNumber=1">◀</a>
<c:if test="${startPage>1}"> 
<a href="viewNotice.do?pageNumber=${startPage-1}&keyword=${keyword}">◀</a>
</c:if>
<c:if test="${startPage<=1}"> 
<a href="">◀</a>
</c:if>
<c:forEach var="i" begin="${startPage}" end="${endPage}"> 
<c:choose>
<c:when test="${pageNumber == i }">
<a href="viewShopNotice.do?pageNumber=${i}&keyword=${keyword}">${i}</a> 
</c:when>
<c:otherwise>
<a href="viewShopNotice.do?pageNumber=${i}&keyword=${keyword}" >${i}</a> 
</c:otherwise>
</c:choose>
</c:forEach>
<c:if test="${endPage < totalPageCount}">
<a href="viewShopNotice.do?pageNumber=${endPage+1}&keyword=${keyword}">▶</a>
</c:if>
<c:if test="${endPage >= totalPageCount}">
<a href="#">▶</a>
</c:if>
<a href="viewShopNotice.do?pageNumber=${totalPageCount}&keyword=${keyword}">▶</a>
</td>
</tr>
</table>
</div>
<!-- 검색 기능  -->		
 <div id="search_div">
	<form action="shopNoticeSearch.do" method="post">
		<input type="text" id="search_input" name="keyword"> <input type="submit" id="search_button" value="검색">
	</form>
 </div>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>