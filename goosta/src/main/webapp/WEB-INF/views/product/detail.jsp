<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
<!-- CSS -->
<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">

   
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

<!-- zoom -->
<link href="resources/css/product/cloud-zoom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/js/product/jquery.js"></script>
<script type="text/javascript" src="resources/js/product/cloud-zoom.1.0.2.min.js"></script>

<!-- <script type="text/javascript">
jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});
</script> -->
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
	margin-top: 5%;	/* header겹치지않게 */
	width: 1400px;		/* 창크기 조절시 내려오면 수정할 것 */
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

#purchaseOptionDiv {
	/* display: inline-block; */
}

#purchaseOptionDiv #mainImageDiv {
	display: inline-block;	/* div 줄바꿈 되지않도록 */
	/* width: 47%; */
	height: auto;
	background: #f5f5f5;
}

#purchaseOptionDiv #mainImageDiv img {
	margin: auto;
}

#purchaseOptionDiv #selectColorDiv {
	display: inline-block;	/* div 줄바꿈 되지않도록 */
	width: auto;
	height: auto;
	margin-left: 2%;
	margin-bottom: 5%;
    vertical-align: 200%;
}

#purchaseOptionDiv #selectColorDiv img {
	background: #f5f5f5;
	border: 1px solid lightgray;
	margin-bottom: 2px;
}

#purchaseOptionDiv #selectImageDiv img {
	/* border: 2px solid white; */	/* hover시 border로 인해 크기 바뀌지 않도록 */
	background: #f5f5f5;
	border: 1px solid lightgray; 
}

#purchaseOptionDiv #selectColorDiv img:hover,
#purchaseOptionDiv #selectImageDiv img:hover {
	border: 2px solid gray;
}

#purchaseOptionDiv #selectImageDiv {
	/* display: block; */	/* div 다시 줄바꿈 되도록 */
	padding-bottom: 3%;
	position: relative;
	top: -38px;
}

#purchaseOptionDiv #productOptionDiv {
	margin-top: 3%;
	display: inline-block;	/* div 줄바꿈 되지않도록 */
	vertical-align: top;	/* 위쪽 정렬 */
	width: 40%;
	margin-left: 4%;
}

#purchaseOptionDiv #productOptionDiv .emptyStarSpan, 
#purchaseOptionDiv #productOptionDiv .emptyStarSpan .fullStarSpan{
	display: inline-block;	/* 없애면 안보임 */
	width: 100px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 18.6px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
}

#purchaseOptionDiv #productOptionDiv .emptyStarSpan {
	background: url(resources/images/product/0star2.png) no-repeat 0 0;	/* 별 0개 이미지 */
	margin-top: 2px;	/* 줄 높이 맞추기 */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}

#purchaseOptionDiv #productOptionDiv .emptyStarSpan .fullStarSpan {
	background: url(resources/images/product/5star2.png) no-repeat 0 0;	/* 별 5개 이미지 */
	width: 70%;		/* 평점 조절 (10%당 별 반칸) */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}

#purchaseOptionDiv #productOptionDiv .starCount {
	padding-left: 3px;
    display: inline-block;	/* div 줄바꿈 되지않도록 */
    vertical-align: 12%;	/* 줄 높이 맞추기 */
    letter-spacing: -1px;
	font-weight: bold;
}

#purchaseOptionDiv #productOptionDiv .reviewLink {
	padding-left: 5px;
    display: inline-block;	/* div 줄바꿈 되지않도록 */
    vertical-align: 19%;	/* 줄 높이 맞추기 */
    font-size: 0.9em;
    font-weight: bold;
    color: #0487cd;		/* 파란색 */
}

#purchaseOptionDiv #productOptionDiv #productTitleDiv {
	padding-top: 16px;
}

#purchaseOptionDiv #productOptionDiv #productTitleDiv p {
    font-weight: bold;
    font-size: 1.4em;
    color: #0487cd;
}

#purchaseOptionDiv #productOptionDiv #productColorDiv {
    padding-top: 6px;
}

#purchaseOptionDiv #productOptionDiv #productColorDiv #colorTitleSpan {
	color: gray;
    font-size: 1.3em;
}

#purchaseOptionDiv #productOptionDiv #productColorDiv #colorSpan {
	font-size: 1.2em;
    font-weight: bold;
}

#purchaseOptionDiv #productOptionDiv #productColorDiv #colorSpanBackground {
	display: inline-block;
	width: 15px;
	height: 15px;
    vertical-align: -10%;
    border-radius: 100%;
}

#purchaseOptionDiv #productOptionDiv #productPriceDiv {
	padding-top: 16px;
}

#purchaseOptionDiv #productOptionDiv #productPriceDiv #priceTitleSpan {
	color: gray;
    font-size: 1.3em;
}

#purchaseOptionDiv #productOptionDiv #productPriceDiv #priceSpan {
	font-size: 1.2em;
    font-weight: bold;
}

#purchaseOptionDiv #productOptionDiv #productPriceDiv #wonSpan {
	/* vertical-align: 13%; */	/* 글자 밑쪽정렬 */
    /* font-size: 1.2em; */
}

#purchaseOptionDiv #productOptionDiv #productPointDiv {
	padding-top: 16px;
}

#purchaseOptionDiv #productOptionDiv #productPointDiv #pointSpan1 {
	/* padding-left: 10px; */
	color: gray;
	font-size: 1.3em;
}

