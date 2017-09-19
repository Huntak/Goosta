    <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>

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

		<!-- include summernote css/js--> 
		<script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
		<script type="text/javascript" src="resources/editor/js/HuskyEZCreator.js" ></script>

		<!-- include libraries(jQuery, bootstrap) --> 
		<!-- link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet"> 
		<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
		<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>  -->
		
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">		
<title>리뷰게시판 글쓰기</title> 

 <script type="text/javascript">
//‘저장’ 버튼을 누르는 등 저장을 위한 액션을 했을 때 submitContents가 호출된다고 가정한다.

</script>

<style type="text/css">
.modal.in .modal-dialog {
    -webkit-transform: translate(0, 0);
    -ms-transform: translate(0, 0);
    -o-transform: translate(0, 0);
    transform: translate(0, 0);
    margin-right: 90%;
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
border-top : 1px solid lightgray;
border-collapse : collapse;
width: 1000px;
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
.td_con input{
 height : 40px;
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

#summernote{
	    overflow: scroll;
    height: 200px;

}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div class="cont758">
		<div class="reviewboard">
			<h3>REVIEW</h3>
		</div>
<form id="frm" action="CreviewWrite.do" method="post" enctype="multipart/form-data">
<input type="hidden" name="boardtypeno" value="7"/>
<input type="hidden" name="boardprefix" value="prefix"/>
<table>
<tr><td class="td_title">제목</td><td class="td_con"><input type="text" name="boardtitle" /></td></tr>
<tr><td class="td_title">작성자</td><td class="td_con"><input type="text" name="boardwriter" value="${loginUser.memberid}" readonly /></td></tr>
<tr><td class="td_title">첨부파일</td><td class="td_con"><input type="file" name="uploadFile"></td></tr>
<tr><td class="td_title">내용</td><td class="td_con">
<textarea style="width: 100%" rows="10" name="boardcontent" id="boardcontent" cols="80"></textarea>
</td></tr>
</table>
	<div class="btn-area">
	<input id="savebutton" type="submit" class="btn-ctm btn-blue" value="write">
	</div>
</form>


</div>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>