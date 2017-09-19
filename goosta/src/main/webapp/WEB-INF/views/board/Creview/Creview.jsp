<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	    
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
<title>리뷰게시판 상세보기</title>
<script type="text/javascript">
function ModifyReply(replyno) { 
	var boardno = ${detail.boardno};
	$.ajax({
		data : {
			boardno : boardno,
			replyno : replyno
		},
		type : "POST",
		url : "getReplyContent.do",
		success : function(data) {
			var num = data[0].replyno;
			alert(document.getElementById(num));
		}
	}); 
}
$(document).ready(function(){
	reply_list(); //댓글목록 가져오기
	
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
	
	$("#enroll").click(function(){
		//boardno : 게시물 번호		
		var param = "boardno=${detail.boardno}&replywriter=${loginUser.memberid}&replycontent="+$("#replycontent").val();
		//비동기방식으로 댓글 쓰기, 결과값은 json 형식으로 리턴함
		//기본 contentType : text/html
		$.ajax({
			type:"post",
			url : "creviewReply_insert.do?"+param,
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
		url : "creviewReply_list.do?boardno=${detail.boardno}",
		success: function(json){
			//서버에서 넘겨받은 json 값을 파싱하여 목록 출력
			/* alert(json); */
			var output ="<table style='width:79%; background:#f6f6f6;'>";
			for( var i in json){
				var writer = json[i].replywriter;
				var user = '${loginUser.memberid}';
				output += "<tr>";
				output += "<td	style='height: 35px;border-bottom: 0px;padding-left: 10px;'>"+ "<span style='font-weight:bold;'>" 
						+ json[i].replywriter + "</span>" +" "+ "<span style='font-size: 9pt;color: lightslategray;'>"
						+ json[i].replydate + "</span>";
						/* + "<div id=''>" + "<a onclick='reply()'>" + "답글" + "</a>" + "</td>"; */
				output += "</tr>";
				output += "<tr id='down'>";
				output += "<td style='height:10px;padding-left: 10px;'>"+ "<textarea class='replyarea' id="+json[i].replyno+" readonly>" + json[i].replycontent + "</textarea>" +"</td>";
				if(user == writer ){
				output += "<td style='width:40px; height:10px;padding-left: 10px;'><a href='#' onclick='ModifyReply("+json[i].replyno+")'>수정</a></td>";
				output += "</td><td style='width:40px; height:10px;padding-left: 10px;'><a href='#' onclick='DeleteReply()'>삭제</a></td>";
				output += "</tr>";
				} else {
				output += "</tr>";
				}
			} 
			output +="</table>";
			//div에 댓글 목록을 출력시킴
			$("#replylist").html(output);
		}
	});
}
</script>

<style type="text/css">
.images{
	width : 600px;
	height : 500px;
}
.replyarea{
	width : 100%;
	height : 100%;
	resize: none;
	background-color: rgb(246, 246, 246);
	overflow-y:auto;
	background:clear;
	border:0;
}
	div.reviewboard h3{
		border-bottom: 3px solid #666;
	    color: #000;
	    padding: 13px 0;
	    margin-bottom: 10px;
	    font: bold 14px 'Nanum Gothic',Nanum Gothic,'Dotum',dotum;
	}
	.cont758 {
   width : 1100px;
height : 100%;
margin : auto;
}
table{
margin : auto;
width : 79%;
border-top : 1px solid lightgray;
border-collapse : collapse;
}
td{
border-bottom : 1px solid lightgray;
height : 50px;
}
.td_title{
width : 20%;
background : #f6f6f6;
text-align : center;
color : gray;
}
.td_content{
    min-height: 500px;
    overflow-y: scroll;
}

#price{
width : 150px;
}
#brand{
width : 150px;
}
.content textarea{
border : 1px solid lightgray;
margin : 10px;
resize : none;
width : 700px;
height : 500px;
}
.button{
width : 100px;
height : 30px;
background : gray;
border-radius : 3px;
border : 2px solid gray;
color : white;
margin : 10px;
}

#enroll{
border : 1px solid lightgray;
width : 100%;
height : 86px;
background : white;
}
.btn-area{
    width: 100%;
    height: 60px;
    margin-left: 10%;
}
#list{
	margin-top: 15px;
}
.btn-ctm.btn-blue{
	margin-top: 15px;
	width: 130px;
	height: 38px;
	border: none;
	color: white;
	float: left;
	margin-left: 20px;
	text-align: center;
}

.btn-ctm.btn-blue{background: #027dbf;}

.btn-ctm.btn-blue.delete{
	margin-left: 117px;
}

#enroll{
border : 1px solid lightgray;
width : 100%;
height : 86px;
background : #027dbf;
color: white;
}
#comment_td{
width : 80%;
}
#enroll_td{
width : 10%;
}
#comment_table{
margin-top : 85px;
border : 0;
margin-bottom: 100px;
}
#comment_table td{
border : 0;
}
#comment_table textarea{
	width: 700px;
	height: 100px;
	resize: none;
}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="cont758">
		<div class="reviewboard">
			<h3>REVIEW DETAIL</h3>
		</div>
		<form>
		
<table class="content">
<tr><td class="td_title">제목</td><td class="td_con"> ${detail.boardtitle}</td></tr>
<tr><td class="td_title">작성자</td><td class="td_con">${detail.boardwriter}</td></tr>
<tr><td class="td_title">조회수</td><td class="td_con">${detail.readcount}</td></tr>
<tr><td class="td_title">작성일자</td><td class="td_con">${detail.boarddate}</td></tr>
<tr><td class="td_title">내용</td><td class="td_content">
<c:if test="${!empty detail.boardimage1}"  >
<div class="images">								
<img src="resources/uploadFiles/creview/${detail.boardimage1 }" width="100%" height="100%" class="boximage">
</div>
</c:if>
<c:if test="${empty detail.boardimage1}"  >
<div></div>
</c:if>
<div>${detail.boardcontent}</div></td></tr>
</table>

	<div class="btn-area">
	<c:if test="${loginUser.memberid == detail.boardwriter}">
	<a class="btn-ctm btn-blue" href="CreviewDelete.do?boardno=${detail.boardno}"><span id="list">Delete</span></a> 
	<a class="btn-ctm btn-blue" href="CreviewModifyFormView.do?boardno=${detail.boardno}"><span id="list">Modify</span></a> 
	</c:if>
	<c:url var="clist" value="CreviewList.do"/>
	<a class="btn-ctm btn-blue" href="${clist}"><span id="list">List</span></a> 
	</div>
</form>
<!-- 댓글 목록 -->
<div id="replylist"></div>		

<table id="comment_table"><tr><td id="comment_td"><textarea id="replycontent"></textarea></td><td id="enroll_td">
<input type="button" id="enroll" value="등록"></td></tr></table>
		
			
</div>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>