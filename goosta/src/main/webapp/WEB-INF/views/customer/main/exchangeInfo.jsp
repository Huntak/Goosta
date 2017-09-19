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
.cf li{
float : left;
margin : 21px;
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
.tr1{
border-bottom : 1px solid lightgray;
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
.img{
    text-align: center;
}
.color-orange{
color : #027dbf;
ont-weight : bold;
}
.span{
color : #027dbf;
font-weight : bold;
}
#cf{
text-align : center;
}
#cf ol li{
margin : 60px;
}
</style>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});	
})
</script>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="container-fluid" style="height : 1100px">
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
		<div id="label">교환 / 반품 안내입니다.</div>
		<div>
			<table style="width : 80%; margin : auto; border-top : 1px solid lightgray; height : 700px; color : gray; font-family : 맑은 고딕; font-size : 12px;">
	                    <tr class="tr1">
                        <th class="td1">상품 주문 안내</th>
                        <td>
                            <ul>
                                <li>
                                    <p class="color-orange">교환/반품이 가능한 경우</p>
                                    <ol>
                                        <li>1. 상품 및 서비스를 받으신 날로부터 7일 이내</li>
                                        <li>2. 재화 등의 내용이 표시 광고의 내용과 다르거나 계약내용이 다르게 이행된 경우에는 재화 등을 공급받은 날로부터 3개월 이내,<br/>그 사실을 안 날 또는 알 수 있었던 날로부터 30일 이내</li>
                                    </ol>
                                </li>
                                <li>
                                    <p class="color-orange">교환/반품이 불가능한 경우</p>
                                    <ol>
                                        <li>1. 고객님의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 (단, 상품 등의 내용을 확인하기 위하여 포장만을 개봉한 경우 제외)</li>
                                        <li>2. 소비자의 사용 또는 일부 소비에 의해 상품 등의 가치가 현저히 감소한 경우</li>
                                        <li>3. 시간경과에 따라 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우</li>
                                    </ol>
                                </li>
                                <li>
                                    <p class="color-orange">교환/반품이 불가능한 경우</p>
                                    <ol>
                                        <li>1.상품 불량에 의한 비용은 판매자가 부담합니다. 단, 단순 변심에 의한 반품/교환 택배비는 고객님께서 부담하셔야 합니다.</li>
                                        <li>2. 반품, 교환 상품은 반드시 해당 판매자주소로 보내셔야 합니다.</li>
                                    </ol>
                                </li>
                            </ul>
                        </td>
                    </tr>
                    <tr class="tr1">
                        <th class="td1">교환 절차</th>
                        <td style="padding:20px 0">
                            <div class="order-wrap order-2">
                                <ol class="cf">
                                    <li>
                                        <p class="no">01</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_1.gif" alt="교환신청"/></p>
                                        <p class="c">교환신청</p>
                                    </li>
                                    <li>
                                        <p class="no">02</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_2.gif" alt="교환대기"/></p>
                                        <p class="c">교환대기</p>
                                    </li>
                                    <li>
                                        <p class="no">03</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_3.gif" alt="교환반품 완료"/></p>
                                        <p class="c">교환반품 완료</p>
                                    </li>
                                    <li>
                                        <p class="no">04</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_4.gif" alt="교환상품 배송대기"/></p>
                                        <p class="c">교환상품 배송대기</p>
                                    </li>
                                    <li>
                                        <p class="no">05</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_5.gif" alt="교환상품 배송중"/></p>
                                        <p class="c">교환상품 배송중</p>
                                    </li>
                                    <li>
                                        <p class="no">06</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_6.gif" alt="교환상품 배송완료"/></p>
                                        <p class="c">교환상품 배송완료</p>
                                    </li>
                                </ol>
                            </div>
                        </td>
                    </tr>
                    <tr class="tr1">
                        <th class="td1">반품 절차</th>
                        <td>
                                <ol class="cf" id="cf">
                                    <li>
                                        <p class="no">01</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_1.gif" alt="환불 신청"/></p><span class="span">환불 신청</span>
                                    </li>
                                    <li>
                                        <p class="no">02</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_2.gif" alt="환불 대기"/></p><span class="span">환불 대기</span>
                                    </li>
                                    <li>
                                        <p class="no">03</p>
                                        <p class="img"><img src="resources/images/ysw/changeGuide_change_3.gif" alt="교환신청"/></p><span class="span">환불 완료</span>
                                    </li>
                                </ol>
                        </td>
                    </tr>
			</table>
		</div>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>