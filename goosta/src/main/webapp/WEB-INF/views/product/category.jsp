<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Gooster-category</title>

	<!-- CSS -->
	<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/main/bootstrap.min.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/footer.css" rel="stylesheet" type="text/css" />
	<link href="resources/css/footer/jquery.scrolltop.css" rel="stylesheet">
	<link href="resources/css/category/category.css" rel="stylesheet" type="text/css" />
    
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

<script type="text/javascript">
$(document).ready(function(){
	$.scrolltop({
	    template: '<i class="fa fa-chevron-up"></i>',
	    class: 'custom-scrolltop'
	});
	
	$(".brand").click(function(){
		if($(this).next().css("display") == "none"){   
	        jQuery(this).next().css("display", "block");   
	    } else {  
	        jQuery(this).next().css("display", "none");   
	    }  
	})
});
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
	<div id="container_r">
		<div id="contents_r">
			<div class="category_tit white">
				<h3 style="margin:0 0 10px 0;">
					SHOES
				</h3>
				<span>(${count} Products)</span>
			</div>
			<div class="list_container">
				<div class="snb">
				<h4 class="arial" style="margin:0;background: #333;color: #fff;font: 20px/38px 'adinenuPro-black' !important;">
					BRAND
				</h4>
					<ul>
						<li class="lf_dep1" id="submain">
							<a href="#" class="brand"><span class="spt_bg">NIKE</span></a>
							<div class="lfmenu_depth2 category_depth2">
								<dl style="display: inline-block;left: 10px;position: relative;height: 75px;border-top: 1px;padding-top: 17px;">
									<dd>
										<ul>
											<li>
												<a href="category.do?categorybrand=NIKE">전체보기</a>
											</li>
											<li>
												<a href="category.do?categorybrand=NIKE&categorysort=FOOTER">축구</a>
											</li>
											<li>
												<a href="category.do?categorybrand=NIKE&categorysort=BASKETBALL">농구</a>
											</li>
											<li>
												<a href="category.do?categorybrand=NIKE&categorysort=RUNNING">런닝</a>
											</li>
			                  			</ul>
									</dd>
								</dl>
						  	</div>
		       			</li>
		                <li class="lf_dep1" id="submain">
						<a href="#" class="brand"><span class="spt_bg">ADIDAS</span></a>
						<div class="lfmenu_depth2 category_depth2">
							<dl style="display: inline-block;left: 10px;position: relative;height: 75px;border-top: 1px;padding-top: 17px;">
								<dd>
									<ul>
										<li>
											<a href="category.do?categorybrand=ADIDAS">전체보기</a>
										</li>
										<li>
											<a href="category.do?categorybrand=ADIDAS&categorysort=FOOTBALL">축구</a>
										</li>
										<li>
											<a href="category.do?categorybrand=ADIDAS&categorysort=BASKETBALL">농구</a>
										</li>
										<li>
											<a href="category.do?categorybrand=ADIDAS&categorysort=RUNNING">런닝</a>
										</li>
		                  			</ul>
								</dd>
							</dl>
					  	</div>
	                  </li>
	                  <li class="lf_dep1" id="submain">
						<a href="#" class="brand"><span class="spt_bg">NEW_BALANCE</span></a>
						<div class="lfmenu_depth2 category_depth2" style="display: none;">
							<dl style="display: inline-block;left: 10px;position: relative;height: 75px;border-top: 1px;padding-top: 17px;">
								<dd>
									<ul>
										<li>
											<a href="category.do?categorybrand=NEWBALANCE">전체보기</a>
										</li>
										<li>
											<a href="category.do?categorybrand=NEWBALANCE&categorysort=FOOTBALL">축구</a>
										</li>
										<li>
											<a href="category.do?categorybrand=NEWBALANCE&categorysort=BASKETBALL">농구</a>
										</li>
										<li>
											<a href="category.do?categorybrand=NEWBALANCE&categorysort=RUNNING">런닝</a>
										</li>
		                  			</ul>
								</dd>
							</dl>
					  	</div>
	                  </li>
	                  <li class="lf_dep1" id="submain">
						<a href="#" class="brand"><span class="spt_bg">PUMA</span></a>
						<div class="lfmenu_depth2 category_depth2" style="display: none;">
							<dl style="display: inline-block;left: 10px;position: relative;height: 75px;border-top: 1px;padding-top: 17px;">
								<dd>
									<ul>
										<li>
											<a href="category.do?categorybrand=PUMA">전체보기</a>
										</li>
										<li>
											<a href="category.do?categorybrand=PUMA&categorysort=FOOTBALL">축구</a>
										</li>
										<li>
											<a href="category.do?categorybrand=PUMA&categorysort=BASKETBALL">농구</a>
										</li>
										<li>
											<a href="category.do?categorybrand=PUMA&categorysort=RUNNING">런닝</a>
										</li>
		                  			</ul>
								</dd>
							</dl>
					  	</div>
	                  </li>
		        	</ul>
				</div>
			</div>
			<div class="cont758">
				<div id="frmDetail" name="frmDetail" method="post" action="">
					<div class="sort">
						<ul>
							<li><a class="on" href="category.do?categorybrand=${list[0].categorybrand }&orderColumn=best">베스트순</a></li>
						    <li><a href="category.do?categorybrand=${list[0].categorybrand }&order=desc&orderColumn=productdate">신상품순</a></li>
						    <li><a href="category.do?categorybrand=${list[0].categorybrand }&order=desc&orderColumn=productprice">높은 가격순</a></li>
						    <li class="last"><a href="category.do?categorybrand=${list[0].categorybrand }&order=asc&orderColumn=productprice">낮은 가격순</a></li>
					    </ul>
					</div>
					<!-- prod_list -->
					<div class="prodlist">
						<c:choose>
							<c:when test="${fn:length(list)>0 }">
							<%-- <c:forEach items="${list}" var="row">
								<ul> --%>
								<ul>
								<c:forEach items="${list}" var="row" varStatus="s">
									<c:if test="${s.count % 4==0}">
										<li class="last">
											<div class="img">
												<a href="detail.do?productname=${row.productname }">
													<img src="${row.productimagemain }" width="170" height="170" alt="[Men's Football] 엑스 티">										
												</a>										
											</div>
											<div class="info">
												<div class="logo spt_bg sp"> performance</div>
											</div>
											<div class="tit"><a href="detail.do?productname=${row.productname }">${row.productname }</a></div>
											<div class="pop_level spt_bg"><div class="spt_bg point">/5</div></div>
										   	<div class="price">
									   			<span class="sale"><em>${row.productprice }</em>원</span>
											</div>
										</li>
									</ul>
									<c:if test="${!s.last }">
									<ul>
									</c:if>
									</c:if>
									<c:if test="${s.count % 4!=0}">
										<li>
											<div class="img">
												<a href="detail.do?productname=${row.productname }">
													<img src="${row.productimagemain }" width="170" height="170" alt="[Men's Football] 엑스 티">										
												</a>										
											</div>
											<div class="info">
												<div class="logo spt_bg sp"> performance</div>
											</div>
											<div class="tit"><a href="detail.do?productname=${row.productname }">${row.productname }</a></div>
											<div class="pop_level spt_bg"><div class="spt_bg point">/5</div></div>
										   	<div class="price">
									   			<span class="sale"><em>${row.productprice }</em>원</span>
											</div>
										</li>
									</c:if>
								</c:forEach>
									<%-- </ul>
							</c:forEach> --%>
							</c:when>
							<c:otherwise>
								<td colspan="5">조회된 결과가 없습니다.</td>
							</c:otherwise>
						</c:choose>
						</div>
					<c:choose>
					<c:when test="${fn:length(list)>0 }">
					<div class="paging_r">
						<c:if test="${page.curPage > 1}">
							<a href="category.do?curPage=1&categorybrand=${list[0].categorybrand }&order=${order }&orderColumn=${orderColumn}">시작</a>
						</c:if>
						<!-- 이전  -->
						<c:if test="${page.curBlock > 1 }">
							<a href="category.do?curPage=${page.prevPage }&categorybrand=${list[0].categorybrand }&order=${order }&orderColumn=${orderColumn}"></a>
						</c:if>
						<c:forEach var="pageNum" begin="${page.blockStart }" end="${page.blockEnd }">
							<!-- 현재페이지는 하이퍼링크제거, 색상 처리 -->
							<c:choose>
								<c:when test="${pageNum == page.curPage }">
									<span style="color:black; text-decoration: none;">${pageNum }&nbsp;&nbsp;</span>
								</c:when>
								<c:otherwise>
									<a href="category.do?curPage=${pageNum }&categorybrand=${list[0].categorybrand }&order=${order }&orderColumn=${orderColumn}">
										${pageNum }&nbsp;&nbsp;
									</a>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<!-- 다음  -->
						<c:if test="${page.curBlock <= page.totBlock}">
							<a href="category.do?curPage=${page.nextPage }&categorybrand=${list[0].categorybrand }&order=${order }&orderColumn=${orderColumn}">></a>
						</c:if>
						<!-- 마지막 -->
						<c:if test="${page.curPage < page.totPage}">
							<a href="category.do?curPage=${page.totPage }">끝</a>
						</c:if>
					</div>
					</c:when>
				</c:choose>
				<!-- //paging -->
				</div>
			</div>
		</div>
	</div>
<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>