#purchaseOptionDiv #productOptionDiv #productPointDiv #pointSpan2,
#purchaseOptionDiv #productOptionDiv #productPointDiv #pointSpan3,
#purchaseOptionDiv #productOptionDiv #productPointDiv #pointSpan4 {
	font-size: 1.2em;
    font-weight: bold;
    color: #0487cd;		/* 파란색 */
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv {
	padding-top: 6%;
	padding-bottom: 10%;	/* float속성 크기 안먹으니까 맞춰주기위해 */
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #sizeChartDiv {
	
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #sizeChartDiv #viewSizechart {
	margin-top: 16px;
	padding-left: 8px;
	padding-right: 8px;
	padding-top: 5px;
	padding-bottom: 5px;
	display: inline-block;		/* padding 적용되도록 */
	border: 1px solid blue;
	font-weight: bold;
	color: #0487cd;		/* 파란색 */
	font-size: 0.8em;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv {
	position: relative;
	z-index: 5;
	margin-top: 16px;
	display: inline-block;	/* selectSizeDiv, selectQuantityDiv를 같은 줄에 */
	width: 56%;
	float: left;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv {
	position: relative;
	z-index: 5;
	margin-top: 16px;
	display: inline-block;	/* selectSizeDiv, selectQuantityDiv를 같은 줄에 */
	width: 30%;
    padding-left: 6%;
    float: left;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv .selectDt {
	cursor: pointer;		/* 마우스 손모양으로 변경 */
	/* padding-left: 4%; */
	border: 1px solid lightgray;
	/* border-collapse:collapse; */
	position: relative;
	height: 34px;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv .selectDt {
	cursor: pointer;		/* 마우스 손모양으로 변경 */
	/* padding-left: 9%; */
	border: 1px solid lightgray;
	/* border-collapse:collapse; */
	position: relative;
	height: 34px;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv .selectDt .s1 {
	font-weight: bold;
	color: #333;		/* 옅은 검은색 */
	position: absolute;
	left: 5%;
    top: 24%;
}
#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv .selectDt .s1 {
	/* vertical-align: super; */		/* 줄 높이 맞추기 */
	font-weight: bold;
	color: #333;		/* 옅은 검은색 */
	position: absolute;
	left: 10%;
    top: 24%;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv .selectDt .s2 {
	/* vertical-align: super; */		/* 줄 높이 맞추기 */
	/* padding-left: 62%; */
	font-weight: bold;
	font-size: 1.5em;
	position: absolute;
	right: 5%;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv .selectDt .s2 {
	/* vertical-align: super; */		/* 줄 높이 맞추기 */
	/* padding-left: 19%; */
	font-weight: bold;
	font-size: 1.5em;
	position: absolute;
	right: 7%;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv .optionDt {
    position: relative;		/* 기본위치에서 */
    top: -1px;				/* -1px 올림 */
	padding-left: 3%;
	padding-right: 2%;
	padding-top: 3%;
	padding-bottom: 1%;
	border: 1px solid lightgray;
	width: auto;
	background: white;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv .optionDt {
	position: relative;		/* 기본위치에서 */
    top: -2px;				/* -1px 올림 */
	border: 1px solid lightgray;
	background: white;
	width: auto;
	height: 194px;
    overflow: auto;
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv .optionDt .sizeOptionSpan {
	cursor: pointer;		/* 마우스 손모양으로 변경 */
	margin-left: 1%;		/* 기본 1% margin있음 */
	margin-bottom: 2%;
	border: 1px solid lightgray;
	display: inline-block;		/* 크기조절을 위해 */
	width: 35px;
	height: 35px;
	text-align: center;		/* 가운데 정렬(좌우) */
	font-size: 0.9em;
	line-height: 250%;		/* 가운데 정렬(위아래) */
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv .optionDt .quantityOptionSpan {
	cursor: pointer;		/* 마우스 손모양으로 변경 */
	border-bottom: 1px solid lightgray;
	display: block;
	text-align: center;		/* 가운데 정렬(좌우) */
	font-size: 0.9em;
	line-height: 250%;		/* 가운데 정렬(위아래) */
}

#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectSizeDiv .optionDt .sizeOptionSpan:hover,
#purchaseOptionDiv #productOptionDiv #sizeQuantityDiv #selectQuantityDiv .optionDt .quantityOptionSpan:hover {
	border-color: black;
}

#purchaseOptionDiv #productOptionDiv #etcDiv {
	position: relative;
}

#purchaseOptionDiv #productOptionDiv #etcDiv #sizeAlertDiv1, 
#purchaseOptionDiv #productOptionDiv #etcDiv #sizeAlertDiv2 {
	position: absolute;
    z-index: 0;
	width: 86%;
	margin-top: 10px;
	text-align: center;
    font-weight: bold;
    color: #0487cd;		/* 파란색 */
}

#purchaseOptionDiv #productOptionDiv #etcDiv #deliveryFeeDiv {
	position: absolute;
    z-index: 0;
    top: 35px;
	width: 86%;
	margin-top: 12px;
    padding-top: 10px;
    border-top: 1px solid gray;
}

#purchaseOptionDiv #productOptionDiv #etcDiv #deliveryFeeDiv #df1 {
	text-align: center;
	font-size: 0.8em;
	font-weight: bold;
}

#purchaseOptionDiv #productOptionDiv #etcDiv #deliveryFeeDiv #df2 {
	margin-left: 6%;
	text-align: center;
	font-size: 0.8em;
	color: gray;
}

#purchaseOptionDiv #productOptionDiv #etcDiv #buttonDiv {
	position: absolute;
    z-index: 0;
    top: 90px;
    width: 100%;
	margin-top: 25px;
}

#purchaseOptionDiv #productOptionDiv #etcDiv #buttonDiv #buyButton {
	cursor: pointer;		/* 마우스 손모양으로 변경 */
	display: inline-block;	/* div 줄바꿈 되지않도록 */
	padding-top: 3%;
    padding-bottom: 3%;
	width: 250px;
	background: #027dbf;
	text-align: center;
	color: white;
}

#purchaseOptionDiv #productOptionDiv #etcDiv #buttonDiv #cartButton {
	margin-left: 8%;
	cursor: pointer;		/* 마우스 손모양으로 변경 */
	display: inline-block;	/* div 줄바꿈 되지않도록 */
	padding-top: 3%;
    padding-bottom: 3%;
	width: 150px;
	background: #777;
	text-align: center;
	color: white;
}

#productDetailDiv {
	margin-top: 5%;
}

