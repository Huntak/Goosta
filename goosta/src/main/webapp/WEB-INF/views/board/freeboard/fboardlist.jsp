<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>자유게시판</title>

		<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="resources/css/footer/jquery.scrolltop.css">
		<!-- <link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" /> -->
	    
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



<style type="text/css">


/* 			신고계시판 			 */

.contrainer_s{
   min-width : 400px;
   min-height : 500px;
   overflow: auto;
}
	div.freeboard h3{
		border-bottom: 3px solid #666;
	    color: #000;
	    padding: 13px 0;
	    margin-bottom: 10px;
	    font: bold 14px 'Nanum Gothic',Nanum Gothic,'Dotum',dotum;
	}
	.cont758 {
    width: 845px;
    margin: auto;
    overflow: hidden;
    height : 800px;
}

table, th, td {
    margin: 0;
    padding: 0;
    border: 0;
    border-spacing: 0;
    border-collapse: collapse;
}
div.freeboard table tr th {
    background: #777 no-repeat right 10px;
   width:108px;
    height: 31px;
    color: #fff;
    line-height: 31px;
    text-align: center;
    letter-spacing: -1px;
}
div.freeboard table tr .title{
	width: 500px;
}
div.freeboard table tr .writer{
	width: 150px;
}
div.freeboard table tr .date{
	width: 120px;
	
}
div.freeboard table tr .readcount{
	width: 120px;
}

tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
}
div.freeboard table tr td{
	padding: 10px 0 8px 10px;
    text-align: left;
    letter-spacing: -1px;
    border-bottom: 2px dotted lightgray;
    text-align: center;
}

div.cont758 .paging_r {
    height: 45px;
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

.write{
	margin-top: 10px;
	float: right;
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

/* 			신고계시판 끝			 */
</style>
		
<script type="text/javascript">
jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});
</script>
<script>
$(document).ready(function(){
	$("#btnWrite").click(function(){
		//페이지 주소 변경(이동)
		location.href="/board/freeboard/fboardlist.do";
	});
});

function list(page){
	location.href="/board/freeboard/fboardlist.do?curPage="+page
			+"&search_option=${map.searc_option}"+"&keyword=${map.keyword}";
}

</script>
</head>
<body>
<div class="container_s">
	<!-- HEADER -->
	<c:import url="/WEB-INF/views/common/header.jsp"/>
	<!-- HEADER -->	
	
		<div class="cont758">
		<div class="freeboard">
			<h3>자유게시판</h3>
			<table>
				<tr>
					<th class="brand">브랜드</th>
					<th class="title">제목</th>
					<th class="wirter">작성자</th>
					<th class="date">작성일</th>
					<th class="readcount">조회수</th>
					<th class="file">첨부파일</th>					
				</tr>
				<c:choose>
					<c:when test="${fn:length(list)>0 }">
						<c:forEach var="row" items="${list}">	 			
								<tr>
									<td>${row.boardprefix}</td>
									<td><a href="fboard.do?boardno=${row.boardno }">${row.boardtitle}</a></td>
									<td>${row.boardwriter}</td>
									<td>${row.boarddate}</td>
									<td>${row.readcount}</td>
									<td>${row.boardimageid}</td>
								
								</tr>
						</c:forEach>
						</c:when>
						<c:otherwise>
							조회된 결과가 없습니다.
						</c:otherwise>
					</c:choose>	
					
			</table>
					
		
			<div class="paging_r">							
			<!-- <a class="prev spt_bg" href="#"><</a> -->
 			<c:forEach var = "num" begin="${map.pager.blockBegin}"
					end="${map.pager.blickEnd}">
					<c:choose>
						<c:when test="${num == map.page.curPage}">
						<!-- 현재 페이지면 하이퍼링크 제거 -->
							<span style="color:red">${num}</span>&nbsp;
						
						</c:when>
					<%-- 	<c:otherwise>
							<a href="javascript:list('${num}')">${num}</a>&nbsp;
						</c:otherwise>  --%>
					</c:choose>				
				</c:forEach>
				
					
						<!-- 페이지 네비게이션 출력 -->
			<!-- http://127.0.0.1:8888/goosta/fboardlist.do?curPage=1 처음엔 붙이기-->
							
				
			<c:if test="${page.curPage > 1}">
				<a href = "fboardlist.do?curPage=1&search_option=${search_option}&search=${search}">[처음]</a>
			</c:if>	
				
			<!-- 이전 -->
			<c:if test="${page.curBlock > 1}">
				<a href="/board/freeboard/fboardlist.do?curPage=${page.prevPage}&search_option=${search_option}&search=${search}">[이전]</a>			
			</c:if>
			
				
		<c:forEach var="pageNum" begin="${page.blockStart}"
			end="${page.blockEnd}">
			
			<c:choose>
				<c:when test="${pageNum == page.curPage}">
		<!-- 현재 페이지는 하이퍼링크 제거, 색상 처리  -->		
					<span style="color:red">[${pageNum}]</span>
				</c:when>
				<c:otherwise>
				
					<a href="fboardlist.do?curPage=${pageNum}&search_option=${search_option}&search=${search}"> 
					[${pageNum}]</a> 
				</c:otherwise>
			</c:choose>			
		</c:forEach>	
				<!-- 다음 -->
			<c:if test="${page.curBlock <= page.totBlock}">
				<a href="fboardlist.do?curPage=${page.nextPage}&search_option=${search_option}&search=${search}">[다음]</a>
			</c:if>
			
			<!-- 마지막 페이지 -->
			<c:if test="${page.curPage < page.totPage}">
				<a href = "fboardlist.do?curPage=${page.totPage}&search_option=${search_option}&search=${search}">[끝]</a>
			</c:if>	
			</div>
			
			<div class="boardwrite">
				<!-- <input class="text" type="text" name="search"> -->
				<a href="fboardwriter.do" class="write"><span>write</span></a>
			</div>
			<div>
			<!-- 검색폼 -->
			<form method="post" action="fboardlist.do">
				<select name="search_option" size="1">
					<option value="boardprefix" 
					<c:if test="${search_option == 'boardprefix'}">selected</c:if> >브랜드</option>
					<option value="membername" 
					<c:if test="${search_option == 'membername'}">selected</c:if> >이름</option>
					<option value="boardtitle"
					<c:if test="${search_option == 'boardtitle'}">selected</c:if> >제목</option>
					<option value="boardcontent"
					<c:if test="${search_option == 'boardcontent'}">selected</c:if> >내용</option>
					<option value="all"
					<c:if test="${search_option == 'all'}">selected</c:if> >전체</option>
				</select>
				<input type="text" name="search" value="${search}">
				<input type="submit" value="search">
			</form>
			</div>
						
		</div>
	</div>
<!-- FOOTER -->
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
<!-- FOOTER -->
</div>
</body>
</html>