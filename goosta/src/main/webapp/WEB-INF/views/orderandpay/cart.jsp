<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>장바구니</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
		<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	    
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
		<script type="text/javascript">
		
jQuery(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
});

$(function(){
    $("#check_all").click(function(){
        var chk = $(this).is(":checked");//.attr('checked');
        if(chk) $("input[type=checkbox]").prop('checked', true);
        else  $("input[type=checkbox]").prop('checked', false);
    });
});

function amountUp(id,quantity,price){
	if(isNaN($("#"+id).val())){
         /* alert( '숫자만 입력가능 합니다.' ); */
         $("#"+id).focus();
         $("#"+id).val(0);
         return;
    }
     
    var q = parseInt($("#"+id).val())+parseInt(quantity);    
    $("#"+id).val(q);
    console.log(q);
    
    var sum = parseInt(price);
    $("#"+id+'sum').html((sum*q)+'원');
    console.log(sum);
    
    var sssum1 = Number($("#sssum1").val());
    console.log(sssum1);
    $("#sssum1").val(sssum1 + sum);
    $("#ssum2").html(sssum1 + sum);
    $("#s2").html(sssum1 + sum);
}

function amountDown(id,quantity,price){
	if(isNaN($("#"+id).val())){
        /*  alert( '숫자만 입력가능 합니다.' ); */
         $("#"+id).focus();
         $("#"+id).val(0);
         return;
    }
     
    var q = parseInt($("#"+id).val())-parseInt(quantity);    
    $("#"+id).val(q);
    
    $("#"+id+'sum').html(parseInt(price)*q +'원');
}

