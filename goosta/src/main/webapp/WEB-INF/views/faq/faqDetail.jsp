<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">

<!-- CSS -->
	<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="resources/css/faq/faq.css?ver=3" rel="stylesheet" media="screen">
	<link href="resources/css/faq/faqDetail.css" rel="stylesheet" media="screen">
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
	
	$("#faqDetail_tr td").eq(0).css("font-weight", "bold", "font-family", "맑은 고딕", "width", "70%");
	$("#faqDetail_tr td").eq(1).css("text-align", "center", "width", "20%");
	$("#faqDetail_tr td").eq(2).css("text-align", "center", "width", "10%");
	$("#faqDetail_tr td span").css("color", "gray");
	$("#faqContent_div").css("color", "gray");
});
</script>
<title>FAQ 상세보기</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="container-fluid" style="height:630px;">
	<div id="menu" onclick="location.href='viewCustomer.do';">
		<ul id="menu_ul">
			<li><a href="viewShopNotice.do">공지사항</a></li>
			<li id="center_li"><a href="viewfaq.do"style="background: #027dbf; color: white;">FAQ</a></li>
			<c:if test="${!empty loginUser}">
				<li><a href="viewquestion.do">1:1 문의</a></li>
				</c:if>
				<c:if test="${empty loginUser}">
				<li><a href='login.do'>1:1 문의</a></li>
				</c:if>
		</ul>
	</div>
<table id="faqDetail_table">
	<tr id="faqDetail_tr">
		<td>&nbsp;&nbsp;&nbsp;${faq.ftitle }</td>
		<td>작성일&nbsp;&nbsp;<span>${faq.fdate }</span></td>
		<td>조회수&nbsp;&nbsp;<span>${faq.fcount }</span></td></tr>
	<tr><td id="faqContent_td" colspan="3"><div id="faqContent_div">${faq.fcontent }</div></td></tr>
</table>
<div id="btn_div">
<a id="toListBtn2" href="viewfaq.do">목록</a>
<c:if test="${loginsUser.memberid eq 'admin'}"><a id="toListBtn1" href="viewUpdateFaq.do?fid=${faq.fid }">수정</a></c:if>
</div>
</div>
	<c:import url="/WEB-INF/views/common/footer.jsp" />
</body>
</html>