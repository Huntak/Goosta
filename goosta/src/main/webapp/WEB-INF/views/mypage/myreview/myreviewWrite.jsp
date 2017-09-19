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

#reviewWriteDiv {
	width: 70%;
	margin: auto;
}

#reviewWriteDiv table, 
#reviewWriteDiv table tr td {
	/* border: 1px solid red; */
}

#reviewWriteDiv table {
	width: 100%;
	text-align: center;
	border-collapse: collapse;
	border: 1px solid lightgray;
	margin-bottom: 3%;
}

#reviewWriteDiv table tr td {
	border: 1px solid lightgray;
}

#reviewWriteDiv #reviewTitleInput {
	border: 1px solid lightgray;
	width: 95%;
	height: 30px;
}

#reviewWriteDiv #reviewWriterInput {
	text-align: left;
    font-size: 1.2em;
    border: none;
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
	border: 1px solid lightgray;
	resize: none;
}

#reviewWriteDiv #reviewPictureInput {
	margin-left: 3%;
}

#reviewWriteDiv #reviewWriteBottom {
	text-align: right;
}

#reviewWriteDiv #reviewWriteBottom #okButton {
    display: inline-block;
    width: 7%;
	height: 30px;
    border: none;
    text-align: center;
    background: #0487cd;
    color: white;
    font-size: 17px;
    line-height: 160%;
    margin-right: 3%;
}

#reviewWriteDiv #reviewWriteBottom #okButton:focus {
	outline: none;
}

#reviewWriteDiv #reviewWriteBottom #cancelButton {
	display: inline-block;
    width: 7%;
	height: 30px;
    border: none;
    text-align: center;
    background: #777;
    color: white;
    font-size: 17px;
    line-height: 160%;
}
</style>
<script type="text/javascript">
$(function(){
	$("td:nth-child(2n+1)").css("background", "#f6f6f6");
	$("td:nth-child(2n+1)").css("color", "gray");
	$("td:nth-child(2n+1)").css("border-left", "1px solid white");
	$("td:nth-child(2n)").css("border-right", "1px solid white");
	$("tr:lt(10)").css("height", "50");
	$("tr:eq(10)").css("height", "400");
	$("tr:eq(11)").css("height", "50");
	$("td:eq(1), td:eq(3), td:eq(5), td:eq(9), td:eq(11), td:eq(13), td:eq(15), td:eq(17), td:eq(19)").css("text-align", "left");
	$("td:eq(1), td:eq(3), td:eq(5), td:eq(9), td:eq(11), td:eq(13), td:eq(15), td:eq(17), td:eq(19)").css("padding-left", "3%");
	saveRatingPoint();
	
	$("#insertSReview").submit(function(e){
		if($("#reviewTitleInput").val()==''){
			alert("제목을 입력하십시오.");
			e.preventDefault();
		}else if($(".star").is(":checked") == false){
			alert("별점을 선택하십시오.");
			e.preventDefault();
		}else if($("#reviewContentTextarea").val() == ''){
			alert("내용을 입력하십시오.");
			e.preventDefault();
		}else{
			submit();
		}
	});
	
	
	/* $(".emptyStarSpan").click(function(){
		var width1 = $(this).find(".fullStarSpan").css("width")
		var width2 = width1.substring(0, width1.length - 2);
		var width3 = 0;
		if(width2 == 100){
			width3 = 0 + "%";
		}
		else{
			width3 = (Number(width2) + 10) + "%";
		}
		$(this).find(".fullStarSpan").css("width", width3);
	}); */
	
	
	$(".emptyRatingSpan").click(function(){
		var width1 = $(this).find("span").css("width")
		var width2 = width1.substring(0, width1.length - 2);
		var width3 = 0;
		if(Number(width2) > 240){
			width3 = 37 + "px";
			/* width4 = 37; */
		}else{
			width3 = (Number(width2) + 36) + "px";
			/* width4 = (Number(width2) + 36); */
		}
		console.log("width1=" + width1);
		console.log("width2=" + width2);
		console.log("width3=" + width3);
		
		/* $(this).parent().prev().val(width4); */
		$(this).find("span").css("width", width3);
		saveRatingPoint();
	});
});

