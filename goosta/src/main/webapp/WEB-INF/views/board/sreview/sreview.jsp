<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>
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
});
</script>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}

div {
	/* border: 1px solid red; */	/* div 구별용 */
}

span {
	/* border: 1px solid red; */	/* span 구별용 */
}

section {
	margin: auto;	/* 좌우 여백 */
	margin-top: 7%;	/* header겹치지않게 */
	width: 1300px;		/* 창크기 조절시 내려오면 수정할 것 */
	height: auto;
}

section a {
	color: black;
	text-decoration: none;
	margin:auto;
}

section a:visited {
	color: black;
	margin: 0;
	padding: 0;
}

#boardTitleDiv {
	border-bottom: 1px solid lightgray;
	padding-bottom: 1%;
	margin-bottom: 3%;
	font-size: 1.3em;
}

#reviewDiv {
	
}

#reviewDiv table, 
#reviewDiv table tr td {
	/* border: 1px solid red; */
}

#reviewDiv table {
	width: 100%;
	text-align: center;
	border-collapse: collapse;
	border: 1px solid lightgray;
	margin-bottom: 5%;
}

#reviewDiv table tr {
	
}

#reviewDiv table tr td {
	border: 1px solid lightgray;
}

#reviewDiv table tr th {
	text-align: center;
	background: lightgray;
	/* border-right: 1px solid white; */
}

#reviewDiv table tr td .emptyStarSpan,
#reviewDiv table tr td .emptyStarSpan .fullStarSpan {
	text-align: left;
	display: inline-block;	/* 없애면 안보임 */
	width: 100px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 18.6px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
}


#reviewDiv table tr td .emptyStarSpan {
	background: url(resources/images/product/0star2.png) no-repeat 0 0;	/* 별 0개 이미지 */
	margin-top: 2px;	/* 줄 높이 맞추기 */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}

#reviewDiv table tr td .emptyStarSpan .fullStarSpan {
	background: url(resources/images/product/5star2.png) no-repeat 0 0;	/* 별 5개 이미지 */
	/* width: 70%; */		/* 평점 조절 (10%당 별 반칸) */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}


#reviewDiv #reviewBottom {
	position: relative;
	text-align: center;
	margin-bottom: 15%;
}

#reviewDiv #reviewBottom #reviewPagingDiv {
	width: 20%;
	position: absolute;
	left: 40%;
	top: 3px;
	display: inline-block;
}

#reviewDiv #reviewBottom #reviewPagingDiv .reviewPageArrow {
	
}

#reviewDiv #reviewBottom #reviewPagingDiv .reviewPageNum {
	vertical-align: 8%;
	margin-right: 5%;
}

/* #reviewDiv #reviewBottom #writeReviewButton {
	position: absolute;
	right: 0;
    display: inline-block;
    width: 7%;
	height: 30px;
    border: none;
    text-align: center;
    background: #0487cd;
    color: white;
    font-size: 17px;
    line-height: 160%;
} */

/* #reviewDiv #reviewBottom #listReviewButton {
	position: absolute;
	right: 0;
    display: inline-block;
    width: 7%;
	height: 30px;
    border: none;
    text-align: center;
    background: #0487cd;
    color: white;
    font-size: 17px;
    line-height: 160%;
} */

#reviewDiv #reviewBottom form {
    position: absolute;
    left: 0;
	width: 27%;
}

#reviewDiv #reviewBottom form select {
    height: 21px;
    vertical-align: -2px;
}

#reviewDiv #reviewBottom form input[type=submit] {
   	width: 16%;
    height: 21px;
    background: lightgray;
    border: 1px solid gray;
    color: black;
}

#reviewDiv #reviewBottom form input[type=submit]:hover {
    border: 1px solid black;
}
    

