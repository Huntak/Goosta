<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>주문및결제</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<!-- daum 주소 api -->
<script type="text/javascript"  src="http://dmaps.daum.net/map_js_init/postcode.v2.js?ver=1"></script>
<script type="text/javascript">
$(function(){
	
	 $("#b1").click(function(){
		IMP.init('imp26929010');
		IMP.request_pay({
		    pg : 'inicis', // version 1.1.0부터 지원.
		    pay_method : $("input[name=cash]:checked").val(),
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '주문명:결제테스트',/*  jquery로 productid 불러서 사용 */
		    amount : $("input[name=sumprice]").val(),
		    buyer_email : $("input[name=orderemail]").val(),/* 결제정보가 이메일로 날라감 */
		    buyer_name : $("input[name=orderlistname]").val(),
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울특별시 강남구 역삼동',
		    buyer_postcode : '123-456',
		    m_redirect_url : 'https://www.yourdomain.com/payments/complete'
		}, function(rsp) {
		    if ( rsp.success ) {
		        var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        
		       // alert(msg);
		         $(".payForm").submit(); 
		        
            			   /*  {컬럼명: $("#id")}.val() */
		  		 /*  $.ajax({
		  			
		  			url : "/goosta/payfo.do"
		               ,method : "POST"
		               ,async:true
		               ,data : {
		            	   	memberid: $("#name").val(), 
		            	   	orderlistzipcode1: $("#addtext").val(),
		               		orderlistzipcode2 : $("#addtext2").val(), orderlistaddress1 : $("#addtext3").val(),
		            	   	orderlistaddress2 : $("#addtext4"), 
		            	   	orderlistphone1 :  $("#phtext").val(),
		            	   	orderlistphone2 :  $("#phtext2").val()
		            	}
		                ,dataType : "json" 
		               ,success :function(data){
		                   console.log("성공"); 
		                  alert(data.msg); 
		                 
		                  location.href="/goosta/finish.do";
		               }
		               ,error:function(e){
		                  alert(e.responseText);
		               }
		            });  */
		           
		    } else {
		        var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		    }
		    console.log(msg); //f12에서 확인이 가능하다.
		});
	 });
});


</script>

<script type="text/javascript">
$(function(){
	$("#hide").hide();
	
	$("#box2").change(function(){
		if($("#box2 option:selected").html() == "직접입력"){
			$("#hide").show();
		}else{
			$("#hide").hide();
		}
	});
});

function searchZipcode() {	
	new daum.Postcode({
		oncomplete : function(data) {
			document.getElementById("addtext").value = data.postcode1;
			document.getElementById("addtext2").value = data.postcode2;
			document.getElementById("addtext3").value = data.address;
			document.getElementById("addtext4").focus();
		}
	}).open();
}
</script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.2.js"></script>
<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	    
		<!-- FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
	   
	   	<!-- JS -->
		<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
		<script src="resources/js/main/jquery.nicescroll.min.js" type="text/javascript"></script>
		<script src="resources/js/main/superfish.min.js" type="text/javascript"></script>
		<script src="resources/js/main/jquery.flexslider-min.js" type="text/javascript"></script>
		<script src="resources/js/main/owl.carousel.js" type="text/javascript"></script>
		
		
		<!-- CSS -->
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="resources/css/footer/jquery.scrolltop.css">
		
		
	    
		<!-- FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
	    
		<!-- SCRIPTS -->
		<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
		<script src="resources/js/main/bootstrap.min.js" type="text/javascript"></script>
		<script src="resources/js/footer/jquery.scrolltop.js"></script>
		<script type="text/javascript">
		
jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
	$(document).scroll(function() {
		  btn_mv_up('.btn_up_layer');
		 }).on('click', '.btn_up_layer', function() {
		  $("html, body").animate({scrollTop:0}, 'slow');
		});
});