function delchk(id,name){
    if(confirm("삭제하시겠습니까?")){
        location.href = "cartdel.do?cartid="+ id + "&productname="+name;
        return true;
    } else {
        return false;
    }
}
$(function(){
	$('.input_check').click(function(){
		
		alert($(this).find('strong.sum2 em').val());
});
});
</script>
<style type="text/css">
*{
	padding:0px;
	margin:0px;
}
section{
    margin: auto;
    /* margin-top: 3%; */
    width: 1500px;
    height: 745px;
}
#sec #cart1{
	border-bottom: 3px solid #f6f6f6;
	margin-top: 35px;
	margin-bottom: 15px;
	
	
}
#sec #cart1 #spa1{
	padding-bottom:15px;
	display:inline-block;
    margin-right: 870px;
    font-size: 17pt;
    font-weight: bold;
    
    
}
#sec #cart1 #cart2{
	display:inline-block;
	padding-right: 35px;
	adding-bottom: 10px;
}
#sec #cart3{
	font-size:15px;
  	border-bottom: 2px solid #333;
}
#sec #cart3 span{
    color: #0487cd;
    border-bottom: 1px solid #333;
    font-weight: bold;
}
#sec #cart4 table{
    text-align: center;
}
#sec #cart4 table th{
    font-size: 15px;
}
#sec .cart5{
    border-top: 1px #ccc solid;
    border-bottom: 1px #ccc solid;
}
#sec .ms{
	margin-right: 20px;
	display: inline-block;
}
#sec .ms1{
	display: inline-block;
}
#sec td{
	padding-bottom:12px;
	text-align: left;
}
#sec .cart5 #mon{
    width: 80px;
}
#sec .ms2{
	width:30px;
	text-align:center;
	height: 30px;
}
#sec .ms2 .qty {
    width: 40px;
}
#sec .ms3{
    font-weight: bold;
    color: #0487cd;
    font-size: 11pt;
}
#sec .ms4{
    padding-top: 10px !important;
    background: #eee;
    padding-bottom: 8px;
    text-align: right;
    border:1px solid lightgray;
    width: 1500px;
}
#sec .ms4 p{
	margin-bottom:5px;
}
#sec .ms4 .total{
	display: inline-block;
	text-align: right;
}
#sec .ms4 .total1{
    display: inline-block;
    margin-left: 35%;
    margin-right: 50px;
    vertical-align: top;
}
#sec .ms4 em{
	font-size: 18px;
    color: #0487cd;
    font-weight: bold;
}
#sec .ms6{
    width: 82px;
    height: 40px;
    background: white;
    border: 0px solid;
}
#sec .btn{
	text-align:right;
	margin-top:10px;
	padding-left: 1275px;
}
#cartt{
    font-size: 18px;
    font-weight: bold;
    color: #0487cd;
}
#cart2{
    padding-top: 10px;
    float: right;
}
#have{
	padding-left: 50px;
}
#have2{
    border-bottom: 1px solid #ccc;
    padding-left: 25px;
}
#ttq{
    display: inline-block;
    position: relative;
    width: 18px;
    height: 30px;
    text-align: left;
    vertical-align: -45%;
}
#ttq #timg{
    position: absolute;
    top: 0;
    width: 20px;
    height: 15px;
}
#ttq #timg2{
	position: absolute;
	bottom: 0;
   	width: 20px;
    height: 15px;
}
#delete{
    margin-left: 26px;
}
#order2{
    width: 90px;
    height: 47px;
    border: 0px solid;
    background: #0487cd;
    color: white;
    border-radius: 8%;
}
</style>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import> <!-- import= jsp파일을 불러와서 사용 -->
	<section id="sec">
		<div id="cart1">
			<h1 id="spa1">장바구니</h1>
			<div id="cart2">
			<span class="pay2"> <span class="pay2"><img
					src="resources/images/order/blue1.png" width="40" height="40"> </span><span id="cartt">장바구니</span><span><img
					src="resources/images/order/arrow-right.png" width="50" height="50"></span>
				<span class="pay2"><img src="resources/images/order/blue2.png"
					width="50" height="40"></span> <span>주문결제</span><span><img
					src="resources/images/order/arrow-right.png" width="50" height="50"></span>
				<span class="pay2"><img src="resources/images/order/blue3.png"
					width="40" height="40"></span> <span class="pay22">주문완료</span>
			</span>
		</div>
		</div>
		<div id="cart3">
			<p>장바구니에 담긴 상품은 <span>30일간</span> 보관됩니다.</p>
			<p>상품을 장기간 보관하시길 원하시면 [보관하기]를 클릭하시어 위시리스트에 저장해 두십시오.</p>
		</div>
		<form action="pay.do" method="post">
		<div id="cart4">
			<table>
				<colgroup>
					<col style="width: 40px;">
					<col style="width:766px;">
					<col style="width: 70px;">
					<col style="width: 100px;">
					<col style="width: 110px;">
					<col style="width: 110px;">
				</colgroup>
				<tr>
					<th>
						<label class="hidden" for="check"></label>
						<input type="checkbox" class="chk" id="check_all"
						title="일반상품 전체선택" name="chkall" value="0">
					</th>
					<th>상품</th>
					<th>상품금액</th>
					<th id="have">수량</th>
					<th id="have1">합계금액</th>
					<th id="have2">저장</th>
				</tr>
				<c:if test="${size >=1 }">
				<c:set var="sssum" value="0"/>
				<c:forEach var="i" begin="0" end="${size-1 }">
				
				<tr class="cart5">
					<td>
						<input type="checkbox" id='#' class='input_check' alt="일반상품체크박스">
						<input type="hidden" name="productid" value="${productlist.get(i).productid }">
						<input type="hidden" name="productname" value="${productlist.get(i).productname }">
						<input type="hidden" name="productsize" value="${productlist.get(i).productsize }">
					</td>
					
					<td>
						<div class="ms">
							<a href="#">
							<img src="${productlist.get(i).productimagemain }" width="120px" height="120px">
							</a>
						</div>
						
						<div class="ms1">
							<strong>
								<a href="detail.do?productname=${productlist.get(i).productname}" target="0">${productlist.get(i).productname}
								</a>
							</strong>
								<div>SIZE : ${list.productsize }</div>
								<a href="#" onclick="return false;">
									<img src="resources/images/order/btn_option.gif" alt="옵션변경" >
								</a>
						</div>
					</td>
					<td id="mon">
					<c:set var="ssum" value="${productlist.get(i).productprice * productlist.get(i).cartquantity }"/>
					<c:set var="sssum" value="${sssum + ssum}"/>
						<strong><em>${productlist.get(i).productprice }</em>원</strong>
					</td>
					
					<td class="ms2">
						<input type="text" value="${productlist.get(i).cartquantity }" id="${productlist.get(i).productid }" maxlength="4">
						<input type="hidden" class="ssum" value="${ssum }">
						<div id="ttq">
							<img src="resources/images/order/btn_option_up.gif" id="timg" onclick="amountUp('${productlist.get(i).productid }',1,${productlist.get(i).productprice });"> 
							<img src="resources/images/order/btn_option_down.gif" id="timg2" onclick="amountDown('${productlist.get(i).productid }',1,${productlist.get(i).productprice });">
						</div>
					</td>
				
					<td class="ms3">
						<%-- <fmt:formatNumber id="ssum2" value="250,000원" pattern="#,###"> --%>
						<strong id="${productlist.get(i).productid}sum" class="sum2"><em>${ssum}</em>원</strong><%-- </fmt:formatNumber> --%>
					</td>
					<td class="ms6">
						<a href="cartdel.do?cartid=${shoppingcart.get(i).cartid}&productname=${productlist.get(i).productname }&quantity=${quantity }&mileage=${mileage}&mileagePercent=${mileagePercent}&membertotalmileage=${membertotalmileage}"  id="delete">삭제</a>
					</td>
					<input type="hidden" name="quantity" value="${quantity }">
				<input type="hidden" name="mileage" value="${mileage }">
				<input type="hidden" name="mileagePercent" value="${mileagePercent }">
				<input type="hidden" name="membertotalmileage" value="${membertotalmileage }">
				</tr>
				</c:forEach>
				</c:if>
				<tr>
					<td colspan="6" class="ms4">
						<input type="hidden" id="sssum1" value="${sssum}">
						<div class="total">
							<p>상품주문금액 <strong id="ssum2">${sssum}</strong>원</p>
						</div>								
						<div class="total1">
							<p>총 결제 예정금액</p>
							<strong><em class="ssum" id="s2">${sssum}</em>원</strong>
						</div>
					</td>
				</tr>
			</table>
			<div class="btn">
				<a href="main.do"><img src="resources/images/order/btn_shop.gif"
					width="130" height="45"></span></a>
				<input type="submit" id="order2" value="주문하기">
			</div>
		</div>
		</form>
		
	</section>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>