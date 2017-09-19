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
	<link href="resources/css/report/reportDetail.css" rel="stylesheet" type="text/css" />
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
	reply_list(); //댓글목록 가져오기
	
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
	
	$("#enroll").click(function(){
		//boardno : 게시물 번호		
		var param = "boardno=${vo.boardno}&replywriter=${vo.boardwriter}&replycontent="+$("#replycontent").val();
		//비동기방식으로 댓글 쓰기, 결과값은 json 형식으로 리턴함
		//기본 contentType : text/html
		$.ajax({
			type:"post",
			contentType: "application/json",
			url : "reportReply_insert.do?"+param,
			success: function(){
				//댓글 쓰기가 완료되면 댓글 목록 갱신
				reply_list();
				$("#replycontent").val("");
			}
		})
	});
});
//댓글 목록 가져오기
function reply_list(){
	//비동기방식으로 댓글 쓰기, 결과값은 json 형식으로 리턴함
	//기본 contentType : text/html
	$.ajax({
		type:"post",
		contentType: "application/json",
		url : "reportReply_list.do?boardno=${vo.boardno}",
		success: function(json){
			//서버에서 넘겨받은 json 값을 파싱하여 목록 출력
			/* alert(json); */
			var output ="<table style='width:79%; background:#f6f6f6;'>";
			for( var i in json){
				output += "<tr>";
				output += "<td	style='height: 35px;border-bottom: 0px;padding-left: 10px;'>"+ "<span style='font-weight:bold;'>" 
						+ json[i].replywriter + "</span>" +" "+ "<span style='font-size: 9pt;color: lightslategray;'>"
						+ json[i].replydate + "</span>";
						/* + "<div id=''>" + "<a onclick='reply()'>" + "답글" + "</a>" + "</td>"; */
				output += "</tr>";
				output += "<tr id='down'>";
				output += "<td style='height:10px;padding-left: 10px;'>"+ "<span>" + json[i].replycontent + "</span>" +"</td>";
				output += "</tr>";
			}
			output +="</table>";
			//div에 댓글 목록을 출력시킴
			$("#replylist").html(output);
		}
	});
function test(){
	alert("성공");
}
}
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
		<form>
			<input type="hidden" value="${vo.boardno }">
			<table class="content">
				<tbody>
					<tr>
						<th class="th_title">제목</th>
						<td class="td_con" style="position: relative; left: 13px;">${vo.boardtitle }</td>
					</tr>
					<tr>
						<th class="th_title">작성자</th>
						<td class="td_con">
							<span style="position: relative; left: 13px;">오송하</span>
						</td>
					</tr>
					<tr>
						<th class="th_title">신고사유</th>
						<td class="td_con" style="position: relative; left: 13px;">${vo.reportreason }</td>
					</tr>
					<tr>
						<th class="th_title">내용</th>
						<td class="td_con" style="position: relative; left: 13px;">
							<textarea readonly="readonly" style="border:0px; position: relative; left: -9px;">${vo.boardcontent }</textarea>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="btn-area">
					<a href="reportDelete.do" class="btn-ctm btn-blue" style="text-decoration: none;"><span class="clickButton">삭제</span></a>
					<a href="reportModifyView.do?boardno=${vo.boardno }" class="btn-ctm btn-blue" style="text-decoration: none;"><span class="clickButton">수정</span></a>
				<a href="report.do?curPage=${curPage }" class="btn-ctm btn-blue" style="text-decoration: none;"><span class="clickButton">목록</span></a>
			</div>
		</form>
		<!-- 댓글 작성폼 -->
		<%-- <c:if test="${sessionScope.userid != null }">
		
		</c:if> --%>
		<form>
			<table id="comment_table">
				<tr>
					<td id="comment_td">
						<textarea id="replycontent" name="replycontent"></textarea>
					</td>
					<td id="enroll_td">
						<input type="button" id="enroll" value="등록">
					</td>
				</tr>
			</table>
		</form>
		<!-- 댓글 목록 -->
		<div id="replylist">
			<!-- <script type="text/javascript">
			function reply(){
				var a = "<tr>";
				a += "<td>";
				a += "<table id='comment_table2' style='margin-left:10px;'>";
				a += "<tr>";
				a += "<td>";
				a += "<textarea id='replycontent' name='replycontent' rows='3' cols='80'></textarea>";
				a += "</td>";
				a += "<td>";
				a += "<input type='button' id='enroll' value='등록' style='height: 50px;'>";
				a += "</td>";
				a += "</tr>";
				a += "</table>";
				a += "</tr>";
				
				$("#down").after(a);
			}
			</script> -->
		</div>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>			
</body>
</html>