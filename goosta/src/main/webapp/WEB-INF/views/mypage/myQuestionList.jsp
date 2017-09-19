<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>goosta</title>

<!-- CSS -->
<link href="resources/css/header/header.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/main/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="resources/css/footer/footer.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" href="resources/css/footer/jquery.scrolltop.css">
<!-- 		<link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" />
 -->
<!-- FONTS -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link
	href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">

<!-- JS -->
<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
<script src="resources/js/main/jquery.nicescroll.min.js"
	type="text/javascript"></script>
<script src="resources/js/main/superfish.min.js" type="text/javascript"></script>
<script src="resources/js/main/jquery.flexslider-min.js"
	type="text/javascript"></script>
<script src="resources/js/main/owl.carousel.js" type="text/javascript"></script>
<script src="resources/js/main/bootstrap.min.js" type="text/javascript"></script>
<script src="resources/js/footer/jquery.scrolltop.js"></script>

<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<script
	src="http://www.blueb.co.kr/SRC2/swipemenu/jquery.touchSwipe.min.js"></script>

<style type="text/css">

/*		 	사이드메뉴 			*/
.container_s {
	width: 776px;
	padding: 0 300px;
}

.global_mypage_lnb {
	padding-top: 180px;
}

#global_container_s.container_s .cat_order {
	width: 900px;
	padding-top: 66px;
	padding-bottom: 1px;
	_text-align: center;
}

.container_s  .cat_order .mycat h1 {
	text-align: center;
}

.cat_order {
	margin: -480px 229px 0px;
	height: 734px;
}

.container_s .cat_order {
	_float: right;
	padding: 160px 0 89px;
}

#global_container_s .cat_order {
	position: relative;
	padding-top: 120px;
}

.container_s .cat_order .mycat h1 {
	text-align: center;
}

.container_s .cat_order .mycat {
	width: 900px;
	border-bottom: none;
	margin-bottom : 59px;
}

.container_s .cat_order h2.tit3.g_title_line {
	padding-bottom: 10px;
	border-bottom: 1px solid #999;
}

.container_s .cat_order h2.tit3.g_title_line+.texyN3 {
	margin-top: -25px;
}

.container_s .cat_order div.texRE div {
	margin-top: -3px;
}

.container_s .cat_order div.texRE div.nt {
	margin-top: -9px;
}

h2 {
	display: block;
	font-size: 1.5em;
	-webkit-margin-before: 0.83em;
	-webkit-margin-after: 0.83em;
	-webkit-margin-start: 0px;
	-webkit-margin-end: 0px;
	font-weight: bold;
}

.container_s ul.tabN {
	height: auto;
	border: 1px solid #dfdfdf;
	border-top: 1px solid #333;
	background: #f7f7f7;
	margin: 15px 0;
}

ul, ol {
	list-style: none;
}

:hov

.cls

element.style {
	margin-top: 0px;
	border-top: 1px solid #333;
}

element.style {
	padding: 80px 0;
	text-align: center;
}

order_popup.css: 110 .reviewNT table tr td {
	border-bottom: 1px #BABCBB solid;
}

.reviewNT table tr td {
	border-bottom: 1px #BABCBB solid;
}

.tabN {
	text-align: center;
}

table {
	border-collapse: collapse;
}

.global_content .reviewNT table {
	width: 100% !important;
	border-top: 1px solid #333;
}

table {
	display: table;
	border-spacing: 2px;
	border-color: grey;
	width: 100%;
}

td, th {
	display: table-cell;
	vertical-align: inherit;
}

.global_content .global_mypage_lnb {
	float: left;
	width: 180px;
	padding: 160px 0 60px;
}

.global_mypage_lnb ul {
	padding: 15px 0;
	border-top: 1px solid #d9d9d9;
}

/* 				사이드메뉴 끝				 */

/* 주문결제 배송중 취소반품 1:1문의내역 카운트 */

/*             주문결제 배송중 취소반품 1:1문의내역 카운트  끝                        */

/* 기간별,직접입력조회 */
.cat_order .join3 {
	padding: 23px 25px 0;
	margin: 10px 0 30px;
	height: 65px;
	border: 1px solid #ccc;
	background: #eee;
}

.cat_order .join3 div.fL {
	float: left;
}

:hov

.cls

element.style {
	cursor: pointer;
}

.cat_order .join3 input {
	width: 70px;
	height: 30px;
	padding: 0;
	text-align: center;
	font-size: 12px;
	letter-spacing: 0;
	border: 1px #ccc solid;
	color: #666;
}

.cat_order .join3 input {
	width: 90px;
	border: 1px #ccc solid;
	padding: 3px;
	color: #666;
	vertical-align: middle;
}

.cat_order .join3 strong {
	display: inline-block;
	margin-right: 5px;
	line-height: 30px;
	font-size: 14px;
}

.cat_order .join3 div.fR {
	float: right;
}

/*     기간별,직접입력조회 끝            */

