<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
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
<script type="text/javascript">
jQuery(document).ready(function(){
	$("#error").hide();
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});

 var error = ${error_message}
 $('input[type=submit]').click(function(){
	if(error != null){
		$("#error").show();
	}
 });
 
 $(document).ready(function(){
	    // ����� ��Ű���� �����ͼ� ID ĭ�� �־��ش�. ������ �������� ��.
	    var userInputId = getCookie("userInputId");
	    $("input[name='memberid']").val(userInputId); 
	     
	    if($("input[name='memberid']").val() != ""){ // �� ���� ID�� �����ؼ� ó�� ������ �ε� ��, �Է� ĭ�� ����� ID�� ǥ�õ� ���¶��,
	        $("#idSaveCheck").attr("checked", true); // ID �����ϱ⸦ üũ ���·� �α�.
	    }
	     
	    $("#idSaveCheck").change(function(){ // üũ�ڽ��� ��ȭ�� �ִٸ�,
	        if($("#idSaveCheck").is(":checked")){ // ID �����ϱ� üũ���� ��,
	            var userInputId = $("input[name='memberid']").val();
	            setCookie("userInputId", userInputId, 7); // 7�� ���� ��Ű ����
	        }else{ // ID �����ϱ� üũ ���� ��,
	            deleteCookie("userInputId");
	        }
	    });
	     
	    // ID �����ϱ⸦ üũ�� ���¿��� ID�� �Է��ϴ� ���, �̷� ���� ��Ű ����.
	    $("input[name='memberid']").keyup(function(){ // ID �Է� ĭ�� ID�� �Է��� ��,
	        if($("#idSaveCheck").is(":checked")){ // ID �����ϱ⸦ üũ�� ���¶��,
	            var userInputId = $("input[name='memberid']").val();
	            setCookie("userInputId", userInputId, 7); // 7�� ���� ��Ű ����
	        }
	    });
	});
	 
	function setCookie(cookieName, value, exdays){
	    var exdate = new Date();
	    exdate.setDate(exdate.getDate() + exdays);
	    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
	    document.cookie = cookieName + "=" + cookieValue;
	}
	 
	function deleteCookie(cookieName){
	    var expireDate = new Date();
	    expireDate.setDate(expireDate.getDate() - 1);
	    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
	}
	 
	function getCookie(cookieName) {
	    cookieName = cookieName + '=';
	    var cookieData = document.cookie;
	    var start = cookieData.indexOf(cookieName);
	    var cookieValue = '';
	    if(start != -1){
	        start += cookieName.length;
	        var end = cookieData.indexOf(';', start);
	        if(end == -1)end = cookieData.length;
	        cookieValue = cookieData.substring(start, end);
	    }
	    return unescape(cookieValue);
	}

</script>
<style>

.login-content{
	height: 638px;
}
.login-form{
	display: inline-block;
	position: relative;
	margin-top: 100px;
	margin-left: 200px;
	border-rigth: solid 1px;
	width: 290px;
}
.enroll_s{
	display: inline-block;
	position: relative;
	top: -95px;
	left: 100px;
	width: 290px;
}

.id_input input {
    width: 278px;
    height: 38px;
    padding-left: 10px;
    border: 1px solid #c8cbcc;
    font: 13px/38px 'NotoSansKRRegular','Nanum Gothic';
}
.pwd_input input {
    width: 278px;
    height: 38px;
    padding-left: 10px;
    border: 1px solid #c8cbcc;
    font: 13px/38px 'NotoSansKRRegular','Nanum Gothic';
}

h3 {
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
    margin-bottom: 40px;
    font: 30px/30px 'NotoSansKRLight','Nanum Gothic';
    color: #090909;
}
a:link {
    color: #797b80;
    text-decoration: none;
    cursor: pointer;
}
.login-content .login-form .chk-area .btn-find {
    float: right;
    color: #027dbf;
    font: 14px;
}
.login-content .login-form {
    width: 465px;
    padding: 0 185px 40px 0;
    border-right: 2px solid #eee;
}
.login-content .login-form .chk-area{
	margin-top: 10px;
    margin-bottom: 40px;
}
element.style {
    background: #fff;
}
#container_r {
    width: 100%;
    height: 1080px;
    background: #eaeaea;
    position: relative;
    z-index: 20;
}
adidas_r.css?v=170126:19
div, ul, ol {
    list-style: none;
}
adidas_r.css?v=170126:18
div, p, ol, ul, li, img, a, h1, h2, h3, h4, h5, h6, form, span, iframe, dl, dt, dd {
    margin: 0;
    padding: 0;
    text-align: left;
    line-height: 14px;
}
user agent stylesheet
div {
    display: block;
}
#contents_r {
    width: 1090px;
    padding: 0 0 40px;
    _height: 1%;
    position: relative;
    z-index: 10;
}
adidas_r.css?v=170126:1519
#contents_r {
    position: relative;
    width: 950px;
    margin: 0 auto;
}