/* #productDetailDiv #productTitleDiv {
	text-align: center;
	margin-bottom: 2%;
}

#productDetailDiv #productTitleDiv #categoryP {
	padding-top: 3%;
    font-size: 25px;
    color: #707070;
}

#productDetailDiv #productTitleDiv #titleP {
	font-size: 30px;
}

#productDetailDiv #productContentDiv {
	font-weight: bold;
	font-size: 0.8em;
	margin-bottom: 3%;
} */
#productDetailDiv #productContentDiv {
    margin-bottom: 10%;
}

#productDetailDiv #productContentDiv img {
	display: inherit;
    margin: auto;
}

#productDetailDiv #productSpecificationDiv {
	margin: auto;
}

#productDetailDiv #productSpecificationDiv table {
	width: 100%;
	text-align: left;
	border-collapse: collapse;
	font-size: 0.9em;
}

#productDetailDiv #productSpecificationDiv table th {
	background: #f2f2f2;
    color: #777;
    height: 32px;
    padding-left: 15px;
    border-bottom: 1px solid #e2e3e4;
}

#productDetailDiv #productSpecificationDiv table td {
	height: 32px;
    padding-left: 15px;
    border-bottom: 1px solid #e2e3e4;
}

#productDetailDiv #productSpecificationDiv #productEtcInfoDiv {
    padding-top: 10px;
    padding-bottom: 20%;
    font-size: 12px;
    font-weight: bold;
}

#productDetailDiv #productSpecificationDiv #productEtcInfoDiv #view_deliv {
	color: #0286cd;
	margin-right: 3%;
}

#productDetailDiv #productSpecificationDiv #productEtcInfoDiv #view_clean_guide {
	margin-right: 3%;
}

#productDetailDiv #productSpecificationDiv #productEtcInfoDiv #view_as {
	margin-right: 56%;
}

#productDetailDiv #productSpecificationDiv #productEtcInfoDiv #view_warning {
	padding: 5px;
	color: #666;
	background: #f2f2f2;
}

#reviewDiv {
	
}

#reviewDiv #reviewTitleDiv {
	font-size: 30px;
	padding-bottom: 2%;
	margin-bottom: 3%;
    text-align: center;
    border-bottom: 3px solid  #ebebeb;
}

#reviewDiv #reviewRatingDiv {
	display: inline-block;
	width: 24%;
	text-align: center;
	margin-top: 5%;
	margin-left: 10%;
	margin-bottom: 10%;
	vertical-align: top;
}

#reviewDiv #reviewRatingDiv .emptyStarSpan,
#reviewDiv #reviewRatingDiv .emptyStarSpan .fullStarSpan {
	text-align: left;
	display: inline-block;	/* 없애면 안보임 */
	width: 140px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 26px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
}

#reviewDiv #reviewRatingDiv .emptyStarSpan {
	background: url(resources/images/product/0star2.png) no-repeat 0 0;	/* 별 0개 이미지 */
	margin-top: 2px;	/* 줄 높이 맞추기 */
	background-size: 140px 26px;	/* 이미지 크기 조절 */
}

#reviewDiv #reviewRatingDiv .emptyStarSpan .fullStarSpan {
	background: url(resources/images/product/5star2.png) no-repeat 0 0;	/* 별 5개 이미지 */
	width: 70%;		/* 평점 조절 (10%당 별 반칸) */
	background-size: 140px 26px;	/* 이미지 크기 조절 */
}

#reviewDiv #reviewRatingDiv .starCount {
	padding-left: 5px;
    display: inline-block;	/* div 줄바꿈 되지않도록 */
    vertical-align: 7%;	/* 줄 높이 맞추기 */
    font-size: 1.6em;
    color: #ffb500;
    font-weight: bold;
}

#reviewDiv #reviewRatingDiv #reviewCountP {
	margin-top: 3%;
	margin-bottom: 4%;
	font-size: 1.5em;
}

/* #reviewDiv #reviewRatingDiv #reviewPercentP {
    font-size: 48px;
} */

#reviewDiv #reviewRatingDiv #reviewDescP {
    font-size: 15px;
    font-weight: bold;
	margin-bottom: 5%;
}

