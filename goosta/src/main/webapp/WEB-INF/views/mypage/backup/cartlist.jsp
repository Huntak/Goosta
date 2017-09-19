<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" />
<style>

.wrap {width:100%}

.content_wrap {
	float:left;
	width : 66%;
	min-width : 300px;
	_border : 1px solid blue;
	margin-left:80px; 
}

h2{
	text-align : left;
}

.mycat {

	text-align : center;
}

.lockerTop {
    margin: 0 0 20px;
}

.content_wrap .listTable {
    border-top: 1px solid #333;
    border-bottom: 1px solid #ccc;
}


colgroup {
    display: table-column-group;
}

.content_wrap .listTable table {
    width: 100%;
    text-align: center;
}

table {
    border-collapse: collapse;
}

.listTable {border-top:1px solid #333;border-bottom:1px solid #ccc;}

.listTable table {width:100%;text-align:center;}
.listTable table th .global_check_box + label {top:0;width:50px;left:35%;padding-left:15px;text-indent:0;}


.content_wrap .lockerTop {background:none;width:900px;}
.content_wrap .lockerTop .selectBtn {right:0;}
.content_wrap .lockerTop .listTab > span {font-family:'나눔고딕';}
.content_wrap .listTable {border-top:1px solid #333; border-bottom:1px solid #ccc;}
.content_wrap .listTable table {width:100%;text-align:center;}
.content_wrap .listTable table thead tr th {height:39px;border-bottom:1px solid #ccc; color:#333;font-family:'나눔고딕';line-height:27px; letter-spacing:-1px;}
.content_wrap .listTable table tbody tr td {padding:15px 0; border-top:1px solid #eee; color:#333;font-family:'나눔고딕';letter-spacing:-0.2px;}
.content_wrap .listTable table tbody tr td.alL {padding-left:12px;}
.content_wrap .listTable table tbody tr td.price {font-weight:bold;}
.content_wrap .listTable table tbody tr td.price .sale {color:#ccc;font-weight:normal;display:block;text-decoration: line-through;margin-bottom:2px;}
.content_wrap .listTable table tbody tr td.order {color:#666; font-weight:bold;}
.content_wrap .listTable table tbody tr td.dataNo {padding:50px 0 67px; color:#666;}
.content_wrap .listTable table tbody tr td .btn-type6 span {min-width:20px;}
.content_wrap .listTable table tbody tr td > a.btn {display:block; width:100%;}
.content_wrap .listTable table tbody tr td > a.btn .pro_imbox {position:relative;display:inline-block;vertical-align:middle;}
.content_wrap .listTable table tbody tr td > a.btn .pro_imbox img {float:none;}
.content_wrap .listTable table tbody tr td > a.btn .pro_imbox .soldout {display:block;position:absolute;bottom:0;left:0;width:100%;line-height:22px;font-size:11px;color:#fff;background:rgba(0,0,0,.5);text-align: center;}
.content_wrap .listTable table tbody tr td > a.btn dl {display:inline-block;vertical-align:middle;float:none;max-width:270px;margin-left:20px;}
.content_wrap .listTable table tbody tr td > a.btn dl dt {margin:1px 0 6px;}
.content_wrap .listTable table tbody tr td > a.btn dl dd {color:#666; font-size:11px; line-height:15px;}

/*.content_wrap .listTable table th .global_check_box + label {top:-7px}*/
.content_wrap .listTable table th .global_check_box + label {top:0;width:50px;left:35%;padding-left:15px;text-indent:0;}
.content_wrap .listTable table th .global_check_box + label span {display:inline-block;margin-top:1px;line-height:1;}
.content_wrap .listTable table th .global_check_box + label:after {top:10px;}

.content_wrap .btn-type6.btn-black span.right {min-width:60px;}
.content_wrap .btn-tbl-type2.btn-white02 {display:inline-block; width:68px; height:23px; border:1px solid #ccc; border-radius:2px; background:#e6e6e6; color:#111; text-align:center; line-height:23px; vertical-align:middle;}
.content_wrap .btn-tbl-type2.btn-white02 span.right {background:none;}

.paging {width:100%; margin-top:10px; text-align:center;}



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
<div class="content_wrap">
 	<div class="mycat">
			<h1><img src="../image/mypage.gif" alt=""></h1>
	</div>
	<h2 class="tit3"><img src="../image/wish.gif" alt=""></h2>	
	
	<div class="lockerTop">
			<div class="listTab">
				<!-- phase2 삭제
				<ul>
					<li><a href="/myLocker/myLocker.lecs" class="menu1">이미지형으로 보기</a></li>
					<li><a href="/myLocker/myLockerList.lecs" class="menu2 on">리스트형으로 보기</a></li>
				</ul>
				-->
				<span>상품<strong>0</strong>개</span>
			</div>
			<!-- // .listTab -->
			<ul class="selectBtn">
				<!-- phase2 삭제 텍스트 변경
				<li><a class="btn-tbl-type2 btn-white02" href="#" id="selectAll" ><span class="right">전체선택</span></a></li>
				<li><a class="btn-tbl-type2 btn-white02" href="#" id="selectCancel" ><span class="right">선택취소</span></a></li>
				-->
				<li><a class="btn-tbl-type2 btn-white02" href="#" id="selectMyLockerDelete"><span class="right">선택삭제</span></a></li>
				
			</ul>
			<!-- // .selectBtn -->
		</div>
		<!-- // .lockerTop -->
		<div class="listTable">
		<form name="myLockerListForm" id="myLockerListForm" action="/myLocker/myLockerList.lecs" method="post">
			<table summary="상품명, 상품정보, 상품금액, 주문, 비고로 구성된 위시리스트에 저장된 상품 리스트" id="myLocker-List">
				<caption>위시리스트에 저장된 상품 리스트</caption>
				<!-- phase2 col width 변경 -->
				<colgroup>
					<col width="50">
					<col width="*">
					<col width="150">
					<col width="150">
					<col width="150">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">
							<input type="checkbox" title="전체선택" id="selectAll" name="itemNo" value="" class="global_check_box">
							<label for="selectAll"><span>전체선택</span></label>
						</th>
						<th scope="col">상품</th>
						<th scope="col">상품금액</th>
						<th scope="col">주문</th>
						<th scope="col">공유</th>
					</tr>
				</thead>
				<tbody>
					
					
						<tr>
							<td colspan="5" class="dataNo">위시리스트에 담은 상품이 없습니다.</td>
						</tr>
					
					
					
				</tbody>
			</table>
		</form>
		</div>
</div>
</div>

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