#contents_r{
	position: relative;
	left: 300px;
}
.id-area{
	margin-bottom: 10px;
}
.enroll_main ul{
	list-style: none;
}
.enroll_main li{
	margin-bottom: 15px;
    position: relative;
    
    font: 14px/12px 'NotoSansKRRegular','Nanum Gothic';
    color: #090909;
    style-decoration: none;
}
.enroll_main dt{
    margin-bottom: 20px;
    font: 14px/20px 'NotoSansKRBold','Nanum Gothic';
    color: #090909;
}
.enroll_s .enroll_main span.spt-bg{
	
	display: inline-block;
	width: 8px;
    height: 7px;    
}
.spt{
	position: relative;
	left: -40px;
}
.en-btn-area .btn-en span{
    position: relative;
    text-align: center;
    display: inline-block;
    color: #fff;
    font: 14px/46px 'NotoSansKRRegular','Nanum Gothic';
}
.btn-en{
	height: 46px;
    position: relative;
    display: block;
    text-align: center;
    background: #000;
    transition: background 0.3s;
    -webkit-transition: background 0.3s;
}
.en-btn-area .btn-en{
	background: #027dbf;
}
.btn-login{
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
.btn-login span{
	position: relative;
    text-align: center;
    display: inline-block;
    color: #fff;
    font: 14px/46px 'NotoSansKRRegular','Nanum Gothic';
}
.enroll_main dt{
	font-weight: bold;
}
.btn-login-2 .not-en{
	position: relative;
    text-align: center;
    display: inline-block;
    color: #fff;
    font: 14px/46px 'NotoSansKRRegular','Nanum Gothic';
    background: #ccc;
}
.btn-login-2{
height: 46px;
    position: relative;
    display: block;
    text-align: center;
    background: #000;
    transition: background 0.3s;
    -webkit-transition: background 0.3s;
    background: #ccc;
    margin-top: 50px;
}

#error{
		margin-top: 5px;
}

#error span{
	color: red;
}
</style>
<script type="text/javascript">
	
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>

<div class="login-content" id="contents_r">
	
	<div class="login-form">
	<form action="login2.do" method="post">
	<h3>�α���</h3>
	<div class="id-area">
	<div class="id_input">
	<input type="text" name="memberid" placeholder="���̵�"></div>
	</div>
	<div>
	<div class="pwd_input">
	<input type="password" name="memberpwd" placeholder="��й�ȣ"></div>
	</div>
	<div id="error"><span>���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.</span></div>
	<div class="chk-area">
	<input type="checkbox" name="id-save" class="id-save" id="idSaveCheck">���̵����� <a href="findid1.do" class="btn-find">���̵�/��й�ȣ ã��</a>
	</div>
	<input type="submit" value="�α���" class="btn-login">
	</form>
	<a href="" class="btn-login-2"><span class="not-en">��ȸ�� �ֹ���ȸ</span></a>
	</div>
	<div class="enroll_s">
		<h3>ȸ������</h3>
		<div class="enroll_main">
		<dt> ���� GOOSTA�� �����Ͻð� 
		 �Ƶ�ٽ� ���� �¶��� ������ ��� ������ ��������</dt>
		 <div class="spt">
		 <ul>
		 	<li><span class="spt-bg"></span>ȸ����޿� ���� ���ϸ��� ����</li>
		 	<li><span class="spt-bg"></span>��޺� ���� ���� ����</li>
		 	<li><span class="spt-bg"></span>���ϱ��, ���� ���ϸ��� ����</li>
		 	<li><span class="spt-bg"></span>������� ���� Ư���� �̺�Ʈ �ʴ�</li>
		 </ul>
		 </div>
		 <div class="en-btn-area">
		 	<a href="enroll.do"  class="btn-en"><span>ȸ������</span></a>
		 </div>
		</div>
	</div>
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>