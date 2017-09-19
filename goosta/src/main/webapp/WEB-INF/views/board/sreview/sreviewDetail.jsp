<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 글쓰기 게시판</title>
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

#reviewWriteDiv {
	width: 70%;
	margin: auto;
}

#reviewWriteDiv #reviewTable, 
#reviewWriteDiv #reviewTable tr td {
	/* border: 1px solid red; */
}

#reviewWriteDiv #reviewTable {
	width: 100%;
	text-align: center;
	border-collapse: collapse;
	border: 1px solid lightgray;
	margin-bottom: 3%;
}

#reviewWriteDiv #reviewTable tr td {
	border: 1px solid lightgray;
}

#reviewWriteDiv #reviewTitleInput {
	border: none;
	width: 95%;
	height: 30px;
	font-weight: bold;
    margin-left: 2%;
}

#reviewWriteDiv #reviewWriterLabel {
	text-align: left;
	font-size: 1.2em;
}

#reviewWriteDiv .emptyStarSpan,
#reviewWriteDiv .emptyStarSpan .fullStarSpan {
	text-align: left;
	display: inline-block;	/* 없애면 안보임 */
	width: 100px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 18.6px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
}


#reviewWriteDiv .emptyStarSpan {
	background: url(resources/images/product/0star2.png) no-repeat 0 0;	/* 별 0개 이미지 */
	margin-top: 2px;	/* 줄 높이 맞추기 */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
	margin-right: 2%;
}

#reviewWriteDiv .emptyStarSpan .fullStarSpan {
	background: url(resources/images/product/5star2.png) no-repeat 0 0;	/* 별 5개 이미지 */
	/* width: 70%; */		/* 평점 조절 (10%당 별 반칸) */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}

#reviewWriteDiv .ratingContentDiv {
	position: relative;
	top: 0;
	left: 0;
	display: inline-block;
}

#reviewWriteDiv .ratingContentDiv .emptyRatingSpan {
	display: inline-block;	/* 없애면 안보임 */
	width: 253px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 11px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	background: url(resources/images/product/bg-review-bar3.png) no-repeat 0 0;
	background-size: 253px 11px;	/* 이미지 크기 조절 */
	vertical-align: -21%;	/* 줄높이 맞추기 */
}

#reviewWriteDiv .ratingContentDiv .emptyRatingSpan span{
	display: inline-block;	/* 없애면 안보임 */
	width: 37px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 11px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	background: url(resources/images/product/bg-review-bar3-on.png) right 0 no-repeat;
	background-size: 37px 11px;	/* 이미지 크기 조절 */
	vertical-align: top;	/* 줄높이 맞추기 */
}

#reviewWriteDiv .ratingContentDiv .sp1,
#reviewWriteDiv .ratingContentDiv .sp2,
#reviewWriteDiv .ratingContentDiv .sp3 {
	position: absolute;
	font-size: 0.8em;
	color: #999;
}

#reviewWriteDiv .ratingContentDiv .sp1 {
	left: 0;
}

#reviewWriteDiv .ratingContentDiv .sp2 {
	left: 41%;
}

#reviewWriteDiv .ratingContentDiv .sp3 {
	right: 0;
}

#reviewWriteDiv #reviewContentTextarea {
	width: 95%;
	height: 360px;
	border: none;
	resize: none;
}

#reviewWriteDiv #reviewPictureInput {
	margin-left: 3%;
}

#reviewWriteDiv #reviewWriteBottom {
	text-align: right;
}

#reviewWriteDiv #reviewWriteBottom #modifyButton {
    display: inline-block;
    width: 7%;
	height: 30px;
    border: none;
    text-align: center;
    background: #0487cd;
    color: white;
    font-size: 15px;
    line-height: 190%;
    margin-right: 3%;
}

#reviewWriteDiv #reviewWriteBottom #deleteButton {
	display: inline-block;
    width: 7%;
	height: 30px;
    border: none;
    text-align: center;
    background: #777;
    color: white;
    font-size: 15px;
    line-height: 190%;
}