$(function(){
	$('input[type=checkbox]').click(function(){
		/* $('id').val('$[name]'); */
		$('#name').val('${loginUser.membername}');
		$('#phtext').val('${loginUser.memberphone1}${loginUser.memberphone2}${loginUser.memberphone3}');
		$('#email1').val('${loginUser.memberemail}');
		$('#addtext').val('${loginUser.memberaddress1}');
		$('#addtext2').val('${loginUser.memberaddress2}');
		$('#addtext3').val('${loginUser.memberaddress3}');
		$('#addtext4').val('${loginUser.memberaddress4}');
	});
});

</script>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

section {
 	margin : auto;
	margin-top: 3%;
	width:1500px;
	height:1055px;
}

section a {
	color: black;
	text-decoration: none;
}

section a:visited {
	color: black;
}
#div1{
	width: 700px;
    padding-bottom: 60px;
}
#payment{

    font-weight: bold;
}
#div0{
    padding-bottom: 20px;
    border-bottom: 2px solid;
    width: 1500px;
}

#div0 #deliver {
	width:600px;
	height:44px;
	padding-bottom:17px;
	margin-right: 352px;
	font-size: 23px;
    font-weight: bold;
}
#div0 #box{
	line-height: 25px;
    font-size: 15px;
    color: #666;
    letter-spacing: -0.75px;
    width: 120px;
    height: 35px;
    font-weight: bold;
}
#div0 #care{
    display: inline-block;
    margin-left: 10px;    
    width: 115px;
    height: 35px;
    text-align: center;
    vertical-align: 45%;
    background: #ccc;
    color: #fff;
}

#div1 #div2{
	padding-bottom:20px;
	width:700px;
    margin-top:20px;
    padding-right: 20px;
}
#div1 #div2 span{
    padding-right: 15px;
    font-weight: bold;
    font-size: 14px;
}
#div1 #div2 #name{
	padding-left:10px;
	padding-top:1px;
	padding-bottom:1px;
	width:560px;
	height:40px;
	margin-left:20px;
   	font-weight:bold;
   	font-size: 14px;
}
#div1 #div3{
	margin-bottom:20px;
}
#div1 #div3 #phone1,
#div1 #div3 #phone2{
	margin-right:40px;
   	font-weight: bold;
	font-size: 14px;
   	
}
#div1 #div3 #phone2{
    margin-left: 50px;
}
#div1 #div3 #phtext,
#div1 #div3 #phtext2{
	width:195px;
	height:40px;
}
#div1 #div4{
	margin-bottom:20px;
}
#div1 #div4 #email{
	margin-right:35px;
    font-weight: bold;
    font-size: 14px;
}
#div1 #div4 #email1,
#div1 #div4 #email2{
	height:40px;
	background:#f6f6f6;
	border:gray solid 1px;
}
#div1 #div5{
	margin-bottom:20px;
}
#div1 #div5 #find{
	background:black;
	color:white;
	display:inline-block;
	width:176px;
	height:43px;
	text-align:center;
	vertical-align:middle;
    margin-left: 10px;
}
#div1 #div5 #find2{
    vertical-align: -125%;
    font-weight: bold;
}
	 /* 
   vertical-align속성
   
   baseline : (기본값)기초 라인에 대하여 수직 정렬 설정
   sub : 아래첨자를 위해서 적당한 위치에 수직 정렬 설정
   super : 위첨자를 위해서 적당한 위치에 수직 정렬 설정
   top : 상단에 정렬 설정
   middle : 중간에 정렬 설정
   bottom : 하단에 정렬 설정
   text-top : 글꼴의 상단에 정렬 설정
   text-bottom : 글꼴의 하단에 정렬 설정
   (percent) : 상위 속성값에 비례하여 퍼센테이지로(%)로 셀의 수직 정렬 지정
 */