</style>
<script type="text/javascript">
$(function(){
	$("#reviewDiv table tr:eq(0)").css("height", "30px");		/* 글 제목 높이 */
	$("#reviewDiv table tr:gt(0)").css("height", "150px");		/* 글 내용 높이(사진크기와 맞춰야함) */
	$("#reviewDiv table tr th:lt(6)").css("border-right", "1px solid white");	/* 제목 중간중간 흰색 border */
	$("#reviewDiv table tr th").css("border-top", "1px solid black");
	$("#reviewDiv table tr th").css("border-bottom", "1px solid black");
	$("#reviewDiv table tr:last td").css("border-bottom", "1px solid black");
	$(".reviewPageNum:first").css("margin-left", "5%");
	
	
	/* $("#writeReviewButton").click(function(){
		var loginUser = $("#loginUser").val();
		
		if(loginUser != null && loginUser != ""){
			document.location.href="sreviewWrite.do?productid=21";
		}else{
			alert("로그인해주세요.");
		}
	}); */
});
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"/>
<section>
	<div id="boardTitleDiv">Review</div>
	<div id="reviewDiv">
		<table>
			<colgroup>
				<col width="100">
				<col width="200">
				<col width="*">
				<col width="150">
				<col width="120">
				<col width="120">
				<col width="100">
			</colgroup>
			<tr>
				<th>글번호</th>
				<th>상품사진</th>
				<th>제목</th>
				<th>별점</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
			</tr>
			<c:choose>
				<c:when test="${fn:length(list)>0 }">
					<c:forEach items="${list}" var="row">
					<tr>
						<td>${row.rn }</td>
						<td><a href="detail.do?productname=${row.productname }"><img src="${row.productimagemain }" width="150" height="150" border="0"></a></td>
						<td>
							<a href="sreviewDetail.do?boardno=${row.boardno}&curPage=${page.curPage}">
								${row.boardtitle}
								<c:if test="${ row.replycount > 1 }">
									&nbsp;[${row.replycount }]
								</c:if>
								<jsp:useBean id="now" class="java.util.Date" />
								<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowDate"></fmt:parseNumber>
								<fmt:parseNumber value="${row.boarddate.time / (1000*60*60*24)}" integerOnly="true" var="writeDate"></fmt:parseNumber>
								<c:if test="${ nowDate - writeDate <= 3 }">
									&nbsp;<img src="resources/images/product/icon_new.gif" width="24" height="10.8" border="0">
								</c:if>
								<c:if test="${ row.readcount >= 100 }">
									&nbsp;<img src="resources/images/product/icon_hit.gif" width="21.6" height="10.8" border="0">
								</c:if>
							</a>
						</td>
						<td>
							<c:set var="starPercent" value="${ row.starquantity * 20 }"/>
							<span class="emptyStarSpan"><span class="fullStarSpan" style="width: ${starPercent}%;"></span></span>
						</td>
						<td>${row.boardwriter}</td>
						<td><fmt:formatDate value="${row.boarddate}" pattern="yyyy-MM-dd"/></td>
						<td>${row.readcount}</td>
					</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<td colspan="7">조회된 결과가 없습니다.</td>
				</c:otherwise>
			</c:choose>
		</table>
		<div id="reviewBottom">
			<div id="reviewPagingDiv">
				<c:if test="${page.curPage > 1}">
					<a href="sreview.do?curPage=1&search_option=${search_option}&search=${search}" class="reviewPageArrow"><img src="resources/images/product/DoubleChevronLeft.png" width="14" height="14" border="0"></a>
				</c:if>
				<c:if test="${page.curBlock > 1 }">
					<a href="sreview.do?curPage=${page.prevPage }&search_option=${search_option}&search=${search}" class="reviewPageArrow"><img src="resources/images/product/ChevronLeft.png" width="14" height="14" border="0"></a>
				</c:if>
				<c:forEach var="pageNum" begin="${page.blockStart }" end="${page.blockEnd }">
					<!-- 현재페이지는 하이퍼링크제거, 색상 처리 -->
					<c:choose>
						<c:when test="${pageNum == page.curPage }">
							<a href="#" onclick="return false;" class="reviewPageNum"><b>${pageNum }</b></a>
						</c:when>
						<c:otherwise>
							<a href="sreview.do?curPage=${pageNum }&search_option=${search_option}&search=${search}" class="reviewPageNum">${pageNum }</a>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${page.curBlock <= page.totBlock}">
					<a href="sreview.do?curPage=${page.nextPage }&search_option=${search_option}&search=${search}" class="reviewPageArrow"><img src="resources/images/product/ChevronRight.png" width="14" height="14" border="0"></a>
				</c:if>
				<c:if test="${page.curPage < page.totPage}">
					<a href="sreview.do?curPage=${page.totPage }&search_option=${search_option}&search=${search}" class="reviewPageArrow"><img src="resources/images/product/DoubleChevronRight.png" width="14" height="14" border="0"></a>
				</c:if>
			</div>
			<form method="post" action="sreview.do">
				<select name="search_option">
					<option value="all"
					<c:if test="${search_option == 'all'}">
						selected
					</c:if>
					>전체</option>
					<option value="boardtitle"
					<c:if test="${search_option == 'boardtitle'}">
						selected
					</c:if>
					>제목</option>
					<option value="boardwriter"
					<c:if test="${search_option == 'boardwriter'}">
						selected
					</c:if>
					>작성자</option>
				</select>
				<input type="text" name="search" value="${search}">
				<input type="submit" value="검색">
			</form>
			<div class="boardwrite">
				<!-- <a href="sreview.do" id="listReviewButton">List</a> -->
				<%-- <input type="hidden" value="${ loginUser }" id="loginUser">
				<a href="#" onclick="return false;" id="writeReviewButton">Write</a> --%>
			</div>
		</div>
	</div>
</section>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>