<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" />
<style>

.content_wrap h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.content_wrap h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.contrainer ul.tabN {margin:0 0 20px}
.contrainer .content_wrap .join3 {margin:0 0 20px}
.contrainer .content_wrap h2.tit3.g_title_line {border-bottom: 1px solid #999;}
.lockerTop {margin:0 0 20px;}
.deposit_txt {margin:0}
.contrainer .deposit_txt + .deposit_txt {margin:0 0 10px}
.contrainer .content_wrap h2.tit3.g_title_line + .texyN3 {margin-top:-35px;}
.g_promotion_top .texyN4 {font-size:12px;top:-37px}
.contrainer .content_wrap .join3 {margin:20px 0 20px}
.contrainer p.poA {margin: -36px 0px 20px;line-height: 16px;}
#content.inquiry .tit3 a {bottom:6px;}
#wrap .contents.contrainer .content_wrap .tabN {margin: 0 0 20px;}


body, input, select, div, textarea, table, button {
    font-size: 12px;
    font-family: helvetica, arial, verdana, tahoma, 'NanumGothic', '나눔고딕', Malgun Gothic, '맑은고딕', Apple Gothic, Dotum, '돋움', sans-serif;
    letter-spacing: -1px;
    color: #444;
}
colgroup {
    display: table-column-group;
}
caption {
    display: none;
}

.orderList table {
    width: 100%;
}
.g_tbl_noti table tr:first-child th, .g_tbl_noti table tr:first-child td {
    border-top: none;
}
.g_tbl_noti table td {
    border-top: 1px solid #ebebeb;
    border-left: 1px solid #ebebeb;
    
}
.g_tbl_noti {
    margin-top: 40px;
}
.g_tbl_noti table th {
    border-top: 1px solid #ebebeb;
    background: #fafafa;
}
.g_tbl_noti table td > div {padding:25px;line-height:1.5;}
.g_tbl_noti table td p {line-height:1.8;}
.g_tbl_noti table td .t {margin-top:20px;font-size:13px;font-weight:bold;color:#111;}
.g_tbl_noti table td .t:first-child {margin-top:0;}
.g_tbl_noti table td ul {margin-top:10px;}
.g_tbl_noti table td ul li {margin-top:3px;padding-left:8px;line-height:1.5;background:url(../image/web/global/dot.gif) no-repeat left 8px;}
.g_tbl_noti table td .btn_a {margin-top:20px;}
.g_tbl_noti table td .btn_a a {display:inline-block;height:23px;line-height:23px;padding:0 15px;color:#111;border:1px solid #000;border-radius:2px}

.g_tbl_noti .title {font-size:16px;}

.g_tbl_noti table {width:100%;margin-top:7px;border:1px solid #ebebeb;}


table {
    border-collapse: collapse;
}
.orderList table td {border-top:1px solid #e5e5e5;border-bottom:1px solid #e5e5e5;}
.orderList table td {
    padding: 15px 0 12px;
    text-align: center;
    border-top: 1px #ccc solid;
    border-bottom: 1px #ccc solid;
}
.orderList table th {
    height: 39px;
    padding: 0;
    font-size: 12px;
    border-top: 1px solid #111;
}

.orderList table th {
    height: 39px;
    padding: 0;
    font-size: 12px;
    border-top: 1px solid #111;
}
table {
    border-collapse: collapse;
}

img, fieldset, button {
    vertical-align: middle;
    border: 0;
}
ul.tabN {margin:0 0 20px;}
ul.tabN li {margin-right:0;}
ul.tabN {height:auto;border:1px solid #dfdfdf;border-top:1px solid #333;background:#f7f7f7;margin:15px 0;}

ul.tabN {
    height: auto;
    border: 1px solid #dfdfdf;
    border-top: 1px solid #333;
    background: #f7f7f7;
    margin: 15px 0;
}

ul, ol {
    list-style: none;
}

.contrainer ul.tabN {height:auto;border:1px solid #dfdfdf;border-top:1px solid #333;background:#f7f7f7;margin:15px 0;}



.content_wrap h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.contrainer ul.tabN {margin:0 0 20px;}
.contrainer .content_wrap .join3 {margin:0 0 20px}
.contrainer .content_wrap h2.tit3.g_title_line {border-bottom: 1px solid #999;}
.lockerTop {margin:0 0 20px;}
.deposit_txt {margin:0}
.contrainer .deposit_txt + .deposit_txt {margin:0 0 10px}
.contrainer .content_wrap h2.tit3.g_title_line + .texyN3 {margin-top:-35px;}
.g_promotion_top .texyN4 {font-size:12px;top:-37px}
.contrainer .content_wrap .join3 {margin:20px 0 20px}
.contrainer p.poA {margin: -36px 0px 20px;line-height: 16px;}
#content.inquiry .tit3 a {bottom:6px;}
#wrap .contents.contrainer .content_wrap .tabN {margin: 0 0 20px;}




.wrap {width:100%}

.content_wrap {
	float:left;
	width : 66%;	
	_border : 1px solid blue;
	margin-left:80px; 
}
.container {
	min-width : 600px;
	min-height : 600px;
	_border : 1px solid blue;
}




</style>
</head>

<body>

<!-- container -->	  
<div class="container">
		<!-- sidebar -->
        <div id="sidebar">
           <ul>
          		<li><a href="orderlist.do">주문배송</a></li>
				<li><a href="cancel.do">취소/교환/반품</a></li>
			</ul>
			
			<ul>
				
				<li><a href="mile.do">나의 MiLE</a></li>
				<li><a href="#">나의 상품리뷰</a></li>
			</ul>
			
			<ul>
				<li><a href="emailQA.do">1:1 E-mail 문의</a></li>
			</ul>
			
			<ul>
				<li><a href="#">회원정보관리</a></li>
			</ul>
        </div>
        <!-- /sidebar -->
        
        <!-- main-content -->
        <div class="main-content">
          <div class="swipe-area"></div>
          <a href="#" data-toggle=".container" id="sidebar-toggle"> <span class="bar"></span> <span class="bar"></span> <span class="bar"></span> </a>
 
 <!-- content_wrap -->
<div class="content_wrap" style="position:relative;">
 	<div class="mycat">
			<h1><img src="../image/mypage.gif" alt="마이페이지"></h1>
	</div>
	<h2 class="tit3"><img src="../image/cancel.gif" alt="최소/교환/반품"></h2>	
	
	<p class="texyN">주문취소/교환/반품이 가능한 주문내역입니다.<br>
			아래 목록에서 확인되지 않는 주문의 취소를 원하실 경우 1:1 E-mail 문의로 접수해 주세요.</p>
	<div class="orderList" style="margin-top:10px;">
			      <table summary="주문번호, 상품, 수량, 취소여부/상태, 주문취소/반품에 따른 주문취소/교환반품 가능 목록 정보">
			      	<caption>주문취소/교환반품 가능 목록 정보</caption>
			      	<colgroup>				     
				        <col style="width:140;">
				        <col>
				        <col style="width:55;">
				        <col style="width:130;">
				        <col style="width:130;">
			        </colgroup>
     				<thead>
						<tr>
							<th scope="col">주문번호</th>
							<th scope="col">상품</th>
							<th scope="col">수량</th>
							<th scope="col">취소여부/상태</th>
							<th scope="col">주문취소/반품</th>
						</tr>
					</thead>
					<tbody>
						
							
								<tr>
									<td class="lns01" colspan="5"><strong>취소/교환/반품 가능한 상품이 없습니다.</strong></td>
								</tr>
							
							
						
					</tbody>
				</table>
			</div>
			<div class="g_tbl_noti">
				<h3 class="title" style="margin-bottom:10px;">취소/교환/반품안내</h3>
				<!-- <p class="tar">고객센터  080-022-0182</p> -->
				<table border="0" cellpadding="0" cellspacing="0" summary="">
					<colgroup>
						<col width="160">
						<col width="*">
					</colgroup>
					<tbody>
					<tr>
						<th>취소</th>
						<td>
							<div>
								<p class="t">주문취소는 어떻게 하나요?</p>
								<ul>
									<li>주문취소는&nbsp;<strong>상품이 출고되기 전까지</strong>&nbsp;가능합니다.</li>
									<li>주문 완료 후 주문상품 중 일부만 취소할 경우 재결제가 완료되어야 합니다.</li>
								</ul>
							</div>
						</td>
					</tr>
					<tr>
						<th>교환/반품</th>
						<td>
							<div>
								<p class="t">교환/반품은 어떻게 하나요?</p>
								<ul>
								<li>고객변심으로 인한 교환/반품은 상품을 수령하신 날로부터 <strong>7일 이내까지 신청 가능</strong>합니다.</li>
								<li>배송완료 후 7일이 경과하였거나 상품하자 또는 오배송으로 인한 교환/반품은 <strong>1:1 E-mail 문의</strong>를 통해 문의해 주세요.</li>
								</ul>

								<p class="t">교환/반품 불가 안내</p>
								<ul>
								<li>포장을 개봉하여 시착 또는 사용하여 상품 등의 가치가 훼손된 경우에는 교환/반품이 불가하오니 이 점 양해하여 주시기 바랍니다.</li>
								<li>단, 상품의 내용을 확인하기 위하여 포장을 개봉한 경우에는 교환/반품이 가능합니다.</li>
								<li>고객님의 단순변심으로 인한 교환/반품 요청이 상품을 <strong>수령한 날로부터 7일</strong>을 경과한 경우.</li>
								<li>고객님의 책임 있는 사유로 상품 등의 가치가 심하게 파손되거나 훼손된 경우.</li>
								<li>고객님의 사용 또는 일부 소비에 의하여 상품 등의 가치가 현저히 감소된 경우.</li>
								<li>시간이 경과되어 재판매가 곤란할 정도로 상품 등의 가치가 상실된 경우 (예: 계절의류)</li>
								<li>신발 박스, 상품의 택과 라벨을 훼손 및 분실하여 <strong>재판매가 불가능한 경우.</strong></li>
								<!-- <li>나이키닷컴에서 구입한 상품은 점포에서 반품할 수 없습니다.(온라인에서 구입한 상품은, 온라인에서만 반품을 받습니다.)</li> -->
								<li>반품 하실때는 부속품을 <strong>반드시 상품과 동시에 반송</strong>해 주십시오.(주문확인서, 단추 등 상품의 부속품, 상품에 붙어 있는 택·라벨, 신발 박스)</li>
								<li>기타, '전자상거래 등에서의 소비자보호에 관한 법률'이 정하는 청약철회 제한사유에 해당되는 경우.</li>
								<li>상기 내용을 충족시키지 않는 경우는 반품 할 수 없습니다.</li>
								</ul>

								<p class="btn_a">
									<a href="/mypage/order/listAcceptClaim.lecs">교환/반품 접수내역 조회하기</a>
									<a href="javascript:assmtEmailLayerPop();">교환/반품(하자/오배송) 1:1 E-mail 문의</a>
								</p>
							</div>
						</td>
					</tr>
					</tbody>
				</table>
			</div>				
</div>
</div>
</div>

	
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
<script src="http://www.blueb.co.kr/SRC2/swipemenu/jquery.touchSwipe.min.js"></script> 

<script>
$(window).load(function(){
$("[data-toggle]").click(function() {
  var toggle_el = $(this).data("toggle");
  $(toggle_el).toggleClass("open-sidebar");
});
 $(".swipe-area").swipe({
	  swipeStatus:function(event, phase, direction, distance, duration, fingers)
		  {
			  if (phase=="move" && direction =="right") {
				   $(".container").addClass("open-sidebar");
				   return false;
			  }
			  if (phase=="move" && direction =="left") {
				   $(".container").removeClass("open-sidebar");
				   return false;
			  }
		  }
  }); 
});
</script>

</body>
</html>
