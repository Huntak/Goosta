<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>review</title>

		<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
		<link rel="stylesheet" href="resources/css/footer/jquery.scrolltop.css">
		<!-- <link href="resources/css/sidevar/sidevar.css" rel="stylesheet" type="text/css" /> -->
	    
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


/* 			신고계시판 			 */

.contrainer_s{
   min-width : 400px;
   min-height : 500px;
   overflow: auto;
}
	div.freeboard h3{
		border-bottom: 3px solid #666;
	    color: #000;
	    padding: 13px 0;
	    margin-bottom: 10px;
	    font: bold 14px 'Nanum Gothic',Nanum Gothic,'Dotum',dotum;
	}
	.cont758 {
   width : 1100px;
height : 900px;
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
width : 40%;
background : #f6f6f6;
text-align : center;
color : gray;
}
.td_con input{
 height : 20px;
 margin-left : 10px;
 border : 1px solid lightgray;
}
#title{
width : 500px;
height: 35px;
border: 1px solid lightgray;
}
#price{
width : 150px;
}
#brand{
width : 150px;
}
textarea{
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

.selecttd{
	margin-left: 10px;
	width: 150px;
	height: 35px;
	border: 1px solid lightgray;
}

.btn-ctm.btn-blue{
	margin-top: 15px;
	width: 130px;
	height: 38px;
	border: none;
	color: white;
	float: right;
	margin-right: 115px;
}

.btn-ctm.btn-blue{background: #027dbf;}


/* 			신고계시판 끝			 */
</style>
		
<script type="text/javascript">
jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
	
	$("#insertboard").submit(function(e) {
		var content=document.form1.content.value;
		var title=document.form1.title.value;
		
		if($("#title").val()==''){
			alert("제목을 입력하십시오.");
			e.preventDefault();		
		}else if($("#content").val() == ''){
			alert("내용을 입력하십시오.");
			e.preventDefault();
		}else{
			submit();
		}
	});
});


</script>

<%-- <c:if test="${sessionScope.id == null }">
	<script>
		alert("로그인 하신 후 사용하시기 바랍니다.")
		loacation.href="/login.do"
	</script>
</c:if> --%>
</head>
<body>
<div class="container_s">
	<!-- HEADER -->
	<c:import url="/WEB-INF/views/common/header.jsp"/>
	<!-- HEADER -->	
	
	
<div class="cont758">
		<div class="freeboard">
			<h3>자유게시판</h3>
		</div>
<form name="form1" action="finsert.do" method="post" >
<table>
	<tr>
		<td class="td_title">제목</td>
		<td class="td_con">
		<input type="text" id="title" name="boardtitle" /></td>
	</tr>
	
	<tr>
		<td class="td_title">작성자</td><td class="td_con">${loginUser.memberid}</td>
	</tr>
	
	<tr>
		<td class="td_title">브랜드</td><td class="td_con">
			<select name="boardprefix" size="1">					
					<option selected>나이키</option>
					<option selected>퓨마</option>
					<option selected>아디다스</option>
					<option selected>뉴발란스</option>
					<option selected>선택해주세요.</option>
				</select></td>
	</tr>
	
	
	<tr>
		<td class="td_title">내용</td>
		<td class="td_con">
		<textarea name="boardcontent"></textarea></td>
	</tr>
	<input type="hidden" name="boardtypeno" value="4">
	<input type="hidden" name="boardwriter" value="${loginUser.memberid }">
	<tr>
		<td>첨부파일</td>
		<!-- <td><input type="file" name="file1"></td>		 -->
	</tr>
</table>
	<div class="btn-area">
	<input type="submit" class="btn-ctm btn-blue" value="write">
	</div>
</form>
		
		
			
</div>
<!-- FOOTER -->
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
<!-- FOOTER -->
</div>
</body>
</html>