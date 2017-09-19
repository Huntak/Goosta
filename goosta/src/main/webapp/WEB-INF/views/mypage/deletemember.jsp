<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="resources/css/footer/jquery.scrolltop.css">
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
	.container_s {

	width:776px;padding:0 300px;

}

.global_mypage_lnb {
      padding-top: 130px;
    width: 176px;
    position: absolute;
    margin-left: 305px;
	
}

body, input, select, div, textarea, table, button {
    font-size: 12px;
    font-family: helvetica, arial, verdana, tahoma, 'NanumGothic', '나눔고딕', Malgun Gothic, '맑은고딕', Apple Gothic, Dotum, '돋움', sans-serif;
    letter-spacing: -1px;
    color: #444;
}

h2 {
    display: block;
    font-size: 1.5em;
    -webkit-margin-before: 0.83em;
    -webkit-margin-after: 0.83em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}

#global_container_s.container_s .cat_order {
    width: 900px;
    padding-top: 66px;
    padding-bottom: 1px;
    _text-align:center;
}
.container_s  .cat_order .mycat h1 {
 
    text-align: center;
}

.cat_order {margin:-480px 229px 0px; height:734px;}


.container_s .cat_order {
    _float: right;
    padding: 160px 0 89px;
}

 #global_container_s .cat_order {
    position: relative;
    padding-top: 120px;
}
 	.container_s .cat_order .mycat h1 {text-align:center;}

	.container_s .cat_order .mycat {width:900px;border-bottom:none;}
	.container_s .cat_order h2.tit3.g_title_line {padding-bottom:10px;border-bottom:1px solid #999;}
	.container_s .cat_order h2.tit3.g_title_line + .texyN3 {margin-top:-25px;}
	.container_s .cat_order div.texRE div {margin-top:-3px;}
	.container_s .cat_order div.texRE div.nt {margin-top:-9px;}

h2 {
    display: block;
    font-size: 1.5em;
    -webkit-margin-before: 0.83em;
    -webkit-margin-after: 0.83em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}


.container_s ul.tabN {
    height: auto;
    border: 1px solid #dfdfdf;
    border-top: 1px solid #333;
    background: #f7f7f7;
    margin: 15px 0;
}

ul, ol {
    list-style: none;
}

.global_content .global_mypage_lnb {
    float: left;
    width: 180px;
    padding: 160px 0 60px;
}

.global_mypage_lnb ul {
    padding: 15px 0;
    border-top: 1px solid #d9d9d9;
}	

#container_r {
    width: 100%;
    
    position: relative;
    z-index: 20;
    height: 578px;
}
a{
	text-decoration: none;
}

.main{
	position: relative;
	top: 220px;
	width: 600px;
	left: 800px;
}
input{
	width: 234px;
    height: 34px;
    border: 1px solid #c8cbcc;
    padding-left: 10px;
    margin-bottom: 10px;
    font: 13px/36px 'NotoSansKRRegular','Nanum Gothic';
    color: #666;
}
.main .sp span{
	position: relative;
    top: 10px;
    left: 30px;
    color: lightgray;
}
.main .sp{
    position: relative;
    top: 100px;
    left: -25px;
    width:500px;
    border-top: 1px solid lightgray;
    height: 40px;
}

.main strong{
	    margin-right: 10px;
}

.btn-ctm.btn-blue{background: #027dbf;}
.btn-ctm {
	display: inline-block;
    width: 120px;
    height: 34px;
    text-align: center;
    line-height: 36px;
    margin-left: 20px;
    border: none;
    color: white;
}

.btn-ctm span{
	font:11px/24px 'NotoSansKRRegular','Nanum Gotic';
	line-height: 36px;
	color: white;
}

</style>
<script type="text/javascript">
$(function(){
	$('#dele').hide();
});
	function deletemember(){
		var memberpwd = $('input[name=memberpwd]').val();
		$.ajax({
			url : 'deletemember.do?memberid=${loginUser.memberid}&memberpwd='+memberpwd,
			type: 'post',
			success : function(data){
				if(data.result == 0 ){
					$('#dele').show();
				}else{
					alert('탈퇴되셨습니다.');
					location.href('main.do');
				}
			}
		});
	}
</script>
<script type="text/javascript">


$(function(){
	$("#myreview").click(function(){
		var loginUser = $("#loginUser").val();
		var loginUserId = $("#loginUserId").val();
		
		if(loginUser != null && loginUser != ""){
			document.location.href="myreview.do?search_option=boardwriter&search=" + loginUserId;
		}else{
			alert("로그인해주세요.");
		}
	});
});
</script>

</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"/>
	<div id="container_r">
	<div class="global_mypage_lnb">
		<div class="global_nav_tit">
			<h2><span> ${loginUser.gradename } &nbsp;</span><strong> ${loginUser.memberid }</strong>님</h2>
		</div> 
	           	<ul>
	          		<li><a href="order.do?memberid=${loginUser.memberid }">주문배송</a></li>
			</ul>
	
			<ul>
			
				<li><a href="mile.do?memberid=${loginUser.memberid }">나의 MiLE</a></li>
				<li>
					<input type="hidden" value="${ loginUser }" id="loginUser">
					<c:if test="${ !empty loginUser }">
						<input type="hidden" value="${ loginUser.memberid }" id="loginUserId">
					</c:if>
					<a href="#" onclick="return false;" id="myreview">나의 상품리뷰</a>
				</li>
			</ul>
	
			<ul>
				<li><a href="viewMyQnaList.do?memberid=${loginUser.memberid }">1:1 E-mail 문의</a></li>
			</ul>
	
			<ul>
				<li><a href="upenroll.do">회원정보관리</a></li>
				<li><a href="delm.do">회원탈퇴</a></li>				
			</ul>
	</div>
	<div class="main">
	<form action="deletemember.do" method="post">
	<input type="hidden" name="memberid" value="${ loginUser.memberid }">
	<h2>비밀번호를 입력해주세요</h2>
		<strong>비밀번호</strong> <input type="password" name="memberpwd">
		<input type="submit" value="탈퇴하기" class="btn-ctm btn-blue">
		<div id="dele">비밀번호가 일치하지 않습니다.</div>
		<div class="sp">
		<span>탈퇴하신 후 회원정보는 1년간 보관이 됩니다.</span>
		</div>
		</form>
	</div>
	</div>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>