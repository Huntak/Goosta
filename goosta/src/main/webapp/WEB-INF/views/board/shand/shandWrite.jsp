<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html >
<html>
<head>
<meta content="text/html; charset=UTF-8">
<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/shand/shandWrite.css" rel="stylesheet" type="text/css" />
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
		
<title>중고거래 상세보기</title>
<style type="text/css">
  
</style>
<script type="text/javascript">
$(document	).ready(function(){
	$('#addFile').on('click', function(){
		var str = "<input type='file' name='uploadFile'  id='upFile'>"	
		$("#file_td").append(str);
	});
});
//숫자만 입력하게하는 함수(가격 입력 부분)
function onlynumber(data) 
{
    if (event.keyCode >= 48 && event.keyCode <= 57) { 
        return true;
    } else {
    	alert("숫자만 입력가능합니다.");
        event.returnValue = false;
    }
}
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="cont758">
      <div class="reportboard">
         <h3>Write Shand</h3>
      </div>
<!-- 글내용 -->
<form action="insertShand.do" id="insertForm" method="post" enctype="multipart/form-data">
<input type="hidden" value="${loginUser.memberid }" name="boardwriter">
<table class="content">
<tr><td class="td_title">제목</td><td class="td_con"><input type="text" id="title" name="boardtitle" required="required"/></td></tr>
<tr><td class="td_title">가격</td><td class="td_con"><input type="text" id="price" name="shandprice" required="required" onkeypress="onlynumber(this)"/></td></tr>
<tr><td class="td_title">브랜드</td><td class="td_con"><input type="text" id="brand" name="shandbrand" required="required"/></td></tr>
<tr><td class="td_title">내용</td><td><textarea id="textarea" form="insertForm" name="boardcontent" required="required"></textarea></td></tr>
<tr id="file_tr"><td class="td_title">사진첨부</td>
<td id="file_td"><input type="file" name="uploadFile"  id="upFile" style="float:left;"><input type="button" value="추가" id="addFile" ></td>
</tr>
</table>
<input type="submit" class="btn-ctm btn-blue" value="write"/>
</form>
</div>
</body>
</html>