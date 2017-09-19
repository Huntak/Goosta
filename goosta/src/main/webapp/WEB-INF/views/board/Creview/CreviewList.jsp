<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

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
		
<title>리뷰게시판</title>
<script type="text/javascript">
$(document).ready(
		function() {
			$("#creviewsearchbutton").click(function(){
				var creviewsearch=$("#creviewsearch").val();
				$(location).attr("href","CreviewSearch.do?searchtext="+creviewsearch);
			});
		});

</script>
<style type="text/css">
.empty{
	width : 190px;
	height : 160px;
	}
.boardwrite{
	float : left;
	margin-left: 45%;
}
.reviewboard{
	display : inline-block;
	width : 100%;
}
.review_box{
}
.review_li{
	float : left;
	 width: 22%;
    height: 250px;
    border : 0.5px solid rgba(128, 128, 128, 0.37);
    margin-bottom: 20px;
    margin-left : 10px;
        font: menu;
}
ul{
	list-style-type: none;
}
	div.reviewboard h3{
		border-bottom: 3px solid #666;
	    color: #000;
	    padding: 13px 0;
	    margin-bottom: 10px;
	    font: bold 14px 'Nanum Gothic',Nanum Gothic,'Dotum',dotum;
	}
.cont758 {
    width: 908px;
    margin: auto;
	height : 100%;
    overflow: visible;
}

div.cont758 .paging_r {
    height: 25px;
    padding: 15px 10px 0 0;
    background-color: #dbdbdb;
    text-align: right;
}

div.cont758 .paging_r a{
	text-decoration: none;
}

div.cont758 .paging_r a, div.cont758 .paging_r strong {
    display: inline-block;
    vertical-align: top;
    font: 12px 'Arial',arial;
    color: #226ebb;
    padding: 0 1px;
}

div.cont758 .paging_r strong {
    color: #333;
    font-weight: bold;
}
.text{
 	 float: left;
    height: 30px;
    margin-top: 10px;
    margin-right: 3px;
}
.search{
    border: none;
    float: left;
    text-decoration: none;
    background: #027dbf;
    width: 120px;
    height: 30px;
    position: relative;
    display: block;
    text-align: center;
    margin-top: 10px;
    margin-right: 2px;
    cursor: pointer;
}
.search span{
	position: relative;
    text-align: center;
    display: inline-block;
    color: #fff;
    font: 14px/46px 'NotoSansKRRegular','Nanum Gothic';
    top:-10px;
}
.write{
	margin-top: 10px;
    float: left;
	text-decoration: none;
	background: #027dbf;
	width: 120px;
	height: 30px;
    position: relative;
    display: block;
    text-align: center;
}

.write span{
	position: relative;
    text-align: center;
    display: inline-block;
    color: #fff;
    font: 14px/46px 'NotoSansKRRegular','Nanum Gothic';
    top:-10px;
}
.item{
height : 300px;
}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>

<div id="myCarousel" class="carousel slide" data-ride="carousel"> 
	
	<!--페이지-->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>
	<!--페이지-->

	<div class="carousel-inner">
		<!--슬라이드1-->
		<div class="item active"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w01.jpg" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>리뷰 게시판 입니다.</h1>
					<p>리뷰 1</p>
				</div>
			</div>
		</div>
		<!--슬라이드1-->

		<!--슬라이드2-->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w02.jpg" style="width:100%" data-src="" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>리뷰 게시판 입니다.</h1>
					<p>리뷰 2</p>
				</div>
			</div>
		</div>
		<!--슬라이드2-->
		
		<!--슬라이드3-->
		<div class="item"> 
			<img src="http://www.blueb.co.kr/SRC2/_image/w03.jpg" style="width:100%" data-src="" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>리뷰 게시판 입니다.</h1>
					<p>리뷰 3</p>
				</div>
			</div>
		</div>
		<!--슬라이드3-->
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>

	<div class="cont758">
		<div class="reviewboard">
			<h3>REVIEW LIST</h3>
			<c:choose>
			<c:when test="${fn:length(list) > 0}">
			<c:forEach items="${list }" var="row">
			<ul>
					<li class="review_li">
					<div class="review_box">
							<center>
							<div class="review_img_box">
							    <c:if test="${empty row.BOARDIMAGE1}"  >
								<div class="empty"></div>
								</c:if>
							   <c:if test="${!empty row.BOARDIMAGE1}"  >
								<a href="CreviewDetail.do?boardno=${row.BOARDNO }" class="over_link">
								<img src="resources/uploadFiles/creview/${row.BOARDIMAGE1 }" width="190" height="165" class="boximage">
								</a><!-- 리뷰 상세 페이지로 이동 -->
								</c:if>
								</div>
								<input type="hidden" id="boardno" value="${row.BOARDNO }">
								<a href="CreviewDetail.do?boardno=${row.BOARDNO }" class="over_link"><!-- 상품 디테일 페이지로 이동 -->
								<span class="subject">제목 : ${row.BOARDTITLE} </span></a><br>
        						<span class="name">작성자 : ${row.BOARDWRITER}</span><br>
           						<span class="count">조회수 : ${row.READCOUNT }</span><br>
           						<span class="date">작성일자 : ${row.BOARDDATE }</span><br>
        					</center>
							</div>
						</li>	
				</ul>
		</c:forEach>
	</c:when>
<c:otherwise>
<div class="notfound">조회된 결과가 없습니다.</div>
</c:otherwise>
</c:choose>

			<!-- Ajax로 생성 -->
				
		</div>
		
		 <!-- 페이지 및 검색 
		<div class="paging_r">							
				<a class="prev spt_bg" href="#"><</a>
				<a href="javascript:fn_search('1');">1</a>
				<a href="#">2</a>
				<strong>3</strong>
				<a href="#">4</a>
				<a href="#">5</a>
				<a class="next spt_bg" href="#">></a>
			</div> -->
			<div class="boardwrite">
				<input id="creviewsearch" class="text" type="text" name="creviewsearch" >
				<button id="creviewsearchbutton" class="search"><span>search</span></button>
				<c:if test="${loginUser.memberid != null}">
				<a href="CreviewWriteForm.do" class="write"><span>write</span></a>
				</c:if>
			</div>
	</div>
		<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>