#comment_table{
	width: 100%;
	margin-top: 20%;
    border: 0;
    margin-bottom: 5%;
	border: 1px solid lightgray;
}
#comment_table td{
	border : 0;
}
#comment_table textarea{
	width: 100%;
	height: 100px;
	resize: none;
}
#comment_td{
	width : 80%;
}
#enroll_td{
	width : 10%;
}
#enroll{
	border : 1px solid lightgray;
	width : 100%;
	height : 100px;
	background : #027dbf;
	color: white;
}

</style>
<script type="text/javascript">
$(function(){
	$("#ratingPointSpan1").css("width", $("input[name=reviewsize]").val());
	$("#ratingPointSpan2").css("width", $("input[name=reviewfoot]").val());
	$("#ratingPointSpan3").css("width", $("input[name=reviewcolor]").val());
	$("#ratingPointSpan4").css("width", $("input[name=reviewdeliver]").val());
	
	$("td:nth-child(2n+1)").css("background", "#f6f6f6");
	$("td:nth-child(2n+1)").css("color", "gray");
	$("td:nth-child(2n+1)").css("border-left", "1px solid white");
	$("td:nth-child(2n)").css("border-right", "1px solid white");
	$("tr:lt(10)").css("height", "50");
	$("tr:eq(10)").css("height", "400");
	$("tr:eq(11)").css("height", "50");
	$("td:eq(1), td:eq(3), td:eq(5), td:eq(9), td:eq(11), td:eq(13), td:eq(15), td:eq(17), td:eq(19)").css("text-align", "left");
	$("td:eq(1), td:eq(3), td:eq(5), td:eq(9), td:eq(11), td:eq(13), td:eq(15), td:eq(17), td:eq(19)").css("padding-left", "3%");
	
	var loginUser = $("#loginUser").val();
	var loginUserId = $("#loginUserId").val();
	var boardwriter = $("#boardwriter").val();
	var boardno = $("#boardno").val();
	/* console.log(loginUser);
	console.log(loginUserId);
	console.log(boardwriter);
	console.log(boardno); */
	$("#modifyButton").click(function(){
		if(loginUser == null || loginUser == ""){
			alert("로그인해주세요.");
		}else if(loginUserId != boardwriter){
			alert("수정 권한이 없습니다.")
		}else {
			document.location.href="sreviewModifyView.do?boardno=" + boardno;
		}
	});
	
	$("#deleteButton").click(function(){
		if(loginUser == null || loginUser == ""){
			alert("로그인해주세요.");
		}else if(loginUserId != boardwriter){
			alert("삭제 권한이 없습니다.")
		}else {
			document.location.href="sreviewDelete.do?boardno=" + boardno;
		}
	});
	
	
	
	
	
	//댓글 수정버튼
	$(document).on("click", ".reply_modifyButton", function(){
		var replywriter = $(this).parent().prev().find(".replywriter").html();
		
		if(loginUser == null || loginUser == ""){
			alert("로그인해주세요.");
		}else if(loginUserId != replywriter){
			alert("수정 권한이 없습니다.")
		}else {
			$(this).hide();
			$(this).next().hide();
			$(this).next().next().show();
			$(this).next().next().next().show();
			$(this).parent().parent().next().find(".replycontent").attr("readonly", false);
			$(this).parent().parent().next().find(".replycontent").css("background", "white");
		}
	});
	
	//댓글 삭제버튼
	$(document).on("click", ".reply_deleteButton", function(){
		var replywriter = $(this).parent().prev().find(".replywriter").html();
		var replyno = $(this).parent().find(".replyno").val();
		var replycontent = $(this).parent().parent().next().find(".replycontent").val();
		
		/* console.log(loginUser);
		console.log(loginUserId);
		console.log(replycontent);
		console.log(replywriter);
		console.log(replyno); */
		
		if(loginUser == null || loginUser == ""){
			alert("로그인해주세요.");
		}else if(loginUserId != replywriter){
			alert("삭제 권한이 없습니다.")
		}else {
			if(confirm("정말 삭제하시겠습니까?") == true){
				alert("해당 글이 삭제되었습니다.")
				$.ajax({
					type:"post",
					contentType: "application/json",
					url : "reportReply_delete.do?replyno=" + replyno,
					success: function(){
						//댓글 쓰기가 완료되면 댓글 목록 갱신
						reply_list();
						$("#replycontent").val("");
					}
				});
			}
		}
	});
	
	//댓글 수정 확인버튼
	$(document).on("click", ".reply_modifyOkButton", function(){
		var replyno = $(this).parent().find(".replyno").val();
		var replycontent = $(this).parent().parent().next().find(".replycontent").val();
		
		/* console.log(loginUser);
		console.log(loginUserId);
		console.log(replywriter);
		console.log(replyno);
		console.log(replycontent); */
		
		
		alert("해당 글이 수정되었습니다");
		
		$.ajax({
			type:"post",
			contentType: "application/json",
			url : "reportReply_modify.do?replyno=" + replyno + "&replycontent=" + replycontent,
			success: function(){
				//댓글 쓰기가 완료되면 댓글 목록 갱신
				reply_list();
				$("#replycontent").val("");
			}
		});
	});
	
	//댓글 수정 취소버튼
	$(document).on("click", ".reply_modifyCancelButton", function(){
		$(this).hide();
		$(this).prev().hide();
		$(this).prev().prev().show();
		$(this).prev().prev().prev().show();
		
		var contentBackup = $(this).parent().find(".replycontentBackup").val();
		$(this).parent().parent().next().find(".replycontent").val(contentBackup);
		$(this).parent().parent().next().find(".replycontent").attr("readonly", true);
		$(this).parent().parent().next().find(".replycontent").css("background", "#f6f6f6");
		
	});
});


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
			var output ="<table style='text-align:left;width:100%;background:#f6f6f6;border:1px solid lightgray;'>";
			for( var i in json){
				output += "<tr style='border-bottom:1px solid lightgray;'>";
				output += "<td style='width:70%;height:35px;border-bottom:0px;padding-left:10px;'>"+ "<span style='font-weight:bold;' class='replywriter'>" 
						+ json[i].replywriter + "</span>" +" "+ "<span style='margin-left:10px;font-size: 9pt;color: lightslategray;'>"
						+ json[i].replydate + "</span></td>"
						+ "<td style='width:30%;'>"
						+ "<input type='hidden' value='" + json[i].replyno + "' name='replyno' class='replyno'>"
						+ "<input type='hidden' value='" + json[i].replycontent + "' name='replycontent' class='replycontentBackup'>"
						+ "<a class='reply_modifyButton' href='#' onclick='return false;' style='display: inline-block;width: 21%;height: 26px;border: none;text-align: center;background: #0487cd;color: white;font-size: 13px;line-height: 190%;margin-left: 48%;margin-right: 5%;'>Modify</a>"
						+ "<a class='reply_deleteButton' href='#' onclick='return false;' style='display: inline-block;width: 21%;height: 26px;border: none;text-align: center;background: #777;color: white;font-size: 13px;line-height: 190%;'>Delete</a>"
						+ "<a class='reply_modifyOkButton' href='#' onclick='return false;' style='display: inline-block;width: 21%;height: 26px;border: none;text-align: center;background: #0487cd;color: white;font-size: 13px;line-height: 190%;margin-left: 48%;margin-right: 5%;'>Ok</a>"
						+ "<a class='reply_modifyCancelButton' href='#' onclick='return false;' style='display: inline-block;width: 21%;height: 26px;border: none;text-align: center;background: #777;color: white;font-size: 13px;line-height: 190%;'>Cancel</a></td>";
						/* + "<div id=''>" + "<a onclick='reply()'>" + "답글" + "</a>" + "</td>"; */
				output += "</tr>";
				output += "<tr id='down' style='border-bottom:1px solid lightgray;'>";
				output += "<td colspan='2' style='vertical-align:top;'><input type='text' class='replycontent' value='" + json[i].replycontent + "' style='width: 100%;padding: 10px;background:#f6f6f6;border:none;' size='40' readonly></td>";
				/* output += "<td></td>"; */
				output += "</tr>";
			}
			output +="</table>";
			//div에 댓글 목록을 출력시킴
			$("#replylist").html(output);
			reply_modifyHide();
		}
	});
	
	function test(){
		alert("성공");
	}
}

