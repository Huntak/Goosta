<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html5>
<html lang="ko">
<head>
<meta charset="utf-8">
<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="resources/css/customer/customer.css?ver=3" rel="stylesheet">
<script src="http://code.jquery.com/jquery.js"></script>
<script src="resources/js/bootstrap/bootstrap.min.js"></script>
<script src="resources/js/customer/customer.js"></script>


	 <!-- CSS -->
	<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">

    
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
	
	$('.answer').hide();
	
	$(".question td").eq(0).css("width", "10%");
	$(".question td").eq(1).css("width", "80%");
	$(".question td").eq(2).css("width", "10%");
	
	$(".answer td").eq(0).css("width", "10%", "text-align", "center");
	$(".answer td").eq(1).css("width", "80%", "text-align", "center");
	$(".answer td").eq(2).css("width", "10%", "text-align", "center");
	
	$("#notice_table tr td").eq(0).css("width", "10%", "text-align", "center");
	$("#notice_table tr td").eq(1).css("width", "80%", "text-align", "center");
	$("#notice_table tr td").eq(2).css("width", "10%", "text-align", "center");
});
//이메일 합치기
function slide(item){
	var a = item;
	
	if($('#'+a).is(':visible')){
		$('#'+a).hide();
		$("#icon").html("▼");
	}else{
		$('#'+a).show();
		$("#icon").html("▲");
	}
	
}
</script>
<title>고객센터</title>

<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="container-fluid" >
		<div id="menu" onclick="location.href='viewCustomer.do';">
			<ul id="menu_ul">
				<li><a href="viewShopNotice.do">공지사항</a></li>
				<li id="center_li"><a href="viewfaq.do">FAQ</a></li>
				<c:if test="${!empty loginUser}">
				<li><a href="viewquestion.do">1:1 문의</a></li>
				</c:if>
				<c:if test="${empty loginUser}">
				<li><a href='login.do'>1:1 문의</a></li>
				</c:if>
			</ul>
		</div>
		<div class="row-fluid" id="row-fluid">

			<div class="span2" id="span2">
				<!--사이드바 내용-->
				<div class="span12" id="tell">
				<p><image src="resources/images/ysw/index_tel.gif"></p>
				<p>
				<span class="tell">월 ~ 금</span><span>AM 10:00 ~ PM 18:00</span>
				<span>점심시간</span><span>PM 12:00 ~ PM 13:00</span>
				</p>
				<p>주말/공휴일 휴무</p>
				</div>
				<div class="span12" id="sidemenu">
					<ul id="sidemenu_ul">
						<li><image class="icon"
								src="resources/images/ysw/delivery.gif"></image> <label
							class="s_ul"><font color="gray" size="4">주문결제/배송
									안내</font><br> <font size="1" color="lightgray">주문결제와 배송에
									대한 안내입니다.</font><br> <a href="viewDeliveryInfo.do"><font color="#027dbf" size="1">자세히▶</font></a> </label></li>
						<li id="etc1"><image class="icon"
								src="resources/images/ysw/change.gif"></image> <label
							class="s_ul"><font color="gray" size="4">교환/반품 안내</font><br>
								<font size="1" color="lightgray">교환, 환불에 대한 안내입니다.</font><br>
								<a href="viewExchange.do"><font color="#027dbf" size="1">자세히▶</font></a> </label></li>
						<li><image class="icon"
								src="resources/images/ysw/call.gif"></image> <label
							class="s_ul"><font color="gray" size="4">1:1 문의하기</font><br>
								<font size="1" color="lightgray">1:1로 원하는 질문을 할 수 있습니다.</font><br>
								<c:if test="${!empty loginUser}">
								<a href="viewquestion.do"><font color="#027dbf" size="1">자세히▶</font></a>
								</c:if>
								<c:if test="${empty loginUser}">
								<a href="login.do"><font color="#027dbf" size="1">자세히▶</font></a>
								</c:if>
								 </label></li>

					</ul>
				</div>
			</div>
			<div class="span10" id="span10">
				<!--본문 내용-->
				<div class="span12" id="faq">
					<label id="search_label">자주묻는질문 BEST5</label>
					<div id="content">
						<table id="commonQuestion">
						<c:forEach items="${faqlist }" var="faq">
						<tr class="question"><td>BEST</td><td>${faq.ftitle }</td><td><a href="#" id="icon" onclick="slide(${faq.fid});">▼</a></td></tr>
						<tr class="answer" id="${faq.fid}"><td>A</td><td>${faq.fcontent }</td><td></td></tr>
						</c:forEach>
						</table>
					</div>
				</div>
				<div class="span12" id="notice">
					<label id="notice_label">공지사항</label>
					<table id="notice_table">
						<c:forEach items="${noticelist }" var="notice" begin="0" step="1" end="7">
						<tr>
							<td>${notice.boardno }</td>
							<td><a href="shopNoticeDetail.do?boardno=${notice.boardno }">${notice.boardtitle }</a></td>
							<td>${notice.readcount }</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</div>
		<!-- <div class="span12" id="recommend">
		</div> -->
	</div>
	<a href="qnaManager.do">관리이</a>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>