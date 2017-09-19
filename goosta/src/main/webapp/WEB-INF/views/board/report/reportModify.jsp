<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Goosta-report</title>
<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/report/reportWrite.css" rel="stylesheet" type="text/css" />
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
	
	$("#reportModify").submit(function(e) {
		if($("#title").val()==''){
			alert("제목을 입력하십시오.");
			e.preventDefault();
		}else if($(".selecttd").val() == ''){
			alert("신고사유를 선택하십시오.");
			e.preventDefault();
		}else if($("#content").val() == ''){
			alert("내용을 입력하십시오.");
			e.preventDefault();
		}else{
			submit();
		}
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
				<img src="resources/images/report/report_silde_1.PNG" style="width:100% height: 100%;" alt="First slide">
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
				<img src="resources/images/report/report_silde_2.PNG" style="width:100%" data-src="" alt="Second slide">
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
				<img src="resources/images/report/report_silde_3.PNG" style="width:100%" data-src="" alt="Third slide">
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
		<div class="reportboard">
			<h3>REPORT</h3>
		</div>
		<form action="reportModify.do" id="reportModify">
			<input type="hidden" name="boardno" value="${vo.boardno }">
			<table>
				<tbody>
					<tr>
						<th class="th_title">제목</th>
						<td class="td_con">
							<input type="text" id="title" name="boardtitle" value="${vo.boardtitle }"/>
						</td>
					</tr>
					<tr>
						<th class="th_title">작성자</th>
						<td class="td_con">
							<span style="position: relative;left: 13px;">오송하</span>
						</td>
					</tr>
					<tr>
						<th class="th_title">신고사유</th>
						<td class="td_con">
							<select class="selecttd" name="reportreason">
								<option 
								<c:if test="${vo.reportreason == '중고거래사기' }">
									selected
								</c:if>
								>중고거래사기</option>
								<option
								<c:if test="${vo.reportreason == '욕설' }">
									selected
								</c:if>
								>욕설</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="th_title">내용</th>
						<td class="td_con">
							<textarea name="boardcontent">${vo.boardcontent }</textarea>
						</td>
					</tr>
				</tbody>
			</table>
				<div class="btn-area">
				<input type="submit" class="btn-ctm btn-blue" value="수정">
				<input type="submit" class="btn-ctm btn-blue" value="목록">
				</div>
		</form>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>