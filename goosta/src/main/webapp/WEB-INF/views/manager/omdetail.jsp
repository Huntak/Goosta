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
	self.close();
}

$(function(){
	var memberstatus = '${m.memberstatus}';
	if(memberstatus == 'n'){
		opener.location.reload();
		self.close();
	}
});

</script>
<title>회원 보기</title>
</head>
<body>
<div id="title">
	| Member DETAIL VIEW
</div>
<form:form commandName="m" name="memberdetail" method="post" action="mmupdate.do">
<table id="contents" cellspacing="0">



	<tr><td class="menu"><label>아이디</label></td><td class="item2"><label>${m.memberid }</label></td></tr>
	<tr><td class="menu"><label>이름</label></td><td class="item2"><label>${m.membername }</label></td></tr>
	<tr><td class="menu"><label>생년월일</label></td><td class="item2"><label>${m.memberbirth1 } - ${m.memberbirth2 } - ${m.memberbirth3 }</label></td></tr>
	<tr><td class="menu"><label>이메일</label></td><td class="item2"><label>${m.memberemail }</label></td></tr>
	<tr><td class="menu"><label>전화번호</label></td><td class="item2"><label>${m.memberphone1 } - ${m.memberphone2 } - ${m.memberphone3 }</label></td></tr>
	<tr><td class="menu" rowspan="2"><label>주소</label></td>
	<td class="item2"><label>${m.memberaddress1 } - ${m.memberaddress2 }</label></td>
	<input type="hidden" id="memberid" name="memberid" value="${m.memberid }"/>
	</tr>
	<tr>
	<td class="item2"><label>${m.memberaddress3 } ${m.memberaddress4 }</label></td>
	</tr>
	<tr><td class="menu"><label>회원등급</label></td><td class="item2">	
	<form:select path="gradename">
      <form:option value="NORMAL"/>
      <form:option value="SILVER"/>
      <form:option value="GOLD"/>
      <form:option value="VIP"/>
    </form:select>
	</td></tr>
	<tr><td class="menu"><label>마일리지</label></td><td class="item2"><label>${m.membertotalmileage }</label></td></tr>
	<tr><td class="menu"><label>성별</label></td><td class="item2"><label>${m.membergender }</label></td></tr>
	<tr><td class="menu"><label>사이즈</label></td><td class="item2"><label>${m.membersize }</label></td></tr>
	<tr><td class="menu"><label>가입날짜</label></td><td class="item2"><label>${m.memberenrolldate }</label></td></tr>
	<tr><td class="menu"><label>신고횟수</label></td><td class="item2">${m.memberreport }</td></tr>
	<tr><td class="menu"><label>구매누적금액</label></td><td class="item2"><label>${m.membertotalpurchase }</label></td></tr>
	
	
</table>
<input id="submit2" type="button" value="닫기" onclick="close2();">
</form:form>

</body>
</html>