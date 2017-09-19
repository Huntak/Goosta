<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>

<style type="text/css">
html, body {
	padding : 0px;
	margin : 0px;
}

#title{
	margin: 10px;
}

#contents{
	position:relative;
	top: 10px;
	left: 10px;
	width: 400px;
	height: 300px;
}
#contents{	border-collapse : collapse;		
	border-bottom : solid 1px lightgray;	border-top : solid 1px lightgray;  		}
#contents tr{
	border-bottom: 1px solid lightgray;
}

#contents tr td{
	width: 90px;	
	
	border-top : solid 1px lightgray;
}


#contents td.menu{
	width: 50px;
	background :  #f9f9f9;
	text-align: center;
	color: black;	
	font: -webkit-small-control;
}
#contents td.item2{
	padding: 10px;
}

input.item{	
	border: gray solid 1px;
}

 #submit{
	
	width: 120px;
	height: 30px;
	margin-top: 20px;
	margin-left: 50px;
	background: #027dbf;
	border: none;
	color: white;
	cursor: pointer;
} 
 #submit2{
	
	width: 120px;
	height: 30px;
	margin-top: 20px;
	margin-left: 20px;
	background: #027dbf;
	border: none;
	color: white;
	cursor: pointer;
} 

.btn-ctm.btn-blue{background: #027dbf;}

.btn-ctm{
	width: 120px;
	height: 30px;
	position: relative;
	top:8px;
	display: inline-block;
	margin-left: 15px;
	letter-spacing:-0.5px;
	background: #afc8d6;
	transition:background 0.3s;
	-webkit-transition:background 0.3s;
}

.btn-ctm span{
position: relative;
	text-align: center;
	display: inline-block;
	color: #fff;
	font:14px/46px 'NotoSansKRRegular','Nanum Gothic';
	left: 45px;
	top:-8px;
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
function reload(){  
	opener.location.reload();
}

function deleteId(plusno){
	var plusno = plusno;
	$.ajax({
			url : 'plusDelete.do',
			type : 'post',
			data : {
				plusno : plusno
			},
			success : function(data) {
				
				self.close(); opener.location.reload();
				}
		}); 	 
}

</script>
<title>입고정보 보기 및 수정</title>
</head>
<body>
<div id="title">
	| PLUS view
</div>
<form action="plusModify.do" method="post">
<table id="contents" cellspacing="0">
	<%-- <input type="text" name="pno" value="${PlusVO.plusno} ">
	<input type="text" name="pid" value="${PlusVO.productid} ">
	<input type="text" name="pquan" value="${PlusVO.plusquantity} ">
	<input type="text" name="ptot" value="${PlusVO.plustotal} ">
	<input type="text" name="pp" value="${PlusVO.plusprice} ">
	<input type="date" name="pd" value="${PlusVO.plusdate} "> --%>
	<tr><td class="menu"><label>입고번호</label></td><td class="item2"><label>	<input type="text" name="pno" value="${PlusVO.plusno}" readonly></label></td></tr>
	<tr><td class="menu"><label>상품ID</label></td><td class="item2"><label><input type="text" name="pid" value="${PlusVO.productid}"></label></td></tr>
	<tr><td class="menu"><label>입고갯수</label></td><td class="item2"><label><input type="text" name="pquan" value="${PlusVO.plusquantity}"></label></td></tr>
	<tr><td class="menu"><label>입고총가격</label></td><td class="item2"><label><input type="text" name="ptot" value="${PlusVO.plustotal}"> </label></td></tr>
	<tr><td class="menu"><label>입고가격</label></td><td class="item2"><label><input type="text" name="pp" value="${PlusVO.plusprice}"> </label></td></tr>
	<tr><td class="menu"><label>입고날짜</label></td><td class="item2"><label><input type="date" name="pd" value="${PlusVO.plusdate}"> </label></td></tr>
</table>
<div id="buttonSurface">
<input class="submit" id="submit" type="submit" value="변경" onclick ="reload();" >
<input class="submit" id="submit2" type="button" value="삭제"  id="cancleOutButton" onclick="deleteId(${PlusVO.plusno});">
</div>
</form>

</body>
</html>