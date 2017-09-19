<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<title>Insert title here</title>
<style>
ol{
list-style : none;
}
.cf{
float : left;
margin-left: 30px;
}
.cf li{
float : left;
margin : 40px;
}
.no{
font-size : 20px;
font-weight : bold;
opacity : 0.5;
}
.c{
text-align : center;
color : #027dbf;
font-weight : bold;
}
.td1{
width : 120px; 
background : #f6f6f6; 
text-align : center; 
color : black; 
font-size : 12px;
font-family : 맑은고딕;
}
#label{
border : 1px solid lightgray;
    width: 927px;
    height: 100px;
    margin: auto;
    font-size: 5;
    line-height: 98px;
    font-size: 16px;
    font-weight : bold;
    margin-bottom : 30px;
    text-align : center;
    color : gray;
}
</style>
<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});	
})
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="container-fluid" style="height : 1200px">
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
		<div id="label">주문결제 / 배송안내  입니다.</div>
		<div>
			<table style="width : 80%; margin : auto; border-top : 1px solid lightgray; border-bottom : 1px solid lightgray; height : 700px; color : gray; font-family : 맑은 고딕; font-size : 12px;">
			<tr style="border-bottom : 1px solid lightgray;"><td class="td1">상품 주문 안내</td><td>
			<div class="order-wrap order-1">
                                <ol class="cf">
                                    <li>
                                        <p class="no">01</p>
                                        <p class="img"><img src="resources/images/ysw/orderGuide_order_1.gif" alt="미입금"/></p>
                                        <p class="c">미입금</p>
                                    </li>
                                    <li>
                                        <p class="no">02</p>
                                        <p class="img"><img src="resources/images/ysw/orderGuide_order_2.gif" alt="결제완료"/></p>
                                        <p class="c">결제완료</p>
                                    </li>
                                    <li>
                                        <p class="no">03</p>
                                        <p class="img"><img src="resources/images/ysw/orderGuide_order_3.gif" alt="배송대기"/></p>
                                        <p class="c">배송대기</p>
                                    </li>
                                    <li>
                                        <p class="no">04</p>
                                        <p class="img"><img src="resources/images/ysw/orderGuide_order_4.gif" alt="배송중"/></p>
                                        <p class="c">배송중</p>
                                    </li>
                                    <li>
                                        <p class="no">05</p>
                                        <p class="img"><img src="resources/images/ysw/orderGuide_order_5.gif" alt="배송완료"/></p>
                                        <p class="c">배송완료</p>
                                    </li>
                                </ol>
                            </div>
			</td></tr>
			<tr style="border-bottom : 1px solid lightgray;"><td class="td1">결제 시스템 안내</td><td>
			 				<ul>
                                <li>
                                    <p class="color-orange"><font color="#027dbf">신용카드</font></p>
                                    <p>고객님께서 소유하고 계신 신용카드를 통해서 구매하시려는 상품의 금액을 결제하실 수 있습니다.</p>
                                </li>
                                <li>
                                    <p class="color-orange"><font color="#027dbf">계좌이체</font></p>
                                    <p>고객님께서 보유하고 계신 은행의 계좌에서 구매하시려는 상품의 금액을 실시간으로 이체해 드리는 서비스 입니다.</p>
                                </li>
                                <li>
                                    <p class="color-orange"><font color="#027dbf">가상계좌</font></p>
                                    <ol>
                                        <li>1. 고객님께서 무통장 입금 시 이용하실 수 있는 가상 계좌 서비스 입니다.</li>
                                        <li>2. 가상계좌는 1회만 빌급 되며, 발급 후 1일 이내 입금하시지 않으면 자동 취소 처리 됩니다.</li>
                                    </ol>
                                </li>
                                <li>
                                    <p class="color-orange"><font color="#027dbf">보증보험</font></p>
                                    <ol>
                                        <li>1. 물품대금 결제 시 구매자의 패해보호를 위해 “(주)서울보증보험”의 보증보험 중권이 발급된니다.</li>
                                        <li>2. 증권이 발급되는 것의 의미는, 물품대금 결제 시에 소비자에게 서울보증보험의 쇼핑몰보증보험 계약체결서를 인터넷상으로 자동 발급하여,<br/>피해 발생 시 쇼핑몰보증보험으로써 완벽하게 보호받을 수 있습니다.</li>
                                        <li>3. 또한, 입력하신 개인정보는 증권발급을 위해 필요한 정보이며 다른 용도로 사용되지 않습니다.(전자보증서비스의 보험료는 쇼핑몰에서 부담합니다.)</li>
                                    </ol>
                                </li>
                            </ul>
			</td></tr>
			<tr style="border-bottom : 1px solid lightgray;"><td class="td1">배송 안내</td><td>
			<ul>
                                <li>
                                    <p class="color-orange"><font color="#027dbf">배송비 정책</font></p>
                                    <ol>
                                        <li>1. 구스타 쇼핑몰에서는 1만원 이상 제품 구매시 배송비 무료입니다.</li>
                                        <li>2. 1만원 미만 제품 구매시 배송비 3,000원이 부과됩니다.</li>
                                        <li>3. 쿠폰과 적립금을 사용하셔서 실 결제금액이 1만원 미만이 될 경우 배송비가 부과됩니다.</li>
                                    </ol>
                                </li>
                                <li>
                                    <p class="color-orange"><font color="#027dbf">결제 확인 시점으로부터 7일 이내 발송 가능합니다.</font></p>
                                    <ol>
                                        <li>1. 공휴일 포함 시/산간 도서지방의 경우 항공료 또는 도선료가 추가됩니다.</li>
                                        <li>2. 또한 재고상황에 따라 변경될 수 있습니다.</li>
                                    </ol>
                                </li>
                                <li><font color="#027dbf">쇼핑백 제공이나 선물 포장은 불가합니다.</font></li>
                            </ul>
			</td></tr>
			</table>
		</div>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>