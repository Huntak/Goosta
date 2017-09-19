<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">

	<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/shand/shandList.css" rel="stylesheet" type="text/css" />
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
    
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

<title>중고거래</title>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});	
});
function w(){
   var loginUser = "<c:out value='${loginUser}'/>";
   if(loginUser != ""){
      location.href="viewShandWrite.do";
   }else{
      var messeage
      messeage = confirm("로그인이 필요합니다. 이동하시겠습니까?");
      if(messeage == true){
         location.href="login.do";
      }
   }
}
</script>
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
			<img src="resources/images/shand/report_silde_1.PNG" style="width:100%" alt="First slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>중고거래</h1>
					<p></p>
				</div>
			</div>
		</div>
		<!--슬라이드1-->

		<!--슬라이드2-->
		<div class="item"> 
			<img src="resources/images/shand/report_silde_2.PNG" style="width:100%" data-src="" alt="Second slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>중고거래</h1>
					<p></p>
				</div>
			</div>
		</div>
		<!--슬라이드2-->
		
		<!--슬라이드3-->
		<div class="item"> 
			<img src="resources/images/shand/report_silde_3.PNG" style="width:100%" data-src="" alt="Third slide">
			<div class="container">
				<div class="carousel-caption">
					<h1>중고거래</h1>
					<p></p>
				</div>
			</div>
		</div>
		<!--슬라이드3-->
	</div>
	
	<!--이전, 다음 버튼-->
	<a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> 
	<a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> 
</div>
  
<div id="frame">
<table id="shand_table">
<c:forEach items="${list }" var="s">
<c:if test="${s.boardstatus == 'N'}">
<c:choose>
<c:when test="${s.shandsalestatus == 'N' }">
<tr>
	<td style="width : 30%;">
		<a href="viewShandDetail.do?boardno=${s.boardno }">
			<c:if test="${!empty s.boardimage1 }"><image style="width:90%; height:180px;"src="/goosta/resources/uploadFiles/${s.boardimage1}"/></c:if>
			<c:if test="${empty s.boardimage1 }"><image style="width:90%; height:180px;"src="resources/images/ysw/noimage.jpg"/></c:if>
		</a>
	</td>
<td id="info_td">
	<div><font size="5"><a href="viewShandDetail.do?boardno=${s.boardno }"> ${s.boardtitle } </a></font></div>
	<div id="price_div"><font color="orange" size="5">
		<a href="viewShandDetail.do?boardno=${s.boardno }"><fmt:formatNumber value="${s.shandprice}" type="number"/>원</a></font>
	</div>
	<div><a href="viewShandDetail.do?boardno=${s.boardno }">${s.shandbrand }</a></div></td>
<td>
	<div><font size="5" color="#027dbf">${s.boardwriter }</font></div>
</td>
<td>
<div><b>조회수</b></div>
<b>${s.readcount }</b>
</td>
</tr>
</c:when>
<c:when test="${s.shandsalestatus == 'Y' }">
<tr id="soldout"><td style="width : 30%;"><a><image style="width:90%; height:180px;" src="/goosta/resources/uploadFiles/${s.boardimage1 }"/></a></td>
<td id="info_td"><div><font size="5" color="red">판매된 상품입니다.</font></div>
<div id="price_div"><font color="orange" size="5"></font></div>
<div></div></td>
<td><div><font size="5" color="#027dbf">${s.boardwriter }</font></div></td>
<td>
<div><b>조회수</b></div>
<b>${s.readcount }</b>
</td>
</tr>
</c:when>
</c:choose>
</c:if>
</c:forEach>
</table>
<a id="write" onclick="w();">글쓰기</a>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>