#reviewDiv #reviewRatingDiv .ratingDiv {
	margin-bottom: 10%;
	text-align: left;
	font-size: 0.9em;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingTitleDiv {
	display: inline-block;
	width: 15%;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv {
	position: relative;
	top: 0;
	left: 0;
	display: inline-block;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .emptyRatingSpan {
	display: inline-block;	/* 없애면 안보임 */
	width: 253px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 11px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	background: url(resources/images/product/bg-review-bar3.png) no-repeat 0 0;
	background-size: 253px 11px;	/* 이미지 크기 조절 */
	vertical-align: -21%;	/* 줄높이 맞추기 */
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .emptyRatingSpan span{
	display: inline-block;	/* 없애면 안보임 */
	width: 37px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 11px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	background: url(resources/images/product/bg-review-bar3-on.png) right 0 no-repeat;
	background-size: 37px 11px;	/* 이미지 크기 조절 */
	vertical-align: top;	/* 줄높이 맞추기 */
}

/* #reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .emptyRatingSpan #ratingPointSpan1 {
	padding-left: 15%;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .emptyRatingSpan #ratingPointSpan2 {
	padding-left: 29%;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .emptyRatingSpan #ratingPointSpan3 {
	padding-left: 43%;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .emptyRatingSpan #ratingPointSpan4 {
	padding-left: 57%;
} */

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .sp1,
#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .sp2,
#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .sp3 {
	position: absolute;
	font-size: 0.8em;
	color: #999;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .sp1 {
	left: 0;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .sp2 {
	left: 41%;
}

#reviewDiv #reviewRatingDiv .ratingDiv .ratingContentDiv .sp3 {
	right: 0;
}

#reviewDiv #reviewsListDiv {
	display: inline-block;
	margin-left: 12%;
    width: 45%;
    margin-bottom: 10%;
}

#reviewDiv #reviewsListDiv .reviewDiv {
	padding-bottom: 3%;
    margin-bottom: 3%;
    border-bottom: 1px solid lightgray;
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv {
	position: relative;
	top: 0;
	left: 0;
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv .emptyStarSpan,
#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv .emptyStarSpan .fullStarSpan {
	text-align: left;
	display: inline-block;	/* 없애면 안보임 */
	width: 100px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
	height: 18.6px;		/* div크기 수동으로 설정 *//* background-size랑 크기 맞춰야함 */
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv .emptyStarSpan {
	background: url(resources/images/product/0star2.png) no-repeat 0 0;	/* 별 0개 이미지 */
	margin-top: 2px;	/* 줄 높이 맞추기 */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv .emptyStarSpan .fullStarSpan {
	background: url(resources/images/product/5star2.png) no-repeat 0 0;	/* 별 5개 이미지 */
	width: 70%;		/* 평점 조절 (10%당 별 반칸) */
	background-size: 100px 18.6px;	/* 이미지 크기 조절 */
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv .productNameSpan {
	margin-left: 2%;
	font-size: 0.8em;
	vertical-align: 25%;
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewTitleDiv .reviewWriteDateSpan {
	position: absolute;
	right: 0;
	font-size: 0.8em;
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewContentDiv {
	margin-top: 1%;
    margin-bottom: 1%;
}

#reviewDiv #reviewsListDiv .reviewDiv .reviewWriterDiv .writerIdSpan {
	
}

#reviewDiv #reviewsListDiv #moreReviewButton {
	display: inline-block;
	width: 50%;
    height: 45px;
    border: none;
    text-align: center;
    background: black;
    color: white;
    font-size: 15px;
    line-height: 270%;
    margin-top: 5%;
}








/* 
	vertical-align속성
	
	baseline : (기본값)기초 라인에 대하여 수직 정렬 설정
	sub : 아래첨자를 위해서 적당한 위치에 수직 정렬 설정
	super : 위첨자를 위해서 적당한 위치에 수직 정렬 설정
	top : 상단에 정렬 설정
	middle : 중간에 정렬 설정
	bottom : 하단에 정렬 설정
	text-top : 글꼴의 상단에 정렬 설정
	text-bottom : 글꼴의 하단에 정렬 설정
	(percent) : 상위 속성값에 비례하여 퍼센테이지로(%)로 셀의 수직 정렬 지정
 */
</style>
<script type="text/javascript">
$(function(){
	$("#ratingPointSpan1").css("width", $("input[name=reviewsize]").val() + "px");
	$("#ratingPointSpan2").css("width", $("input[name=reviewfoot]").val() + "px");
	$("#ratingPointSpan3").css("width", $("input[name=reviewcolor]").val() + "px");
	$("#ratingPointSpan4").css("width", $("input[name=reviewdeliver]").val() + "px");
	console.log($("input[name=reviewdeliver]").val());
	
	$(".optionDt").hide();

	$("#selectSizeDiv .selectDt").live("click", function() {
		if($(this).find(".s2").html() == "∨"){
			$(this).find(".s2").html("∧")
		}else{
			$(this).find(".s2").html("∨")
		}
		$(this).parent().find(".optionDt").slideToggle("fast", function() {
			// 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
		});
	});
	
	$(".sizeOptionSpan, .quantityOptionSpan").live("click", function() {
		$(this).parent().prev().find(".s1").html($(this).html());
		
		if($(this).parent().prev().find(".s2").html() == "∨"){
			$(this).parent().prev().find(".s2").html("∧")
		}else{
			$(this).parent().prev().find(".s2").html("∨")
		}
		$(this).parent().slideToggle("fast", function() {
			// 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
		});
	});
	
	$("#sizeAlertDiv1, #sizeAlertDiv2").hide();
	
	$("#selectQuantityDiv .selectDt").live("click", function() {
		if($("#selectSizeDiv .optionDt").css("display") == "block"){
			$("#selectSizeDiv .optionDt").slideToggle("fast", function() {
				// 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
			});
		}
		
		if($("#selectSizeDiv .selectDt .s1").html() == "사이즈 선택"){
			if($("#sizeAlertDiv2").css("display") != "none"){
				$("#sizeAlertDiv2").css("display", "none");
			}
			$("#sizeAlertDiv1").fadeIn(600);
			setTimeout(function(){
				$("#sizeAlertDiv1").fadeOut(600);
			}, 3000);
		}else {
			if($(this).find(".s2").html() == "∨"){
				$(this).find(".s2").html("∧")
			}else{
				$(this).find(".s2").html("∨")
			}
			$(this).parent().find(".optionDt").slideToggle("fast", function() {
				// 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
			});
		}
	});
	
	$("#selectImageDiv img").live("click", function(){
		$("#mainImageDiv img").attr("src", $(this).attr("src"));
		$("#mainImageDiv a").attr("href", $(this).attr("src"));
		
		$.getScript("resources/js/product/cloud-zoom.1.0.2.min.js");
	});
	
	$("#viewSizechart").click(function(){
		window.open('sizeChart.do','sizeChart','scrollbars=yes,toolbar=no,resizable=no,width=850,height=300,left=500%,top=300%,margin=0');
	});
	
	$("#view_deliv").click(function(){
		window.open('shippingAndReturns.do','shippingAndReturns','scrollbars=yes,toolbar=no,resizable=no,width=950,height=800,left=500%,top=50%,margin=0');
	});
	
	$('.view_mdate>img').hover(function(){
		$(this).siblings('div').show();
	},function(){
		$(this).siblings('div').hide();
	});
	
	$("#selectColorDiv img").click(function(){
		$.ajax({
			url : "detailReload.do?productMainImage=" + $(this).attr("src"),
			type : "post",
			success : function(data){
				$("#selectSizeDiv .selectDt .s1").html("사이즈 선택");
				$("#selectQuantityDiv .selectDt .s1").html("수량 선택");
				
				if($("#selectSizeDiv .selectDt").find(".s2").html() == "∧"){
					$("#selectSizeDiv .selectDt").find(".s2").html("∨");
					$("#selectSizeDiv .optionDt").slideToggle("fast", function() {
						// 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
					});
				}
				if($("#selectQuantityDiv .selectDt").find(".s2").html() == "∧"){
					$("#selectQuantityDiv .selectDt").find(".s2").html("∨");
					$("#selectQuantityDiv .optionDt").slideToggle("fast", function() {
						// 객체가 다 펼치지거나 접히고 나면 여기에 든 내용이 실행된다.
					});
				}
				
				$("#mainImageDiv img").attr("src", data[0].productimagemain);
				$("#mainImageDiv a").attr("href", data[0].productimagemain);
				$.getScript("resources/js/product/cloud-zoom.1.0.2.min.js");
				
				var numberComma = data[1].toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
				$("#priceSpan").html(numberComma);
				
				$("#colorSpan").html(data[2]);
				$("#colorSpanBackground").css("background", data[2]);
				
				var sizeOut = "";
				for(var i = 0; i < data[3].length; i++){
					console.log(data[3][i].productquantity);
					if(data[3][i].productquantity != 0){
						sizeOut += '<span class="sizeOptionSpan">' + data[3][i].productsize + '</span>';
					}
				}
				$("#selectSizeDiv .optionDt").html(sizeOut);

				var imageOut = "";
				if(data[0].productimagemain != null){
					imageOut += '<img src="' + data[0].productimagemain + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage1 != null && data[0].productimage1.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage1 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage2 != null && data[0].productimage2.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage2 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage3 != null && data[0].productimage3.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage3 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage4 != null && data[0].productimage4.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage4 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage5 != null && data[0].productimage5.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage5 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage6 != null && data[0].productimage6.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage6 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage7 != null && data[0].productimage7.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage7 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage8 != null && data[0].productimage8.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage8 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage9 != null && data[0].productimage9.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage9 + '" width="60" height="60" border="0" style="margin-right: 5px">';
				}
				if(data[0].productimage10 != null && data[0].productimage10.indexOf("상세") == -1){
					imageOut += '<img src="' + data[0].productimage10 + '" width="60" height="60" border="0">';
				}
				$("#selectImageDiv").html(imageOut);
			},
			error : function(e){
				alert(e.responseText);
			}
		});
		
	});
	
	$("#selectSizeDiv .optionDt .sizeOptionSpan").live("click", function(){
		$.ajax({
			url : "quantityCheck.do?productname=" + $("#productTitleDiv h2").html() + " " + $("#colorSpan").html() + "&productsize=" + $(this).html(),
			type : "post",
			success : function(data){
				var quantityOut = "";
				for(var i = 1; i <= data; i++){
					quantityOut += '<span class="quantityOptionSpan">' + i + '</span>'
				}
				$("#selectQuantityDiv .optionDt").html(quantityOut);
			},
			error : function(e){
				alert(e.responseText);
			}
		});
	});
	
});
</script>
<script type="text/javascript">
function buyNow(){
	if($("#selectSizeDiv .selectDt .s1").html() == "사이즈 선택" || $("#selectQuantityDiv .selectDt .s1").html() == "수량 선택"){
		if($("#sizeAlertDiv1").css("display") != "none"){
			$("#sizeAlertDiv1").css("display", "none");
		}
		$("#sizeAlertDiv2").fadeIn(600);
		setTimeout(function(){
			$("#sizeAlertDiv2").fadeOut(600);
		}, 3000);
		return false;
	}else {
		document.location.href = "pay.do?productname=" + $("#productTitleDiv h2").html() + " " + $("#colorSpan").html() 
								+ "&productsize=" + $("#selectSizeDiv .selectDt .s1").html() 
								+ "&quantity=" + $("#selectQuantityDiv .selectDt .s1").html()
								+ "&mileage=" + $("#pointSpan2").html()
								+ "&membertotalmileage=" + ${loginUser.membertotalmileage}
								+ "&mileagePercent=" +${mileagePercent};
	}
}

function cart(){
	if($("#selectSizeDiv .selectDt .s1").html() == "사이즈 선택" || $("#selectQuantityDiv .selectDt .s1").html() == "수량 선택"){
		if($("#sizeAlertDiv1").css("display") != "none"){
			$("#sizeAlertDiv1").css("display", "none");
		}
		$("#sizeAlertDiv2").fadeIn(600);
		setTimeout(function(){
			$("#sizeAlertDiv2").fadeOut(600);
		}, 3000);
		return false;
	}else {
		document.location.href = "cart2.do?productname=" + $("#productTitleDiv h2").html() + " " + $("#colorSpan").html() 
								+ "&productsize=" + $("#selectSizeDiv .selectDt .s1").html() 
								+ "&quantity=" + $("#selectQuantityDiv .selectDt .s1").html()
								+ "&mileage=" + $("#pointSpan2").html()
								+ "&membertotalmileage=" + ${loginUser.membertotalmileage}
								+ "&mileagePercent=" +${mileagePercent};
	}
}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"/>
<section>
	<div id="purchaseOptionDiv">
		<div id="mainImageDiv">
			<div class="zoom-small-image">
				<a href="${ productimage.productimagemain }" class="cloud-zoom" rel="smoothMove:5,zoomWidth:780,adjustY:0,adjustX:130" >
					<img src="${ productimage.productimagemain }" width="620" height="620" border="0" />
				</a>
			</div>
		</div>
		<div id="selectColorDiv">
			<c:forEach var="productsMainImages" items="${ productsMainImages }">
				<img src="${ productsMainImages }" width="50" height="50" border="0"><br>
			</c:forEach>
		</div>
		<div id="productOptionDiv">
			<c:if test="${ starQuantityRate == 0}">
				<div class="starCount">상품 리뷰가 없습니다.</div>
			</c:if>
			<c:if test="${ starQuantityRate != 0}">
				<c:set var="starPercent" value="${ starQuantityRate * 20 }"/>
				<span class="emptyStarSpan"><span class="fullStarSpan" style="width: ${starPercent}%;"></span></span>
				<div class="starCount">${ starQuantityRate }/5</div>
			</c:if>
			<a href="sreview.do" class="reviewLink">상품평 전체보기</a>
			<div id="productTitleDiv">
				<p>${ categorySort }</p>
				<h2>${ productnameShort }</h2>
			</div>
			<div id="productColorDiv">
				<span id="colorTitleSpan">색상</span>
				<span id="colorSpan">${ productColor }</span>
				<span id="colorSpanBackground" style="background:${ productColor }"></span>
			</div>
			<div id="productPriceDiv">
				<span id="priceTitleSpan">가격</span>
				<span id="priceSpan"><fmt:formatNumber value="${ productPrice }" pattern="#,###" /></span>
				<span id="wonSpan">원</span>
			</div>
			<div id="productPointDiv">
				<c:if test="${ !empty loginUser }">
					<span id="pointSpan1">예상마일리지 </span>
					<span id="pointSpan2"><fmt:formatNumber value="${ mileage }" pattern="#,###" /></span>
					<span id="pointSpan3">point</span>
					<span id="pointSpan4">(${ mileagePercent }%)</span>
				</c:if>
				<c:if test="${ empty loginUser }">
					<span id="pointSpan1">로그인해주세요</span>
				</c:if>
			</div>
			<div id="sizeQuantityDiv">
				<div id="sizeChartDiv">
					<a href="#" id="viewSizechart">사이즈 차트 보기</a>
				</div>
				<div id="selectSizeDiv">
					<div class="selectDt">
						<span class="s1">사이즈 선택</span><span class="s2">∨</span>
					</div>
					<div class="optionDt">
						<c:forEach var="productSizeList" items="${ productSizeList }">
							<c:if test="${ productSizeList.productquantity gt 0 }">
								<span class="sizeOptionSpan">${ productSizeList.productsize }</span> 
							</c:if>
						</c:forEach>
					</div>
				</div>
				<div id="selectQuantityDiv">
					<div class="selectDt">
						<span class="s1">수량 선택</span><span class="s2">∨</span>
					</div>
					<div class="optionDt"></div>
				</div>
			</div>
			<div id="etcDiv">
				<!-- 160927 사이즈 수량 선택 경고 -->
				<div id="sizeAlertDiv1">
					<span>사이즈를 먼저 선택해 주세요.</span>
				</div>
				<div id="sizeAlertDiv2">
					<span>사이즈와 수량을 선택해 주세요.</span>
				</div>
				<div id="deliveryFeeDiv">
					<span id="df1">배송비</span><span id="df2">5만원 이상 구매시 무료배송 (도서 산간 지역은 추가 배송비 발생)</span>
				</div>
				<div id="buttonDiv">
					<a id="buyButton" href="#" onclick="return buyNow();" >구매하기</a>
					<a id="cartButton" href="#" onclick="return cart();" >장바구니</a>
				</div>
			</div>
		</div>
		<div id="selectImageDiv">
			<c:if test="${ !empty productimage.productimagemain }">
				<img src="${ productimage.productimagemain }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage1" value="${ productimage.productimage1 }"/>
			<c:if test="${ !empty productimage1 and !fn:contains(productimage1, '상세') }">
				<img src="${ productimage1 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage2" value="${ productimage.productimage2 }"/>
			<c:if test="${ !empty productimage2 and !fn:contains(productimage2, '상세') }">
				<img src="${ productimage2 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage3" value="${ productimage.productimage3 }"/>
			<c:if test="${ !empty productimage3 and !fn:contains(productimage3, '상세') }">
				<img src="${ productimage3 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage4" value="${ productimage.productimage4 }"/>
			<c:if test="${ !empty productimage4 and !fn:contains(productimage4, '상세') }">
				<img src="${ productimage4 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage5" value="${ productimage.productimage5 }"/>
			<c:if test="${ !empty productimage5 and !fn:contains(productimage5, '상세') }">
				<img src="${ productimage5 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage6" value="${ productimage.productimage6 }"/>
			<c:if test="${ !empty productimage6 and !fn:contains(productimage6, '상세') }">
				<img src="${ productimage6 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage7" value="${ productimage.productimage7 }"/>
			<c:if test="${ !empty productimage7 and !fn:contains(productimage7, '상세') }">
				<img src="${ productimage7 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage8" value="${ productimage.productimage8 }"/>
			<c:if test="${ !empty productimage8 and !fn:contains(productimage8, '상세') }">
				<img src="${ productimage8 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage9" value="${ productimage.productimage9 }"/>
			<c:if test="${ !empty productimage9 and !fn:contains(productimage9, '상세') }">
				<img src="${ productimage9 }" width="60" height="60" border="0">
			</c:if>
			<c:set var="productimage10" value="${ productimage.productimage10 }"/>
			<c:if test="${ !empty productimage10 and !fn:contains(productimage10, '상세') }">
				<img src="${ productimage10 }" width="60" height="60" border="0">
			</c:if>
			
		</div>
	</div>
	<div id="productDetailDiv">
		<!-- <div id="productTitleDiv">
			<p id="categoryP">UNISEX ORIGINALS</p>
			<p id="titleP">플래시백</p>
		</div>
		<div id="productContentDiv">
			70년대 아디다스 러닝화 헤리티지와 모던한 감각의 조화가 돋보이는 여성용 슈즈입니다. 드래곤 OG에서 영감을 받은 클래식 디테일을 재해석하여 신선한 스트리트 스타일을 선사합니다. 발가락과 뒤꿈치의 누버크 오버레이, 메쉬 갑피가 대비를 이루며 텍스쳐를 강조합니다. 톱니 아웃라인의 아웃솔이 드래곤의 아이코닉한 룩을 연출합니다. 두툼한 미드솔을 사용하여 굽 높이를 더했습니다.<br><br>
			• 스포티한 헤리티지 스타일이 살아 있는 스트리트화<br>
			• 메쉬 갑피 및 접합처리된 누버크 오버레이<br>
			• 메쉬 라이닝<br>• TPU 3-스트라이프<br>
			• EVA 미드솔<br>• 누버크 힐 오버레이, 무광 TPU 힐 패치<br>
			• 톱니 아웃라인의 고무 아웃솔<br>
		</div> -->
		<div id="productContentDiv">
			<c:set var="productimage1" value="${ productimage.productimage1 }"/>
			<c:if test="${ fn:contains(productimage1, '상세') }">
				<img src="${ productimage1 }" border="0">
			</c:if>
			<c:set var="productimage2" value="${ productimage.productimage2 }"/>
			<c:if test="${ fn:contains(productimage2, '상세') }">
				<img src="${ productimage2 }" border="0">
			</c:if>
			<c:set var="productimage3" value="${ productimage.productimage3 }"/>
			<c:if test="${ fn:contains(productimage3, '상세') }">
				<img src="${ productimage3 }" border="0">
			</c:if>
			<c:set var="productimage4" value="${ productimage.productimage4 }"/>
			<c:if test="${ fn:contains(productimage4, '상세') }">
				<img src="${ productimage4 }" border="0">
			</c:if>
			<c:set var="productimage5" value="${ productimage.productimage5 }"/>
			<c:if test="${ fn:contains(productimage5, '상세') }">
				<img src="${ productimage5 }" border="0">
			</c:if>
			<c:set var="productimage6" value="${ productimage.productimage6 }"/>
			<c:if test="${ fn:contains(productimage6, '상세') }">
				<img src="${ productimage6 }" border="0">
			</c:if>
			<c:set var="productimage7" value="${ productimage.productimage7 }"/>
			<c:if test="${ fn:contains(productimage7, '상세') }">
				<img src="${ productimage7 }" border="0">
			</c:if>
			<c:set var="productimage8" value="${ productimage.productimage8 }"/>
			<c:if test="${ fn:contains(productimage8, '상세') }">
				<img src="${ productimage8 }" border="0">
			</c:if>
			<c:set var="productimage9" value="${ productimage.productimage9 }"/>
			<c:if test="${ fn:contains(productimage9, '상세') }">
				<img src="${ productimage9 }" border="0">
			</c:if>
			<c:set var="productimage10" value="${ productimage.productimage10 }"/>
			<c:if test="${ fn:contains(productimage10, '상세') }">
				<img src="${ productimage10 }" border="0">
			</c:if>
		</div>
		<div id="productSpecificationDiv">
			<table>
				<colgroup>
					<col width="150">
					<col width="500">
					<col width="150">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<th>제품코드</th>
						<td>BB5323</td>
						<th>컬러</th>
						<td>BLACK / WHITE / BLACK</td>
					</tr>
					<tr>
						<th>용도</th>
						<td colspan="3">운동화</td>
					</tr>
					<tr>
						<th>소재</th>
						<td colspan="3">겉감: 100% 폴리에스터/천연가죽(소), 안감: 100% 폴리에스터</td>
					</tr>
					<tr>
						<th>원산지</th>
						<td>
							<span>인도</span>
							<span class="view_mdate" style="position:relative;margin-left:2px;z-index:5;">
								<img src="http://image.adidas.co.kr/images/adidas/common/ico_q_mark.gif" alt="" style="vertical-align:top;">
								<div style="width: 260px; padding: 25px; position: absolute; top: -20px; left: 20px; display: none; background: rgb(242, 242, 242);">
									<p style="margin-bottom:5px;color:#888;font:bold 12px 'dotum';">원산지 정보란 무엇인가요?</p>
									<p style="color:#888;font:12px/15px 'dotum';letter-spacing:-.75px;">해당 제품이 생산된 지역입니다. 다만 일부 제품의<br>경우 제품 제조 사정으로 인한 복수 표기를 원칙으로<br>하고 있습니다. (예: 태국/중국)</p>
								</div>
							</span>											
						</td>
						<th>제조년월</th>
						<td>
							<span>2016-12</span>
							<span class="view_mdate" style="position:relative;margin-left:2px;z-index:5;">
								<img src="http://image.adidas.co.kr/images/adidas/common/ico_q_mark.gif" alt="" style="vertical-align:top;">
								<div style="width: 260px; padding: 25px; position: absolute; top: -20px; left: 20px; display: none; background: rgb(242, 242, 242);">
									<p style="margin-bottom:5px;color:#888;font:bold 12px 'dotum';">제조년월이란 무엇인가요?</p>
									<p style="color:#888;font:12px/15px 'dotum';letter-spacing:-.75px;">해당 제품이 생산된 년월로 관련 법률에 따라<br>최초 제조년월로 표기하고 있습니다. 정확한 제조년월은<br>배송 받으신 상품의 라벨을 참고하시기 바랍니다.</p>
								</div>
							</span>	
						</td>
					</tr>
					<tr>
						<th>제조자/수입자</th>
						<td colspan="3">adidasAG/ 아디다스코리아㈜</td>
					</tr>
					<tr>
						<th scope="row">안전확인<br>신고 확인증 번호</th>
						<td colspan="3">
							<img src="http://image.adidas.co.kr/images/alliance/common/kc.jpg" alt="image">
						</td>
					</tr>
				</tbody>
			</table>
			<div id="productEtcInfoDiv">
				<a href="#" onclick="return false;" id="view_deliv">• 배송 / 반품 / 교환</a>
				<a href="#" onclick="return false;" id="view_clean_guide">• 세탁 및 취급시 유의사항</a>
				<a href="#" onclick="return false;" id="view_as">• 품질보증 및 AS정보</a>
				<a href="#" onclick="return false;" id="view_warning">컨텐츠 관련 안내</a>
			</div>
		</div>
	</div>
	<div id="reviewDiv">
		<div id="reviewTitleDiv">상품평</div>
		<div id="reviewRatingDiv">
			<c:if test="${ starQuantityRate == 0}">
				<div class="starCount">상품 리뷰가 없습니다.</div>
			</c:if>
			<c:if test="${ starQuantityRate != 0}">
				<c:set var="starPercent" value="${ starQuantityRate * 20 }"/>
				<span class="emptyStarSpan"><span class="fullStarSpan" style="width: ${starPercent}%;"></span></span>
				<div class="starCount">${ starQuantityRate }/5</div>
			</c:if>
			<p id="reviewCountP">${ sreviewProductCount } REVIEWS</p>
			<!-- <p id="reviewPercentP">96%</p> -->
			<p id="reviewDescP">고객님들이 이 상품을 추천하셨습니다.</p>
			<div class="ratingDiv">
				<div class="ratingTitleDiv">사이즈</div>
				<div class="ratingContentDiv">
					<input type="hidden" value="${ reviewSizeRate }" name="reviewsize">
					<span class="emptyRatingSpan"><span id="ratingPointSpan1"></span></span><br>
					<span class="sp1">매우 작아요</span><span class="sp2">적당해요</span><span class="sp3">매우 커요</span>
				</div>
			</div>
			<div class="ratingDiv">
				<div class="ratingTitleDiv">발볼</div>
				<div class="ratingContentDiv">
					<input type="hidden" value="${ reviewFootRate }" name="reviewfoot">
					<span class="emptyRatingSpan"><span id="ratingPointSpan2"></span></span><br>
					<span class="sp1">매우 작아요</span><span class="sp2">적당해요</span><span class="sp3">매우 커요</span>
				</div>
			</div>
			<div class="ratingDiv">
				<div class="ratingTitleDiv">색상</div>
				<div class="ratingContentDiv">
					<input type="hidden" value="${ reviewColorRate }" name="reviewcolor">
					<span class="emptyRatingSpan"><span id="ratingPointSpan3"></span></span><br>
					<span class="sp1">매우 어두워요</span><span class="sp2">적당해요</span><span class="sp3">매우 밝아요</span>
				</div>
			</div>
			<div class="ratingDiv">
				<div class="ratingTitleDiv">배송</div>
				<div class="ratingContentDiv">
					<input type="hidden" value="${ reviewDeliverRate }" name="reviewdeliver">
					<span class="emptyRatingSpan"><span id="ratingPointSpan4"></span></span><br>
					<span class="sp1">매우 느려요</span><span class="sp2">적당해요</span><span class="sp3">매우 빨라요</span>
				</div>
			</div>
		</div>
		<div id="reviewsListDiv">
			<c:choose>
				<c:when test="${fn:length(list)>0 }">
					<c:forEach items="${list}" var="row">
					<div class="reviewDiv">
						<div class="reviewTitleDiv">
							<c:set var="starPercent" value="${ row.starquantity * 20 }"/>
							<span class="emptyStarSpan"><span class="fullStarSpan" style="width: ${starPercent}%;"></span></span>
							<span class="productNameSpan">${ productname } / ${ row.productsize }</span>
							<span class="reviewWriteDateSpan">${row.boarddate}</span>
						</div>
						<div class="reviewContentDiv">${row.boardcontent}</div>
						<div class="reviewWriterDiv">
							<span class="writerIdSpan">${row.boardwriter}</span>
						</div>
					</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<td colspan="5">조회된 결과가 없습니다.</td>
				</c:otherwise>
			</c:choose>
			<a href="sreview.do" id="moreReviewButton">리뷰 더보기</a>
		</div>
	</div>
</section>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>