//댓글 수정 확인 취소 버튼 숨기기
function reply_modifyHide(){
	$("#replylist table tr").each(function(){
		$(this).find("td").find("a:eq(2)").hide();
		$(this).find("td").find("a:eq(3)").hide();
	});
}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"/>
<section>
	<div id="boardTitleDiv">Review</div>
	<div id="reviewWriteDiv">
		<table id="reviewTable">
			<colgroup>
				<col width="200">
				<col width="*">
			</colgroup>
			<tr>
				<td>상품사진</td>
				<td><a href="detail.do?productname=${ product.productname }"><img src="${ productimagemain }" width="200" height="200" border="0"></a></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td>${ product.productname }</td>
			</tr>
			<tr>
				<td>사이즈</td>
				<td>${ product.productsize }</td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input type="text" id="reviewTitleInput" value="${ vo.boardtitle }" readonly></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><label id="reviewWriterLabel">${ vo.boardwriter }</label></td>
			</tr>
			<tr>
				<td>별점</td>
				<td>
					<c:set var="starPercent" value="${ vo.starquantity * 20 }"/>
					<span class="emptyStarSpan"><span class="fullStarSpan" style="width: ${starPercent}%;"></span></span>
				</td>
			</tr>
			<tr>
				<td>사이즈 리뷰</td>
				<td>
					<input type="hidden" value="${ vo.reviewsize }" name="reviewsize">
					<div class="ratingContentDiv">
						<span class="emptyRatingSpan"><span id="ratingPointSpan1"></span></span><br>
						<span class="sp1">매우 작아요</span><span class="sp2">적당해요</span><span class="sp3">매우 커요</span>
					</div>
				</td>
			</tr>
			<tr>
				<td>발볼 리뷰</td>
				<td>
					<input type="hidden" value="${ vo.reviewfoot }" name="reviewfoot">
					<div class="ratingContentDiv">
						<span class="emptyRatingSpan"><span id="ratingPointSpan2"></span></span><br>
						<span class="sp1">매우 작아요</span><span class="sp2">적당해요</span><span class="sp3">매우 커요</span>
					</div>
				</td>
			</tr>
			<tr>
				<td>색상 리뷰</td>
				<td>
					<input type="hidden" value="${ vo.reviewcolor }" name="reviewcolor">
					<div class="ratingContentDiv">
						<span class="emptyRatingSpan"><span id="ratingPointSpan3"></span></span><br>
						<span class="sp1">매우 어두워요</span><span class="sp2">적당해요</span><span class="sp3">매우 밝아요</span>
					</div>
				</td>
			</tr>
			<tr>
				<td>배송 리뷰</td>
				<td>
					<input type="hidden" value="${ vo.reviewdeliver }" name="reviewdeliver">
					<div class="ratingContentDiv">
						<span class="emptyRatingSpan"><span id="ratingPointSpan4"></span></span><br>
						<span class="sp1">매우 느려요</span><span class="sp2">적당해요</span><span class="sp3">매우 빨라요</span>
					</div>
				</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea id="reviewContentTextarea" readonly>${ vo.boardcontent }</textarea>
				</td>
			</tr>
			<tr>
				<td>사진 파일</td>
				<td><input type="file" id="reviewPictureInput"></td>
			</tr>
		</table>
		<div id="reviewWriteBottom">
			<input type="hidden" value="${ loginUser }" id="loginUser">
			<c:if test="${ !empty loginUser }">
				<input type="hidden" value="${ loginUser.memberid }" id="loginUserId">
			</c:if>
			<input type="hidden" value="${ vo.boardwriter }" id="boardwriter">
			<input type="hidden" value="${ vo.boardno }" id="boardno">
			<a href="#" onclick="return false;" id="modifyButton">Modify</a>
			<a href="#" onclick="return false;" id="deleteButton">Delete</a>
		</div>
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
</section>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>