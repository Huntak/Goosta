<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 관리</title>

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
	}
	
	#search{
		dispaly: inline;		
		width: 1500px;
		height: 30px;		
		margin: 10px;
	}
	section{
		margin-top: 40px;
    margin-left: 155px;
    margin-bottom: 60px;
	}
	#btnSea{
		margin-left: 10px;
	}
	table{
		width: 1520px;
		
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
	margin-left: 1420px;
	margin-top: 10px;
	width:200px;	
}

#change{
	width: 100px;
	height: 30px;
}

fieldset{
	width:1520px;
	border: 1px solid lightgray;
}
#title{
	margin-top: 10px;
	margin-left: 120px;
}

.tr1 th{
	text-align: center;
}
#contenttable tr td{
	text-align: center;
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
	$('span#date').hide();
	$('select[name=orderSearch]').change(function(){
		if($(this).val()=='orderdate'){
			$('span#keyword').hide();
			$('span#date').show();
		}else{
			$('span#date').hide();
			$('span#keyword').show();
		}
	})
});
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>

<title>주문 관리</title>
<header></header>
<div id="title">
	| ORDER
</div>
<section>	
<fieldset>
<legend>&nbsp;SEARCH&nbsp;</legend>
<form action="ordersearchlistManager.do" method = "post">
	<div id="search">
	<select name="orderSearch">
	<option value="all">전체</option>
		<option value="ordernumber">주문번호</option>
		<option value="pname">상품명</option>
		<option value="oname">주문자</option>
		<option value="mid">회원아이디</option>
		<option value="orderdate">주문날짜</option>
		<option value="orderstatus">주문상태</option>
	</select>
	<span id="date">
	<input type="date" name="beforeDate"> - <input type="date" name="afterDate">
	</span>
	<span id="keyword">
		<input type="text" name="keyWord" id="keyWord"/>
	</span>
	<input type="submit" value="검색">
	</div>
	</form>
	</fieldset>
	<br><br>
	<div id="contents">
		<table cellspacing="0" cellpadding="0" id="contenttable">
			<tr class="tr1" align="center" >
				<th  width="100px">주문번호</th>
				<th  width="100px">주문자</th>
				<th width="100px">주문날짜</th>
				<th width="100px">회원ID</th>
				<th width="150px">상품명</th>
				<th width="100px">수량</th>
				<th width="100px">총 가격</th>
				<th width="200px">주문처리상태</th>
			</tr>
			<c:forEach items="${list }" var="list">
				<tr>
					<td>${list.orderlistid }</td>
					<td><a href="#" onclick="window.open('orderlistorderdetail.do?orderlistid=${list.orderlistid }','orderdetail','scrollbars=yes,toolbar=no,resizable=no,width=500,height=750,left=0,top=0,margin=0');">${list.orderlistname }</a></td>
					<td>${list.orderlistdate }</td>	
					<td><a href="#" onclick="window.open('orderlistmemberdetail.do?memberid=${list.memberid }','memberdetail','scrollbars=yes,toolbar=no,resizable=no,width=500,height=750,left=0,top=0,margin=0');">${list.memberid }</a></td>					
					<td><a href="#" onclick="window.open('orderlistproductdetail.do?productid=${list.productid }','productdetail','scrollbars=yes,toolbar=no,resizable=no,width=500,height=450,left=0,top=0,margin=0');">${list.productname }</a></td>
					
					<input type="hidden" name="productid" value="${list.productid }">
					<td>${list.orderlistquantity }</td>
					<td>${list.orderlisttotalprice }</td>
					<td>${list.orderstatusstatus }</td>
				</tr>
			</c:forEach>
		</table>		
	</div>
	
	
</section>
<c:import url="/WEB-INF/views/common/footer.jsp"></c:import>
</body>
</html>