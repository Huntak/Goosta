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

/*		 	사이드메뉴 			*/

.container_s {

	width:776px;padding:0 300px;

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
				   $(".container_s").addClass("open-sidebar");
				   return false;
			  }
			  if (phase=="move" && direction =="left") {
				   $(".container_s").removeClass("open-sidebar");
				   return false;
			  }
		  }
  }); 
});
</script>		
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
			<h2><span> ${loginUser.gradename }</span><strong> ${loginUser.memberid }</strong>님</h2>
		</div> 
	           	<ul>
	          		<li><a href="order.do?memberid=${loginUser.memberid }">주문배송</a></li>
			</ul>
	
			<ul>
			
				<li><a href="mile.do?memberid=${loginUser.memberid }">나의 MiLE</a></li>
				<li><a href="review.do">나의 상품리뷰</a></li>
			</ul>
	
			<ul>
				<li><a href="emailQA.do">1:1 E-mail 문의</a></li>
			</ul>
	
			<ul>
				<li><a href="upenroll.do">회원정보관리</a></li>
				<li><a href="delm.do">회원탈퇴</a></li>				
			</ul>
	</div>            
   	
   	<div class="cat_order">
	<div class="mycat">
		<h1><img src="resources/images/mypage/mypage.gif" alt="마이페이지"></h1>
	</div>
	<div id="goodsAssessmentWrittenList">	
						
		<h2 class="tit3"><img src="resources/images/mypage/myreview.gif" alt="상품리뷰내역"></h2>
		<ul class="tabN">
			<li><a href="/myshop/goodsReviewList.lecs?tabSubMenu=review"><img src="resources/images/mypage/review.gif" alt="리뷰작성내역"></a></li>
		</ul>						

		<div class="pop_reviewList reviewNT" style="margin-top:0px;border-top:1px solid #333;">

		<!-- phase2 내역없음 -->
		<table summary="리뷰작성 내역" style="border-top:none;border-bottom:1px solid #babcbb">
			<caption>리뷰작성 내역</caption>
				<colgroup>
					<col style="width:140px;">
					<col>
				</colgroup>
					<tbody>
						<tr>
							<td style="padding:80px 0;text-align:center" colspan="2">작성한 리뷰가 없습니다.</td>
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