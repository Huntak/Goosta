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
<style>
	.pass{
	font-size: 12px;
	position: relative;
}

.contents{
	position: relative;
	top: 100px;
	width: 1080px;
	height: 578px;
	
}

.main{
	position: relative;
	top: 130px;
	left: 800px;
}
.main span{
	font-size: 20px;
}

.main span span{
	font-size: 20px;
	color: blue;
}

.starTxt{
	position: relative;
	top: 180px;
	left: 800px;
}

.btn-login {
    height: 46px;
    width: 278px;
    color: white;
    border: none;
    position: relative;
    display: block;
    text-align: center;
    background: #000;
    transition: background 0.3s;
    -webkit-transition: background 0.3s;
    background: #027dbf;
}

.loginbutton{
	position: relative;
	top: 250px;
	left: 800px;
}

.loginbutton span{
	position: relative;
    text-align: center;
    display: inline-block;
    color: #fff;
    font: 14px/46px 'NotoSansKRRegular','Nanum Gothic';
}
</style>

</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div	class="contents">
	<div class="main">
	<span>회원님의 아이디는 <span>${m.memberid}</span> 입니다.</span>
	</div>
	<div class="loginbutton">
		<a href="login.do" class="btn-login"><span>로그인</span></a>
	</div>
	<div class="starTxt">
          <span class="pass">패스워드를 잊으셨나요?</span>
          <a href="findpwd.do"  class="btn-tbl-type2 btn-white"><span class="right">패스워드 찾기</span></a>
     </div>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"></c:import>
</body>
</html>