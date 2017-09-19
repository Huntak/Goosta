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
	<link href="resources/css/qna/qnaDetail.css" rel="stylesheet" type="text/css" />
    
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

<title>1:1문의내역 상세보기</title>
</head>
<script type="text/javascript">
function toList(){
	historyback();
}
</script>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div class="cont758">
		<div class="reportboard">
			<h3>1:1 문의내역 상세보기</h3>
		</div>
			<table>
				<tbody>
					<tr>
						<th class="th_title">제목</th>
						<td class="td_con">
								<span>${qna.questiontitle }</span>
						</td>
					</tr>
					<tr>
						<th class="th_title">문의유형</th>
						<td class="td_con">
								<span>${qna.questiontype }</span>
						</td>
					</tr>
					<tr>
						<th class="th_title">작성 날짜</th>
						<td class="td_con">
							<span>${qna.questiondate }</span>
						</td>
					</tr>
					<tr>
						<th class="th_title">내용</th>
						<td class="td_con">
							<div id="con_div">${qna.questioncontent }</div>
						</td>
					</tr>
				</tbody>
			</table>
<div id="btn_div">
<a href="qnaManager.do" id="btn1"> 목록으로</a>
 <a id="btn2" onclick="window.open('writeQnaEmail.do?questionemail=${qna.questionemail }&memberid=${qna.memberid}&questionno=${qna.questionno }', 'email', 'left=600, top=200, width=650, height=600')">답변하기</a>
 </div>			
</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>