/* 주문번호 상품 테이블 */
table {
	display: table;
	border-collapse: separate;
	border-spacing: 2px;
	border-color: grey;
}

table {
	border-collapse: collapse;
}

.orderList table th {
	height: 39px;
	padding: 0;
	font-size: 12px;
	border-top: 1px solid #111;
	text-align : center;
}

body, input, select, div, textarea, table, button {
	font-size: 12px;
	font-family: helvetica, arial, verdana, tahoma, 'NanumGothic', '나눔고딕',
		Malgun Gothic, '맑은고딕', Apple Gothic, Dotum, '돋움', sans-serif;
	letter-spacing: -1px;
	color: #444;
}

.orderList table td {
	border-top: 1px solid #e5e5e5;
	border-bottom: 1px solid #e5e5e5;
}

.orderList table td {
	padding: 15px 0 12px;
	text-align: center;
	border-top: 1px #ccc solid;
	border-bottom: 1px #ccc solid;
}
/*		주문번호 상품 테이블 끝 		*/

/* 		최근3개월		 */
.container_s .content p {
	width: 100%;
	line-height: 160%;
}

.cn_tex #txt_period {
	color: #fa5400;
}

caption {
	display: none;
}

/*		최근3개월 끝 		*/
</style>

<script>
	$(window).load(
			function() {
				$("[data-toggle]").click(function() {
					var toggle_el = $(this).data("toggle");
					$(toggle_el).toggleClass("open-sidebar");
				});
				$(".swipe-area").swipe(
						{
							swipeStatus : function(event, phase, direction,
									distance, duration, fingers) {
								if (phase == "move" && direction == "right") {
									$(".container_s").addClass("open-sidebar");
									return false;
								}
								if (phase == "move" && direction == "left") {
									$(".container_s").removeClass(
											"open-sidebar");
									return false;
								}
							}
						});
			});
</script>

<script type="text/javascript">
/* 스크롤탑 안됨 */
/* jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
}); */

$(function(){
	$("#myreview").click(function(){
		var loginUser = $("#loginUser").val();
		var loginUserId = $("#loginUserId").val();
		
		if(loginUser != null && loginUser != ""){
			document.location.href="myreview.do?search_option=boardwriter&search=" + loginUserId;
		}else{
			alert("로그인해주세요.");
		}
	});
});
</script>
</head>
<body>
	<!-- HEADER -->
	<c:import url="/WEB-INF/views/common/header.jsp" />
	<!-- HEADER -->


	<!-- container_s -->
	<div class="container_s" id="global_container_s">
		<div class="global_mypage_lnb">
			<div class="global_nav_tit">
				<h2>
					<span> 일반회원</span><strong> lcs89</strong>님
				</h2>
			</div>
			<ul>
	          		<li><a href="order.do?memberid=${loginUser.memberid }">주문배송</a></li>
			</ul>
	
			<ul>
			
				<li><a href="mile.do?memberid=${loginUser.memberid }">나의 MiLE</a></li>
				<li>
					<input type="hidden" value="${ loginUser }" id="loginUser">
					<c:if test="${ !empty loginUser }">
						<input type="hidden" value="${ loginUser.memberid }" id="loginUserId">
					</c:if>
					<a href="#" onclick="return false;" id="myreview">나의 상품리뷰</a>
				</li>
			</ul>
	
			<ul>
				<li><a href="viewMyQnaList.do?memberid=${loginUser.memberid }">1:1 E-mail 문의</a></li>
			</ul>
	
			<ul>
				<li><a href="upenroll.do">회원정보관리</a></li>
				<li><a href="delm.do">회원탈퇴</a></li>				
			</ul>
		</div>

		<div class="cat_order">
			<div class="mycat">
				<h1>
					<img alt="마이페이지" src="resources/images/mypage/mypage.gif">
				</h1>
			</div>
			<h2 class="tit3">1:1 문의 내역</h2>
			<!-- orderList -->
			<div class="orderList" style="margin-top: 10px;">
				<table>
					<caption>나의 1:1 문의 내역</caption>
					<colgroup>
						<col style="width: 150px; text-align:center;">
						<col style="width: 600px; text-align:center;">
						<col style="width: 150px; txt-align:center;">
						<col style="width: 100px; text-align:center;">
					</colgroup>
					<thead>
						<!-- thead 추가 #nike -->
						<tr>
							<th>문의유형</th>
							<th>제목</th>
							<th>작성날짜</th>
							<th>답변여부</th>
						</tr>
					</thead>
					<tbody>
						<!-- tbody 추가 #nike -->
						<c:forEach items="${qna }" var="a">
							<tr>
								<td class="lns01">${a.questiontype}</td>
								<td class="lns01">${a.questiontitle}</td>
								<td class="lns01">${a.questiondate}</td>
								<td class="lns01">${a.questionstatus}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- FOOTER -->
	<c:import url="/WEB-INF/views/common/footer.jsp" />
	<!-- FOOTER -->
</body>
</html>