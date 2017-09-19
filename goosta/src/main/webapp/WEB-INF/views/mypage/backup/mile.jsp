<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" />
<style>

.content.cat_order {
width: 900px;
padding-top: 160px;
position: relative;
float:right;
padding: 160px 0 60px;

}

.cat_order h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.mypage_point {
margin: 10px 0 30px;
padding: 14px 0;
border: 1px solid #e1e1e1;
background: #f5f5f5;
}

.content .cat_order .mycat{ 
width:900px;
border-bottom: none;
}

.mypage_point li a {
display:block;
magin-top: 6px;
font-size:23px;
font-weight: normal;
color: #111;
}

.mypage_point ul > li {
floatL left;
width: 16.5%;
padding: 16px 0 14px;
text-aglign:center;
font-size:14px;
font-weight: bold;
border-left; 1px solid #d8d8d8;
}

body,p,h1,h2,h3,h4,h5,h6,ul,ol,li,dl,dt,dd,table,th,td,form,fieldset,legend,input,textarea,button {
margin: 0;
padding: 0;
}

ul, ol {
list-style: none;
}

a {
outline : none;
text-decoration:none;
}






#content.content .cat_order {width:900px; padding-top:160px;}

.content .cat_order {float:right;  margin-right:550px; padding:160px 0 60px;}
.content .cat_order .mycat {width:900px;border-bottom:none;}
.content .cat_order .mycat h1 {padding-bottom:30px;text-align:center;}
.content .cat_order h2.tit3.g_title_line {padding-bottom:10px;border-bottom:1px solid #999;}
.content .cat_order h2.tit3.g_title_line + .texyN3 {margin-top:-25px;}
.content .cat_order div.texRE div {margin-top:-3px;}
.content .cat_order div.texRE div.nt {margin-top:-9px;}

.content .mypage_point {margin:10px 0 30px; padding:14px 0; border:1px solid #e1e1e1; background:#f5f5f5;}
.content .mypage_point ul:after {display:block; clear:both; content:"";}
.content .mypage_point ul > li {float:left;width:16.5%;padding:16px 0 14px;text-align:center;font-size:14px;font-weight:bold;border-left:1px solid #d8d8d8;}
.content .mypage_point li:first-child {border-left:none;}
.content .mypage_point li a {display:block;margin-top:6px;font-size:23px;font-weight:normal;color:#111;}
.content .mypage_point li a span {display:inline-block;padding:0 3px;vertical-align:-2px;font-size:27px;font-weight:bold;color:#fa5400;}

.content .cat_order .join3 {height:auto;margin-top:20px;padding:20px;border:1px solid #e1e1e1;background:#f5f5f5;}
.content .cat_order .join3 strong {display:inline-block;margin-right:5px;line-height:30px;font-size:14px;}
.content .cat_order .join3 input {width:70px;height:30px;padding:0;text-align:center;font-size:12px;letter-spacing:0;border:1px #ccc solid;color:#666;}
.content .cn_tex #txt_period {color:#fa5400;}

.content .ln03 {margin-top:20px;text-align:center;}

.content select {min-width:100px;height:30px;line-height:30px;}
.content .deposit_tit {margin-top:16px;font-family:'Malgun Gothic';font-size:15px;font-weight:bold;color:#222;}
.content .deposit_tit em {color:#ff5400;}
.content .deposit_txt + .deposit_txt {margin-top:0;}

html {filter: expression(document.execCommand('BackgroundImageCache', false, true));}
body {width:100%; height:100%;background: #fff; overflow-x:hidden;}

body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button {margin:0; padding:0;}
body, input, select, div, textarea, table, button {font-size:12px; font-family:helvetica, arial, verdana, tahoma, 'NanumGothic', '나눔고딕', Malgun Gothic, '맑은고딕', Apple Gothic, Dotum, '돋움', sans-serif; letter-spacing:-1px; color:#444; }
html:first-child select {padding-right:6px; height:20px;} /* Opera 9 & Below Fix */
option {padding-right:6px;} /* Firefox Fix */
legend {display:none; overflow:hidden; visibility:hidden;} /* For Screen Reader */
img, fieldset, button {vertical-align:middle; border:0;}
ul, ol {list-style:none;}
em, address {font-style:normal;}
hr {display:none; visibility:hidden;}
header,footer,section,article,aside,nav,hgroup,details,menu,figure,figcaption {display:block}


/* 주문결제 */
.cat_order { padding:90px 30px 60px;} /* 20140304 수정 */
	.cat_order .store { padding-bottom:25px;}
	.cat_order .mycat { position:relative; width:850px;border-bottom:1px solid #333;}
	/*.cat_order .mycat h1 { padding-bottom:5px;}*/
	.cat_order .mycat h1 { padding-bottom:10px;}
	.cat_order .mycat div { position:absolute; top:-1px; right:0;}
	.cat_order .mycat .cart_buy { position:absolute; top:0; right:0;}

.cat_order .join { padding:20px 0 10px;}
	.cat_order .join p { color:#434343; padding-bottom:7px;}
	.cat_order .join span { color:#fa5400;}
	.cat_order .join a { font-weight:bold; color:#434343; display:inline-block; margin-left:10px;  background:url(../image/web/pre/order/bu_arrow1.gif) no-repeat right 4px; padding-right:10px;}

.cat_order .join2 { padding:20px 20px 15px; margin:30px 0; border:1px #ccc solid;}
	.cat_order .join2 div { float:right; margin:-10px -10px 0 0; display:inline;}
	.cat_order .join2 p { color:#323429; padding-bottom:5px;}
	.cat_order .join2 p.tex { color:#323429; font-size:14px; font-weight:bold; padding-bottom:5px;}
	.cat_order .join2 strong { color:#fa5400;}

.cat_order .join3 { padding:23px 25px 0; margin:10px 0 30px;height:65px;border:1px solid #ccc; background:#eee;}
	.cat_order .join3:after { content:"."; display:block; height:0; clear:both; visibility:hidden;}
	.cat_order .join3 div.fL { float:left; }
	.cat_order .join3 div.fR {float:right;}
	.cat_order .join3 p { padding:8px 0 0 75px; font-size:11px;}
	.cat_order .join3 strong {font-size:11px;}
	.cat_order .join3 img { vertical-align:middle;}
	.cat_order .join3 input { width:90px; border:1px #ccc solid; padding:3px; color:#666; vertical-align:middle;}
	.cn_tex { margin-bottom:5px;}
	.cn_tex strong { color:#fa5400;}


.orderList table {
    width: 100%;
}

table {border-collapse:collapse;}


.content .orderList table th {
    height: 39px;
    padding: 0;
    font-size: 12px;
    border-top: 1px solid #111;
}

.content .orderList table td {
    border-top: 1px solid #e5e5e5;
    border-bottom: 1px solid #e5e5e5;
}

.orderList table td {
    padding: 15px 0 12px;
    text-align: center;
    border-top: 1px #ccc solid;
    border-bottom: 1px #ccc solid;
}



caption {
    display: none;
}

.content {
boder:1px solid blue;
}
.hidden {
    position: absolute;
    left: 0;
    top: -10000px;
    width: 100%;
    font-size: 1.3em;
    text-align: center;
    z-index: 500;
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
          
          <!-- content -->
          <div class="content">
		  	
		  	<!-- cat_order -->
		  	<div class="cat_order">
		  		<div class="mycat">
							<h1><img alt="마이페이지" src="../image/mypage.gif"></h1>
				</div>
				<!-- mypage_point주문결제횟수 -->
				<div class="mypage_point">
							<ul>
								<li>주문결제<a href="#"><span>0</span>건</a></li>
								<li>배송중/완료<a href="#"><span>0</span>건</a></li>
								<li>취소/반품/교환<a href="#"><span>0</span>건</a></li>
								<li>1:1 E-mail 문의내역<a href="#"><span>0</span>건</a></li>				
							</ul>
				</div>
				<!-- /mypage_point -->
				<h2 class="tit3"><img src="../image/mile1.gif" alt="마일리지"></h2>
				<form name="orderSearchForm" id="orderSearchForm" action="#" method="get" />
				<input name="term" id="term" type="hidden" value=""></input>
				<input name="searchType" id="searchType" type="hidden" value="1"></input>
				<div class="join3">
								<div class="fL">
									<span id="spn_search">
										<strong>기간별조회</strong>										
										<img id="btn_period1" style="cursor: pointer;" alt="7일" src="../image/7.gif" val="7day">
										<img id="btn_period1" style="cursor: pointer;" alt="3개월" src="../image/3mr.gif" val="3month">
										<img id="btn_period1" style="cursor: pointer;" alt="1개월" src="../image/1.gif" val="1month">
										<img id="btn_period1" style="cursor: pointer;" alt="6개월" src="../image/6m.gif" val="6month">
									</span>
								</div>
								<div class="fR">
									<span>
										<strong>직접입력조회</strong>
										<label class="hidden" for="startDate">시작일</label>
										<input type="text" value="20170222" class="txt" id="startDate" name="startDate" validate="label:'시작일'; required:true;" readonly="readonly" style="cursor: pointer;">
										<img src="../image/schedule.gif" style="cursor: pointer;" alt="달력"><input type="hidden" id="hdStartDate">
										<label class="hidden" for="endDate">종료일</label>
										<input type="text" value="20170308" class="txt" id="endDate" name="endDate" validate="label:'종료일'; required:true;" readonly="readonly" style="cursor: pointer;">
										<img src="../image/schedule.gif" style="cursor: pointer;" alt="달력"><input type="hidden" id="hdEndDate">
										<img src="../image/check.gif" style="cursor:pointer;" alt="조회하기" id="btnSearch">
									</span>
								</div>
							</div>
				<p class="cn_tex">
					최근
					<span id="txt_period">3개월</span>
					간 고객예치금 전환/환불된 내역입니다.
				</p>
				
				
				<!-- orderList -->	
				<div class="orderList" style="margin-top: 10px;">
							<table summary="주문번호, 상품, 수량, 주문금액, 주문상태에 따른 조회된 주문내역 정보">
								<caption>마이페이지 최근주문 목록</caption>
								<colgroup>
									<col style="width: 140px;">
									<col>
									<col style="width: 55px;">
									<col style="width: 120px;">
									<col style="width: 120px;">
						        </colgroup>
						        <thead><!-- thead 추가 #nike -->
								<tr>
									<th>주문번호</th>
									<th>상품</th>
									<th>수량</th>
									<th>주문금액</th>
									<th>주문상태</th>
								</tr>
						        </thead>
						        <tbody><!-- tbody 추가 #nike -->
								
									
										<tr>
											<td class="lns01" colspan="5"><strong>최근 <span id="txt_period2">3개월</span>간 고객예치금 내역이 없습니다.</strong></td>
										</tr>	
									
									
								
								</tbody>
							</table>
							
						</div>
						<!-- /orderList -->
		  	</div>
		  	<!-- /cat_order -->
		  	
          </div>
          <!-- /content -->
          
        </div>
        <!-- /main-content -->
</div>
<!-- /container -->

	  
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
