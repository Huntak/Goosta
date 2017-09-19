<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS -->
	<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/customer/shopNoticeWrite.css" rel="stylesheet" type="text/css" />
    
	<!-- FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500italic,700,500,700italic,900,900italic' rel='stylesheet' type='text/css'>
	<link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">	
   
   	<!-- JS -->
   	<script src="http://code.jquery.com/jquery.js"></script>
   	<script src="resources/js/customer/customer.js"></script>
   	<script src="resources/js/bootstrap/bootstrap.min.js"></script>
	<script src="resources/js/main/jquery.min.js" type="text/javascript"></script>
	<script src="resources/js/main/jquery.nicescroll.min.js" type="text/javascript"></script>
	<script src="resources/js/main/superfish.min.js" type="text/javascript"></script>
	<script src="resources/js/main/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="resources/js/main/owl.carousel.js" type="text/javascript"></script>
	<script src="resources/js/main/bootstrap.min.js" type="text/javascript"></script>
	<script src="resources/js/footer/jquery.scrolltop.js"></script>
<title>FAQ 글 등록</title>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="cont758">
		<div class="reportboard">
			<h3>FAQ WRITE</h3>
		</div>
		<form action="insertFaq.do" method="post" >
			<table>
				<tbody>
					<tr>
						<th class="th_title">제목</th>
						<td class="td_con">
							<input type="text" id="title" name="ftitle" maxlength="100"/>
						</td>
					</tr>
					<tr>
						<th class="th_title">유형</th>
						<td class="td_con">
							<select name="answertype">
							<option value="">선택</option>
							<option value="배송">배송</option>
							<option value="주문">주문/결제</option>
							<option value="교환">교환/반품</option>
							<option value="회원">회원</option>
							<option value="기타">기타</option>
							</select>
						</td>
					</tr>
					<tr>
						<th class="th_title">내용</th>
						<td class="td_con">
							<textarea name="fcontent" id="boardcontent"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
				<div class="btn-area">
				<input type="submit" class="btn-ctm btn-blue" value="write">
				</div>
		</form>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>