<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>goosta</title>

		<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="resources/css/footer/jquery.scrolltop.css">
<!-- 		<link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" />
 -->	    
		<!-- FONTS -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
		<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
	   
	   	<!-- JS -->
		<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
		<script src="resources/js/main/jquery.nicescroll.min.js" type="text/javascript"></script>
		<script src="resources/js/main/superfish.min.js" type="text/javascript"></script>
		<script src="resources/js/main/jquery.flexslider-min.js" type="text/javascript"></script>
		<script src="resources/js/main/owl.carousel.js" type="text/javascript"></script>
		<script src="resources/js/main/bootstrap.min.js" type="text/javascript"></script>
		<script src="resources/js/footer/jquery.scrolltop.js"></script>	
		
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script> 
<script src="http://www.blueb.co.kr/SRC2/swipemenu/jquery.touchSwipe.min.js"></script> 

<style type="text/css">

/* email문의 내용 */

.cat_order h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.cat_order h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.contrainer ul.tabN {margin:0 0 20px}
.contrainer .cat_order .join3 {margin:0 0 20px}
.contrainer .cat_order h2.tit3.g_title_line {border-bottom: 1px solid #999;}
.lockerTop {margin:0 0 20px;}
.deposit_txt {margin:0}
.contrainer .deposit_txt + .deposit_txt {margin:0 0 10px}
.contrainer .cat_order h2.tit3.g_title_line + .texyN3 {margin-top:-35px;}
.g_promotion_top .texyN4 {font-size:12px;top:-37px}
.contrainer .cat_order .join3 {margin:20px 0 20px}
.contrainer p.poA {margin: -36px 0px 20px;line-height: 16px;}
#content.inquiry .tit3 a {bottom:6px;}
#wrap .contents.contrainer .cat_order .tabN {margin: 0 0 20px;}


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



.cat_order h2.tit3 {padding-top: 30px;padding-bottom: 10px;margin-bottom: 9px;border-bottom: 1px solid #fff;}
.contrainer ul.tabN {margin:0 0 20px;}
.contrainer .cat_order .join3 {margin:0 0 20px}
.contrainer .cat_order h2.tit3.g_title_line {border-bottom: 1px solid #999;}
.lockerTop {margin:0 0 20px;}
.deposit_txt {margin:0}
.contrainer .deposit_txt + .deposit_txt {margin:0 0 10px}
.contrainer .cat_order h2.tit3.g_title_line + .texyN3 {margin-top:-35px;}
.g_promotion_top .texyN4 {font-size:12px;top:-37px}
.contrainer .cat_order .join3 {margin:20px 0 20px}
.contrainer p.poA {margin: -36px 0px 20px;line-height: 16px;}
#content.inquiry .tit3 a {bottom:6px;}
#wrap .contents.contrainer .cat_order .tabN {margin: 0 0 20px;}


.
.wrap {width:100%}

.cat_order {
	float:left;
	width : 66%;	
	_border : 1px solid blue;
	margin-left:80px; 
}
.container_s {
	min-width : 600px;
	min-height : 600px;
	_border : 1px solid blue;
}

.cat_order .tit3 {position:relative;}

.cat_order .tit3 a {position:absolute;bottom:0;right:0}

.cat_order .tit3 a {right:30px; bottom:6px;}

/* email문의 내용 끝 */


/*		 	사이드메뉴 			*/

.container_s {
	
	height: 1054px;
	width:776px;
	padding:0 300px;

}

.global_mypage_lnb {

	padding-top:180px;
	
}
#global_container_s.container_s .cat_order {
    width: 900px;
    padding-top: 66px;
    padding-bottom: 1px;
    _text-align:center;
}
.container_s  .cat_order .mycat h1 {
 
    text-align: center;
}

.cat_order {margin:-480px 229px 0px; height:734px;}


.container_s .cat_order {
    _float: right;
    padding: 160px 0 89px;
}

 #global_container_s .cat_order {
    position: relative;
    padding-top: 120px;
}
 	.container_s .cat_order .mycat h1 {text-align:center;}

	.container_s .cat_order .mycat {width:900px;border-bottom:none;}
	.container_s .cat_order h2.tit3.g_title_line {padding-bottom:10px;border-bottom:1px solid #999;}
	.container_s .cat_order h2.tit3.g_title_line + .texyN3 {margin-top:-25px;}
	.container_s .cat_order div.texRE div {margin-top:-3px;}
	.container_s .cat_order div.texRE div.nt {margin-top:-9px;}

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
order_popup.css:110
.reviewNT table tr td {
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
    width:100%;
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
</style>

<script type="text/javascript">
jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});
</script>
</head>
<body>
<!-- HEADER -->
	<c:import url="/WEB-INF/views/common/header.jsp"/>
<!-- HEADER -->


<!-- container_s -->	  
<div class="container_s" id="global_container_s">
	<div class="global_mypage_lnb">
		<div class="global_nav_tit">
			<h2><span> 일반회원</span><strong> lcs89</strong>님</h2>
		</div> 
	           	<ul>
	          		<li><a href="order.do">주문배송</a></li>
					<li><a href="cancel2.do">취소/교환/반품</a></li>
			</ul>
	
			<ul>
			
				<li><a href="mile.do">나의 MiLE</a></li>
				<li><a href="review.do">나의 상품리뷰</a></li>
			</ul>
	
			<ul>
				<li><a href="emailQA2.do">1:1 E-mail 문의</a></li>
			</ul>
	
			<ul>
				<li><a href="#">회원정보관리</a></li>
			</ul>
	</div>            
      
  
 <!-- cat_order -->
<div class="cat_order" style="position:relative;">
 	<div class="mycat">
			<h1><img src="resources/images/mypage/mypage.gif" alt="마이페이지"></h1>
	</div>
	
	<h2 class="tit3">
				<img src="resources/images/mypage/emailQA.gif" alt="1:1 E-mail상담내역">
				<a href="#문의 이동"><img src="resources/images/mypage/QA.gif" alt="1:1 E-Mail 문의하기" "></a>
	</h2>
	
	<div class="orderList" style="margin-top:7px;">
						<!-- phase2 상담내역 없을 경우 및 답변내용 추가 -->
							  <table summary="번호, 문의유형, 상품명, 내용, 등록일자, 처리상태에 따른 1:1 E-Mail 상담내역 정보">
							  <caption>1:1 E-Mail 상담내역 정보</caption>							  
                                <!-- phase2 colgroup 변경 -->
								<colgroup>
                                  <col style="width:12%;">
                                  <col style="width:12%;">
                                  <col>
                                  <col style="width:14%;">
                                  <col style="width:14%;">
                                </colgroup>
                               <!-- phase2 colgroup 변경 -->
                                <thead>
                                  <tr>
                                    <th scope="col">번호</th>
                                    <th scope="col">문의유형</th>
                                    <th scope="col">제목</th>
                                    <th scope="col">등록일자</th>
                                    <th scope="col">처리상태</th>
                                  </tr>
                                </thead>
			
							<tbody>
							
								<tr>
									<td colspan="6" height="200">
										1:1 E-mail 상담내역이 없습니다.	
									</td>
								</tr>
														
							</tbody>
							</table>
						</div>
						</div>
						</div>
						</div>

<!-- FOOTER -->
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
<!-- FOOTER -->
</body>
</html>