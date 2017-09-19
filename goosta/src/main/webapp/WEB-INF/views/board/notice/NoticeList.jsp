<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Goosta-notice</title>

	<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/notice/notice.css" rel="stylesheet" type="text/css" />
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
	
<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});
</script>	
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
				<img src="resources/images/notice/notice_silde_1.PNG" style="width:100% height: 100%;" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>신고게시판</h1>
						<p>신고가 없는 게시판을 지향합니다.</p>
					</div>
				</div>
			</div>
			<!--슬라이드1-->
	
			<!--슬라이드2-->
			<div class="item"> 
				<img src="resources/images/notice/notice_silde_2.PNG" style="width:100%" data-src="" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>신고게시판</h1>
						<p>신고가 없는 게시판을 지향합니다.</p>
					</div>
				</div>
			</div>
			<!--슬라이드2-->
			
			<!--슬라이드3-->
			<div class="item"> 
				<img src="resources/images/notice/notice_silde_3.PNG" style="width:100%" data-src="" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>신고게시판</h1>
						<p>신고가 없는 게시판을 지향합니다.</p>
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
		<div class="noticeboard">
			<h3>notice</h3>
			<table>
				<colgroup>
					<col width="10%;">
					<col width="*">
					<col width="10%;">
					<col width="15%;">
					<col width="10%;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
						<th scope="col">조회수</th>
					</tr>
				</thead>
				<tbody>
				<c:choose>
					<c:when test="${fn:length(list)>0 }">
						<c:forEach items="${list}" var="row">
						<tr>
							<td>${row.rn }</td>
							<td style="text-align: left;"><a href="noticeDetail.do?boardno=${row.boardno}&curPage=${page.curPage}">${row.boardtitle}
							</a></td>
							<td>${row.boardwriter}</td>
							<td><fmt:formatDate value="${row.boarddate}" pattern="yyyy-MM-dd"/></td>
							<td>${row.readcount}</td>
						</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<td colspan="5">조회된 결과가 없습니다.</td>
					</c:otherwise>
				</c:choose>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" style="background-color: #dbdbdb;">
							<!-- 시작 -->
							<c:if test="${page.curPage > 1}">
								<a href="notice.do?curPage=1&search_option=${search_option}&search=${search}">시작</a>
							</c:if>
							<!-- 이전  -->
							<c:if test="${page.curBlock > 1 }">
								<a href="notice.do?curPage=${page.prevPage }&search_option=${search_option}&search=${search}"><</a>
							</c:if>
							<c:forEach var="pageNum" begin="${page.blockStart }" end="${page.blockEnd }">
								<!-- 현재페이지는 하이퍼링크제거, 색상 처리 -->
								<c:choose>
									<c:when test="${pageNum == page.curPage }">
										<span style="color:black; text-decoration: none;">${pageNum }&nbsp;&nbsp;</span>
									</c:when>
									<c:otherwise>
										<a href="notice.do?curPage=${pageNum }&search_option=${search_option}&search=${search}">
											${pageNum }&nbsp;&nbsp;
										</a>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<!-- 다음  -->
							<c:if test="${page.curBlock <= page.totBlock}">
								<a href="notice.do?curPage=${page.nextPage }&search_option=${search_option}&search=${search}">></a>
							</c:if>
							<!-- 마지막 -->
							<c:if test="${page.curPage < page.totPage}">
								<a href="notice.do?curPage=${page.totPage }&search_option=${search_option}&search=${search}">끝</a>
							</c:if>
						</td>
					</tr>
				</tfoot>
			</table>
			<!-- 검색  -->
			<form method="post" action="notice.do">
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
				<a href="noticeWrite.do" class="write"><span>글쓰기</span></a>
			</div>
						
		</div>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>