#div1 #div5 #address{
	padding-right:81px;
    font-weight: bold;
    font-size: 14px;
}
#div1 #div5 #addtext{
	width:369px;
	height:40px;
	background:#f6f6f6;
	border:gray solid 1px;
}
#div6,#div7,#div8{
	margin-bottom:20px;
}
#div1 #div6 #addtext2,
#div1 #div7	#addtext3{
	margin-left:118px;
	height:40px;
	width:560px;
	background:#f6f6f6;
	border:gray solid 1px;
}
#div1 #div8	#addtext4{
	margin-left:118px;
	height:40px;
	width:560px;
}
#div1 #div9 #sms{	
    padding-right: 23px;
    font-size: 14px;
    font-weight: bold;
}
#div1 #div9 #radio1{
	margin-bottom:20px;
	margin-right:10px;
}
#div1 #div9 #radio2{
	margin-bottom:20px;
	margin-left:20px;
	margin-right:10px;
}
#div1 #div10{
    margin-bottom: 20px;
}
#div1 #div10 #box2{
	width:563px;
	height:40px;
	padding-left:10px;
	font-size:14pt;
	margin-bottom:15px;
}
#div1 #div10 span{
    margin-right: 17px;
    font-size: 14px;
    font-weight: bold;
}
#div10 #hide {
    width: 563px;
    height: 40px;
    padding-left: 10px;
    border: 1px solid #ccc;
    color: #333;
    font: 13px/36px 'NotoSansKR','Nanum Gothic';
    display: inline-block;
    margin-left: 118px;
}
#c1{
	width: 700px;
    padding-bottom: 17px;
}
#c1 #c2{
	margin-bottom:20px;
}
#c1 #c3{
	padding-top:20px;
 	border-top: 1px solid black;
    font-size: 20px;
    font-weight: bold;
}
#c1 #c3 input{
	margin-right:10px;
}
#c1 #c3 .kpay{
	margin-left:20px;
}
#c1 #c3{
	margin-bottom:20px;
}
#c1 #c4{
    padding-left: 50px;
    padding-top: 50px;
}
#c1 #c4 #b1{
	width:500px;
	height:80px;
	background: #027dbf;
	border:none;
    color: #fff;
    font-size:20px;
}
section .prods_info {
    width: 325px;
    padding: 10px;
    position: absolute;
    background: #ebebeb;
}
section .prods_info {
    width: 325px;
    padding: 10px;
    position: absolute;
    right: 0;
    background: #ebebeb;
}
section .prods_info.fixed {
    left: 50%;
    margin-left: 300px;
}
section .prods_info .prodlist {
   /*  padding: 0 10px; */
    background: #fff;
    background-image: initial;
    background-position-x: initial;
    background-position-y: initial;
    background-size: initial;
    background-repeat-x: initial;
    background-repeat-y: initial;
    background-attachment: initial;
    background-origin: initial;
    background-clip: initial;
    background-color: rgb(255, 255, 255);
}

section .price-container .prc {
    position: relative;
    font-size: 16px;
    color: #000;
    vertical-align: baseline;
}
section .prods_info .prodlist .box {
    position: relative;
    min-height: 60px;
    padding: 35px 55px 45px 113px;
    border-bottom: 1px solid #ebebeb;
    background: white;
    margin-bottom: 15px;
    width: 304px;
}
section .prods_info .prodlist .box .img {
    position: absolute;
    top: 20px;
    left: 10px;
}
section .prods_info .total_amount {
    padding: 18px 10px;
    font: 15px/15px;
    color: #000;
    font-weight:bold;
}
section  .prods_info .box {
    padding: 18px 0 18px 10px;
   /*  border-bottom: 1px solid #ebebeb; */
}
section .prods_info .box {
   /*  padding: 30px 0 25px 10px; */
    border-bottom: 1px solid #ebebeb;
}
section .prods_info .price_box {
 /*   padding: 110px 10px;  */
    width: 305px;
    background: #fff;
    height: 350px;
    margin-left: -1px;
}
}
section .prods_info .box>strong {
    position: relative;
    float: left;
    margin-top: -2px;
    font: 14px/14px;
    color: #000;
}
section .prods_info .box .price-container {
    float: right;
}
section .prods_info .box.btn_cpn a {
    position: relative;
    display: block;
    height: 35px;
    padding-left: 10px;
}
section .prods_info .box.btn_cpn a span {
    color: #fff;
    font: 13px/35px;
}
section .prods_info .box.total_p {
    border-bottom-width: 0;
    padding-bottom: 60px;
}
section  .prods_info .box.total_p>strong {
    margin-top: 17px;
}
section .prods_info .box.total_p .price-container .prc {
    font-size: 30px;
    line-height: 30px;
}
section .prods_info .box.total_p .price-container .point {
    width: 160px;
    position: absolute;
    bottom: 30px;
    right: -4px;
    letter-spacing: -2.25px;
    font: 12px/12px;
}
section .prods_info .box .price-container .prc {
    font-size: 20px;
    line-height: 18px;
    margin-left: 5px;
    color: black;
    font-weight: bolder;
}