function saveRatingPoint(){
	var reviewsizewidth = $("#ratingPointSpan1").css("width");
	$("input[name=reviewsize]").val(reviewsizewidth.substring(0, reviewsizewidth.length - 2));
	var reviewfootewidth = $("#ratingPointSpan2").css("width");
	$("input[name=reviewfoot]").val(reviewfootewidth.substring(0, reviewfootewidth.length - 2));
	var reviewcolorwidth = $("#ratingPointSpan3").css("width");
	$("input[name=reviewcolor]").val(reviewcolorwidth.substring(0, reviewcolorwidth.length - 2));
	var reviewdeliverwidth = $("#ratingPointSpan4").css("width");
	$("input[name=reviewdeliver]").val(reviewdeliverwidth.substring(0, reviewdeliverwidth.length - 2));
}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"/>
<section>
	<div id="boardTitleDiv">Review</div>
	<div id="reviewWriteDiv">
		<form action="myreviewInsert.do" method="get" id="insertSReview">
			<input type="hidden" name="productid" value="${ product.productid } ">
			<table>
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
					<td><input type="text" id="reviewTitleInput" name="boardtitle"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" id="reviewWriterInput" name="boardwriter" value="${ loginUserId }" readonly></td>
				</tr>
				<tr>
					<td>별점</td>
					<td>
						<input type="radio" class="star" name="starquantity" value="0.5">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 10%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="1">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 20%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="1.5">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 30%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="2">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 40%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="2.5">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 50%;"></span></span><br>
						<input type="radio" class="star" name="starquantity" value="3">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 60%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="3.5">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 70%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="4">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 80%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="4.5">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 90%;"></span></span>
						<input type="radio" class="star" name="starquantity" value="5">
						<span class="emptyStarSpan"><span class="fullStarSpan" style="width: 100%;"></span></span>
					</td>
				</tr>
				<tr>
					<td>사이즈 리뷰</td>
					<td>
						<input type="hidden" value="1" name="reviewsize">
						<div class="ratingContentDiv">
							<span class="emptyRatingSpan"><span id="ratingPointSpan1"></span></span><br>
							<span class="sp1">매우 작아요</span><span class="sp2">적당해요</span><span class="sp3">매우 커요</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>발볼 리뷰</td>
					<td>
						<input type="hidden" value="1" name="reviewfoot">
						<div class="ratingContentDiv">
							<span class="emptyRatingSpan"><span id="ratingPointSpan2"></span></span><br>
							<span class="sp1">매우 작아요</span><span class="sp2">적당해요</span><span class="sp3">매우 커요</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>색상 리뷰</td>
					<td>
						<input type="hidden" value="1" name="reviewcolor">
						<div class="ratingContentDiv">
							<span class="emptyRatingSpan"><span id="ratingPointSpan3"></span></span><br>
							<span class="sp1">매우 어두워요</span><span class="sp2">적당해요</span><span class="sp3">매우 밝아요</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>배송 리뷰</td>
					<td>
						<input type="hidden" value="1" name="reviewdeliver">
						<div class="ratingContentDiv">
							<span class="emptyRatingSpan"><span id="ratingPointSpan4"></span></span><br>
							<span class="sp1">매우 느려요</span><span class="sp2">적당해요</span><span class="sp3">매우 빨라요</span>
						</div>
					</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea id="reviewContentTextarea" name="boardcontent"></textarea></td>
				</tr>
				<tr>
					<td>사진 업로드</td>
					<td><input type="file" id="reviewPictureInput"></td>
				</tr>
			</table>
			<div id="reviewWriteBottom">
				<input type="submit" id="okButton" value="Ok">
				<a href="myreview.do?search_option=boardwriter&search=${ loginUser.memberid }" id="cancelButton">Cancel</a>
			</div>
		</form>
	</div>
</section>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>