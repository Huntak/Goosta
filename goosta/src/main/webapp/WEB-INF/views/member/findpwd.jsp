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


<style type="text/css">
body, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, table, th, td, form, fieldset, legend, input, textarea, button {
    margin: 0;
    padding: 0;
}

.contents h4 {
    padding-bottom: 20px;
    border-bottom: 1px solid #eee;
    color: #333;
    font-size: 20px;
    line-height: 20px;
}

.contents{
position: relative;
top: 70px;
	margin: auto;
	width: 800px;
	height: 588px;
}

ul, ol{
	list-style: none;
}

h4 {
	width: 100%;
	margin-left: 150px;
    display: block;
    -webkit-margin-before: 1.33em;
    -webkit-margin-after: 1.33em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}


.contents .top{
	width: 800px;
	display: inline-block;
	
}
.contents .layerLabel {
    width: 40px;
    padding-left: 1px;
    padding-right: 8px;
    background-position: 0 4px;
    font-size: 5px;
    
}

.formBox{
	margin-bottom: 5px;
}

.contents .txt.type02 {
    font-size: 13px;
}

.contents .txt {
    margin-top: 16px;
    color: #333;
    letter-spacing: -1px;
    line-height: 18px;
}

legend {
    display: none;
    overflow: hidden;
    visibility: hidden;
}

fieldset {
    display: inline-block;
    -webkit-padding-before: 0.35em;
    -webkit-padding-start: 0.75em;
    -webkit-padding-end: 0.75em;
    -webkit-padding-after: 0.625em;
    min-width: -webkit-min-content;
    border-width: 2px;
    border-style: groove;
    border-color: threedface;
    border-image: initial;
}

img, fieldset, button {
    vertical-align: middle;
    border: 0;
}

.contents .loginBtn {
    float: left;
}

.contents .loginForm {
    float: left;
    width: 237px;
}

.contents .loginBtn {
    width: 100px;
    background: #027dbf;
	height: 46px;
    position: relative;
    display: block;
    text-align: center;
    transition: background 0.3s;
    -webkit-transition: background 0.3s;
    border: none;
    color: white;
}

a {
    text-decoration: none;
    color: #444;
}

.contents .sectionL {
    float: left;
    width: 390px;
    padding-right: 20px;
}

.contents .sectionR, .contents .sectionR02 {
    float: left;
    width: 350px;
    padding-left: 19px;
    border-left: 1px solid #eee;
}
.contents .sectionR02{
	height: 194px;
	 position: relative;
    left: 410px;
    top: -110px;
	
}

.contents {
    width: 780px;
    padding: 27px 40px 30px;
    background-color: #fff;
    zoom: 1;
}

.contents .desc {
    padding: 20px 15px 20px 20px;
    background-color: #eee;
    color: #666;
    font-family: '돋움';
    line-height: 18px;
    letter-spacing: -0.5px;
}

input[type=text], input[type=password], textarea {
    width: 180px;
    height: 24px;
    padding-left: 3px;
    border: 1px solid #ccc;
    color: #666;
    font-family: '돋움';
    line-height: 24px;
    letter-spacing: -0.2px;
    vertical-align: middle;
}

.btn-tbl-type2{
	width: 118px;
	height: 30px;
    position: relative;
    display: inline-block;
    text-align: center;
    background: #000;
    transition: background 0.3s;
    -webkit-transition: background 0.3s;
    background: #ccc;
}
#error{
	color: red;
}

</style>

	<script type="text/javascript">
		$(function(){
			$('#error').hide();
		
		
			
		});		
		
		 var error = ${error_message}
		 $('input[type=submit]').click(function(){
			if(error != null){
				$("#error").show();
			}
		 });
	
		
	</script>

</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="contents">
	<div class="top">
    	<h4>비밀번호 찾기</h4>
      
      </div>
      <div class="sectionL">
        <p class="txt type02">이름, 이메일, 아이디를 입력해 주세요.</p>
        <div class="loginArea clx">
			<form id="findIdType1Form" action="findpwdcheck.do" method="post" >
			
            <fieldset>
              <legend>로그인 관련 입력 폼</legend>
              <div class="loginForm">
                <div class="formBox">
                  <div class="speech" id="speechTypeName_6" style="display: none;"></div>
                  <label for="memberName_1" class="layerLabel">이름</label><input type="text" class="inputType01" id="memberName_1" name="membername" >
                </div>
                <div class="formBox mt05">
                  <div class="speech type02" id="speechTypeEmail_6"></div>
                  <label for="memberMail_1" class="layerLabel">이메일</label><input type="text" id="memberMail_1" class="inputType01" name="memberemail" >
                </div>
                <div class="formBox mt05">
                  <div class="speech type02" id="speechTypeEmail_6"></div>
                  <label for="memberMail_1" class="layerLabel">아이디</label><input type="text" id="memberMail_1" class="inputType01" name="memberid">
                </div>
                <div id="error">
                	일치하는 정보가 없습니다.
                </div>
              </div>
              <input type="submit" class="loginBtn" value="확인">
            </fieldset>
          </form>
        </div><!-- // .loginArea -->
        
      </div><!-- // .sectionL -->  
      <div class="sectionR02 pb80">
        <div class="desc">안전한 정보관리를 위하여 본인인증 후<br>비밀번호를 조회하실 수 있습니다.</div>
      </div><!-- // .sectionR -->      
      
    </div>
        <c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>