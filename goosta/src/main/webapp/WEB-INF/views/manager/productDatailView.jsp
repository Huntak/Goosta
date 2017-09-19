<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
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
	margin-left: 150px;
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

function close2(){
	self.close();
}
</script>
<title>상품 보기</title>
</head>
<body>
<div id="title">
	| PRODUCT DETAIL VIEW
</div>

<table id="contents" cellspacing="0">
	<tr><td class="menu"><label>상품명</label></td><td class="item2"><label>${p.productname }</label></td></tr>
	<tr><td class="menu"><label>사이즈</label></td><td class="item2"><label>${p.productsize }</label></td></tr>
	<tr><td class="menu"><label>가격</label></td><td class="item2"><label>${p.productprice }</label></td></tr>
	<tr><td class="menu"><label>거래처코드</label></td><td class="item2"><label>${p.providercode }</label></td></tr>
	<tr><td class="menu"><label>카테고리</label></td><td class="item2"><label>${p.categorybrand }</label></td></tr>
	<tr><td class="menu"><label>재고량</label></td><td class="item2"><label>${p.productquantity }</label></td></tr>

</table>
<input id="submit" type="button" value="닫기" onclick="close2();">


</body>
</html>