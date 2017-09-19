<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
} 
 #submit2{
	
	width: 120px;
	height: 30px;
	margin-top: 20px;
	margin-left: 20px;
	background: #027dbf;
	border: none;
	color: white;
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
function close2(){
	opener.location.reload();
	self.close();
}

function delete2(){
	$.ajax({
		url : 'orderlistorderdel.do',
		type: 'post',
		contentType : 'charset = utf-8',
		data: { 'orderlistid' : '${o.orderlistid}' } ,
		success : function(data){
			if(data == 'ok'){
				opener.location.reload();
				self.close();
			}
	
		},
		error: function(data){
			alert('에러');
			opener.location.reload();
			self.close();
		}
 });
}

</script>
<title>주문 보기</title>
</head>
<body>
<div id="title">
	| Order DETAIL VIEW
</div>
<form:form commandName="o" name="memberdetail" method="post" action="orderlistorderupdate.do">
<table id="contents" cellspacing="0">

	<input type="hidden" name="orderlistid" value="${o.orderlistid }">
	<tr><td class="menu"><label>주문번호</label></td><td class="item2"><label>${o.orderlistid }</label></td></tr>
	<tr><td class="menu"><label>아이디</label></td><td class="item2"><label>${o.memberid }</label></td></tr>
	<tr><td class="menu"><label>이름</label></td><td class="item2"><label>${o.orderlistname }</label></td></tr>
	<tr><td class="menu"><label>이메일</label></td><td class="item2"><label>${o.orderemail }</label></td></tr>
	<tr><td class="menu"><label>전화번호1</label></td><td class="item2"><label>${o.orderlistphone1 }</label></td></tr>
	<tr><td class="menu"><label>전화번호2</label></td><td class="item2"><label>${o.orderlistphone2 }</label></td></tr>
	<tr><td class="menu" rowspan="2"><label>주소</label></td>
	<td class="item2"><label>${o.orderlistzipcode1 } - ${o.orderlistzipcode2 }</label></td>
	</tr>
	<tr>
	<td class="item2"><label>${o.orderlistaddress1 } ${o.orderlistaddress2 }</label></td>
	</tr>
	<tr><td class="menu"><label>주문상태</label></td><td class="item2">	
	<form:select path="orderstatusstatus">
      <form:option value="결제진행중"/>
      <form:option value="결제완료"/>
      <form:option value="배송준비중"/>
      <form:option value="배송진행중"/>
      <form:option value="배송완료"/>
      <form:option value="구매확정"/>
      <form:option value="주문취소"/>
      <form:option value="교환및환불"/>
    </form:select>
	</td></tr>
	<tr><td class="menu"><label>상품이름</label></td><td class="item2"><label>${o.productname }</label></td></tr>
	<tr><td class="menu"><label>상품사이즈</label></td><td class="item2"><label>${o.productsize }</label></td></tr>
	<tr><td class="menu"><label>주문갯수</label></td><td class="item2"><label>${o.orderlistquantity }</label></td></tr>
	<tr><td class="menu"><label>주문날짜</label></td><td class="item2"><label>${o.orderlistdate }</label></td></tr>
	<tr><td class="menu"><label>총금액</label></td><td class="item2"><label>${o.orderlisttotalprice }</label></td></tr>
	
	
</table>
<input type="submit" id="submit" value="변경"/>
<a href="#" onclick="delete2();"class="btn-ctm btn-blue"><span>삭제</span></a>
<input id="submit2" type="button" value="닫기" onclick="close2();">
</form:form>

</body>
</html>