section .prc.sale {
    color: #c53622;
}
section .prods_info .box.total_p .price-container .point strong {
    margin-left: 3px;
    font: 12px/12px;
    color: #0487cd;
    font-weight:bold;
}
#mm{
	margin-left: 325px;
}
.pay22{
    font-size: 18px;
    font-weight: bold;
    color: #0487cd;
}
#email1{
	height: 40px;
}
#email2{
	height: 40px;
}
section .prods_info .box.total_p .price-container .point {
    width: 160px;
    position: absolute;
    bottom: 90px;
    right: 145px;
    letter-spacing: -2.25px;
    font-size: 17px;
}
section .prods_info .box.total_p .price-container .prc {
    font-size: 20px;
    line-height: 50px;
    margin-left: 5px;
    top: -15px;
}
section .prods_info .box.btn_cpn a span {
    color: #333;
    font-size: 15px;
    font-weight: bold;
}
.won{
	font-size: 20px;
    color: black;
}
#zx{
    font-size: 20px;
     color: black;
}
.payment{
	font-size: 14px;
    font-weight: bold;
}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<section>
	<form action="finish.do" method="post" class="payForm">
		<div id="div0">
		
			<span id="deliver"> 배송지 정보 </span> 	
			<input type="checkbox" id="check"> 회원정보와동일
				<input type="hidden" name="productsize" value="${productsize }">
				<input type="hidden" name="productname" value="${productname }">
				<input type="hidden" name="quantity" value="${quantity }">
				<input type="hidden" name="mileage" value="${mileage }">
				<input type="hidden" name="grademileagerate" value="${grademileagerate }">
			<span class="pay2" id="mm">
				<span class="pay2"><img src="resources/images/order/blue1.png" width="40" height="40"> </span><span>장바구니</span>
				<span><img src="resources/images/order/arrow-right.png" width="50" height="50"></span>
				<span class="pay2"><img src="resources/images/order/blue2.png" width="50" height="40"></span> 
				<span class="pay22">주문결제</span><span><img src="resources/images/order/arrow-right.png" width="50" height="50"></span>
					<span class="pay2"><img src="resources/images/order/blue3.png" width="40" height="40"></span>
				<span class="pay222">주문완료</span>
			</span>
		</div>
		<div id="div1">
			<div id="div2">
				<span>수취인 이름*</span> 
				<input type="text" id="name" name="orderlistname" >
				<input type="hidden" id="id" name="memberid" value="${loginUser.memberid }">
			</div>
			<div id="div3">
				<span id="phone1">휴대전화 1*</span>
				<input type="text" id="phtext" name="orderlistphone1">
				<span id="phone2">휴대전화 2*</span>
				<input type="text" id="phtext2" name="orderlistphone2">
			</div>
			<div id="div4">
				<span id="email">이메일 주소*</span>
				<input type="text" name="orderemail" id="email1" >
			</div>
			<div id="div5">
				<label id="address">주소*</label>
				<input type="text" id="addtext" name="orderlistzipcode1" readonly>
				<a href="#" onclick="searchZipcode();" id="find"><span id="find2">주소찾기</span></a>
			</div>
			<div id="div6">
				<input type="text" id="addtext2" name="orderlistzipcode2" readonly>
			</div>
			<div id="div7">
				<input type="text" id="addtext3" name="orderlistaddress1" readonly>
			</div>
			<div id="div8">
				<input type="text" id="addtext4" name="orderlistaddress2">
			</div>
			<div id="div10">
				<span>배송 요청 사항*</span>
				<select id="box2" name="ordermessage">
					<option>직접입력</option>
					<option selected="selected" value="배송 전 연락바랍니다.">배송 전 연락바랍니다.</option>		
					<option value="부재시 경비실에 맡겨주세요.">부재시 경비실에 맡겨주세요.</option>	
					<option value="빠른 배송 부탁드립니다.">빠른 배송 부탁드립니다.</option>	
					<option value="부재시 핸드폰으로 연락바랍니다.">부재시 핸드폰으로 연락바랍니다.</option>	
					<input type="text" name="ordermessage2" id="hide" value="">
				</select>
			</div>
		</div>
		<div id="c1">
			<div id="c2">
				<span id="payment"> 결제수단 </span>
			</div>
			<div id="c3">
				<input type="radio" name="cash" class="kpay" value="card"> 카드결제
				<input type="radio" name="cash" class="kpay" value="kpay"> KPAY
				<input type="radio" name="cash" class="kpay" value="vbank"> 무통장입금
				<input type="radio" name="cash" class="kpay" value="phone"> 휴대폰결제
			</div>
			<div id="c4">
				<p>
					<input type="button" id="b1" value="결제하기">
				</p>
			</div>
		</div>
 		</form>
 		<div class="prods_info fixed" id="test_box" style="top: 228px;">
			<div class="prodlist">
				<div class="box last">
					<div class="img">
						<a href="detail.do?productname=${product.productname}">
						<img
							src="${productimagemain}"
							style:"margin-left: 20px"; id="prd" width="80" height="80">
						</a>
					</div>
					<div class="info">
						<div class="tit">
							<strong><a href="detail.do?productname=${product.productname}">
							${product.productname}</a></strong>
						</div>
						<div class="details">사이즈: ${product.productsize} / 수량:${quantity}</div>
						<div class="price-container">
							<strong id="zx"><input type="hidden" class="prc" name="sumprice" value="${sum}">${sum}
							<span class="won">원</span>
							</strong>
						</div>
					</div>
				</div>
			</div>
			<div class="total_amount">총 주문 상품 : ${quantity}개</div>
			<div class="price_box">
				<div class="box clfix" id="zxzc">
					<strong>총 주문 가격 :</strong>
					<div class="price-container">
						<strong><span class="prc" name="totalPrice"><span class="won">${sum}원</span></span></strong>
					</div>
				</div>
				<div class="box clfix">
					<strong>할인</strong>
					<div class="price-container">
						<span class="prc sale">0<span class="won">원</span></span>
					</div>
				</div>
				<div class="box clfix" style="border-bottom-width: 0; padding-top: 23px;">
					<strong>마일리지:</strong>
					<div class="price-container">
						<span class="prc sale"><span
							id="TOTAL_DISCOUNT_AMT_TEMP_VIEW"></span><span class="won">${mileage}원</span></span>
					</div>
				</div>

				<div class="box btn_cpn clfix ">
					<a href="javascript:fn_showCpon();" name="mileage">
					<span>보유마일리지: 
						<strong id="zx">${member.membertotalmileage }원</strong>
					</span> 
						<span class="spt_bg" style=""></span>
					</a>
				</div>
			
			
			<div class="box total_p clfix">
					<strong>총 결제금액 :</strong>
					<div class="price-container">
						<span class="prc" id="TOTAL_PAY_AMT_STR">${sum}<span
							class="won">원</span></span>
						<p class="point">
							적립마일리지: <strong><span id="preSaveRate">${mileage}원 </span>   (${grademileagerate}) %</strong>
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>