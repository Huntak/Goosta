<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>회원관리</title>
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

<style type="text/css">
	html, body {
	padding : 0px;
	margin : 0px;
}

#contents{
		width: 1520px;
		height: 400px;
		border: 1px solid lightgray;
		overflow: auto;
	}
	
	#search{
		dispaly: inline;		
		width: 1500px;
		height: 30px;		
		margin: 10px;
	}
	section{
		margin-top: 100px;
		margin-left: 100px;
	}
	#btnSea{
		margin-left: 10px;
	}
	table{
		width: 1500px;
		text-align: center;
		margin: auto;
	}
	table tr th{
	border: 1px solid lightgray;
	}

tr.tr1{ 
		
		background: black;
	color: white;
		
	}  
	


#btnchange{
	position: relative;
	left: 1420px;
	margin-top: 10px;
	width:100px;	
}

#change{
	width: 100px;
	height: 30px;
}

fieldset{
	width:1520px;
	border: 1px solid lightgray;
}

 td.member_value{
 text-align: center;
 }
 
 #title{
 	margin-top: 50px;
 	margin-left: 50px;
 }
	#memberid{
		width:200px;
	}
	#gender{
		width:100px;
	}
	#name{
		width:200px;
	}
	#total{
		width:200px;
	}
	#grade{
		width:200px;
	}
	#report{
		width:100px;
	}
	.tr1 th{
		text-align:center;
	}
	#change{
		position: relative;
	    left: -20px;
		display: inline-block;
	    width: 120px;
	    height: 34px;
	    text-align: center;
	    line-height: 36px;
	    background: #027dbf;
	    border:none;
	    margin-right: 20px;
	    color:white;
	}
	#sear{
		position: relative;
	    left: -20px;
		display: inline-block;
	    width: 100px;
	    height: 30px;
	    text-align: center;
	    line-height: 26px;
	    background: #027dbf;
	    border:none;
	    margin-left: 20px;
	    color:white;
	    
	}
	#keyword{
		height: 30px;
		border: 1px solid lightgray;
	}
	#searchsel{
		width: 120px;
		height: 30px;
		border: 1px solid lightgray;
	}
	#keyword{
		display: inline-block;
	}
	#date{
		display: inline-block;
	}
	.data2{
		width: 150px;
		height: 30px;
		border: 1px solid lightgray;
	}
</style>
<script type="text/javascript">
document.oncontextmenu = function(e){
    if(e){
     e.preventDefault();
    }
    else{
     event.keyCode = 0;
     event.returnValue = false;
    }
   }
$(function(){
	$('div#date').hide();
	$('select[name=memberSearch]').change(function(){
		if($(this).val()=='menrolldate'){
			$('div#keyword').hide();
			$('div#date').show();
		}else{
			$('div#date').hide();
			$('div#keyword').show();
		}
	})
});

</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div id="title">
	| MEMBER MANAGER
</div>
<section>	
<form action="mmsearch.do" method="post">
<fieldset>
<legend>&nbsp;SEARCH&nbsp;</legend>
	<div id="search">
	<select name="memberSearch" id="searchsel">
		<option value="all">전체</option>
		<option value="mid">회원ID</option>
		<option value="mname">이름</option>
		<option value="mphone">전화번호</option>
		<option value="maddress">주소</option>
		<option value="menrolldate">가입날짜</option>
	</select>
	<div id = "date">
	<input type="date" name="beforeDate" class="data2"> - <input type="date" name="afterDate" class="data2">
	</div>
	<div id="keyword">
	<input type="text" name="keyword" id="keyword">
	</div>
	<input type="submit" value="검색" id="sear">
	</div>
	</fieldset>
	</form>
	<br><br>
	<div id="contents">
		<table cellspacing="0" cellpadding="0">
			<tr class="tr1" align="center" >
				<th  id="memberid">회원ID</th>
				<th  id="name">이름</th>
				<th id="gender">성별</th>
				<th id="grade">회원등급</th>
				<th id="total">누적금액</th>
				<th id="report">신고</th>
			</tr>
			<c:forEach items="${ memberlist }" var="member">
			<tr align="center" height="50px">
				<td class="member_value"><a href="#" onclick="window.open('memberdetailManager.do?memberid=${member.memberid }','memberdetail','scrollbars=yes,toolbar=no,resizable=no,width=500,height=750,left=0,top=0,margin=0');">${member.memberid }</a></td>
				<td class="member_value">${member.membername }</td>
				<td class="member_value">${member.membergender }</td>
				<td class="member_value">${member.gradename }</td>
				<td class="member_value">${member.membertotalpurchase }</td>
				<td class="member_value">${member.memberreport }</td>
			</tr>
			</c:forEach>
		</table>		
	</div>
	<div id="btnchange">
		<button id="change">변경</button>
	</div>	
</section>
<c:import url="/WEB-INF/views/common/footer.jsp"></c:import>
</body>
</html>