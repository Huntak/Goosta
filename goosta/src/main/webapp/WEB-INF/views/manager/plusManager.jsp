<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>입고관리</title>
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
	left: 50px;
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

 td.plus_value{
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
function popup(pid){
	window.open("showPlusListPop.do?plusid="+pid+"","plusView","scrollbars=yes,toolbar=no,resizable=no,width=450,height=650,left=0,top=0,margin=0");
}
function newPlus(){
	window.open("newPlusView.do","newPlus","scrollbars=yes,toolbar=no,resizable=no,width=450,height=650,left=0,top=0,margin=0");
}
$(function(){
	$("#sear").click(function() {
	var keyword = $("#searchkeyword").val();
	var selected = $("#searchsel").val();
	alert(keyword);
	$.ajax({
		data : { 
			keyword : keyword, 
			selected : selected
		},
		type : "POST",
		url : "showPlusList.do",
		success : function(data) {
			var out = '';
			$(".plusfirst").hide();
			//out += "<table id ='plustable' cellspacing='0' cellpadding='0'>";
			out += "<tr class='tr1' align='center' ><th  id='plusno'>입고번호</th>";
			out += "<th  id='productid'>상품ID</th>";
			out +=	"<th id='plusquantity'>입고갯수</th>";
			out +=	"<th id='plustotal'>입고총가격</th>";
			out +=	"<th id='plusprice'>입고가격</th>";
			out +=	"<th id='plusdate'>입고날짜</th></tr>";
			for (var i = 0; i < data.length; i++) {
			out += "<tr align='center' height='50px'>";
			out += "<td class='plus_value'><a href='#' onclick=popup("+data[i].PLUSNO+") return false>"+data[i].PLUSNO+"</a></td>";
			out += "<td class='plus_value'>"+data[i].PRODUCTID+"</td>";
			out += "<td class='plus_value'>"+data[i].PLUSQUANTITY+"</td>";
			out += "<td class='plus_value'>"+data[i].PLUSTOTAL+"</td>";
			out += "<td class='plus_value'>"+data[i].PLUSPRICE+"</td>";
			out += "<td class='plus_value'>"+data[i].PLUSDATE+"</td></tr>";
				}$("#plustable").html(out);
			} /*SUCCESS */
		});/*AJAX  */
	
	});
});
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
<div id="title">
	| PLUS MANAGER
</div>
<section>	
<fieldset>
<legend>&nbsp;SEARCH&nbsp;</legend>
	<div id="search">
	<select name="plusSearch" id="searchsel">
		<option value="plusno">입고번호</option>
		<option value="productid">상품ID</option>
		<option value="plusprice">입고가격</option>
	</select>

	<!-- <div id = "date">
	<input type="date" name="beforeDate" class="data2"> - <input type="date" name="afterDate" class="data2">
	</div> -->
	<div id="keyword">
	<input type="text" name="searchkeyword" id="searchkeyword">
	</div>
	<button id="sear">검색</button>
	</div>
	</fieldset>
	<br><br>
	<div id="contents">
		<table id ='plustable' cellspacing='0' cellpadding='0'>
		<div id ="plusfirst">
			<tr class='tr1' align='center' ><th  id='plusno'>입고번호</th>
			<th  id='productid'>상품ID</th>
			<th id='plusquantity'>입고갯수</th>
			<th id='plustotal'>입고총가격</th>
			<th id='plusprice'>입고가격</th>
			<th id='plusdate'>입고날짜</th></tr>
			<c:forEach items="${list}" var="list">
			<tr align="center" height="50px">
				<td class='plus_value'><a href='#' onclick=popup(${list.plusno}) return false>${list.plusno}</a></td>
				<td class='plus_value'>${list.productid}</td>
				<td class='plus_value'>${list.plusquantity}</td>
				<td class='plus_value'>${list.plustotal}</td>
				<td class='plus_value'>${list.plusprice}</td>
				<td class='plus_value'>${list.plusdate}</td>
			</tr>
			</c:forEach>
		</div>
		</table>  
	</div>
	<div id="btnchange">
		<button id="change" onclick='newPlus();' return false>추가</button>
	</div>
</section> 
<!-- <footer></footer> -->
<c:import url="/WEB-INF/views/common/footer.jsp"></c:import>
</body>
</html>
