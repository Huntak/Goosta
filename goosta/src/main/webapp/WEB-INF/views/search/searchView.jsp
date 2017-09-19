<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- CSS -->
		<link href="resources/css/header/header.css" rel="stylesheet" type="text/css" />
	    
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
	
</script>

<script type="text/javascript">

	/* function setCookie(cookie_name, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookie_value = escape(value)+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookie_name + "=" + cookie_value;
	}

	function getCookie(cookie_name) {
		var i, x, y, z = document.cookie.split(";");
		for (i = 0; i < z.length; i++) {
			x = z[i].substr(0, z[i].indexOf("="));
			y = z[i].substr(z[i].indexOf("=") + 1);
			x = x.replace(/^s+|s+$/g, "");
			if (x == cookie_name) {
				return unescape(y);
			}
		}
	} */
	
	var searchtext = "${searchtext}";
	/*정렬기능  */
	function SortProduct(select) {
		var selected_size = $(".selected_size").text().trim();
		var sizes = selected_size.replace(/ /g, '|');

		var selected_color = $(".selected_color").text().trim();
		var color = selected_color.replace(/ /g, '|');

		var selected_brand = $(".selected_brand").text().trim();
		var brand = selected_brand.replace(/ /g, '|');

		var selected_category = $(".selected_category").text().trim();
		var category = selected_category.replace(/ /g, '|');
		$
				.ajax({
					data : {
						searchtext : searchtext,
						select : select,
						sizes : sizes,
						color : color,
						brand : brand,
						category : category
					},
					type : "POST",
					url : "SortProduct.do",
					success : function(data) {
						var out = '';
						for (var i = 0; i < data.length; i++) {
							var image = data[i].productimagemain;
							var name = data[i].productname.replace(/ /g, '_');
							var name1 = data[i].productname;
							var id = data[i].productid;
							var price = data[i].productprice;
							var category = data[i].categorybrand;
							out += "<div class='product_box'><div class='model_img_box'><a href=detail.do?productname="+name+" class='over_link'>"
							out += "<img src='"+image+"' width='198' height='200' >"
							out += "</a><!-- 상품 디테일 페이지로 이동 --></div><input type='hidden' id='productid' value="+id+">"
							out += "<a href=detail.do?productname="+name+" class='over_link'><!-- 상품 디테일 페이지로 이동 --><span class='brand'>"
									+ category + "</span><br>"
							out += "<span class='name'>" + name1
									+ "</span><br><span class='price'>" + price
									+ "</span></a><br>"
							out += "</div>"
						}
						$(".result_boxes").html(out);
					}
				});
	}
	$(document)
			.ready(
					function() {
						//접기 펼치기 기능
						$('#searchConditionArea').click(
								function() {
									$(".searchCondition").slideToggle('slow',
											function() {
											});
								});
						$('#size_info').click(
								function() {
									$(".smart_group.condSizeArea").slideToggle(
											'fast', function() {
											});
								});

						$('#color_info').click(
								function() {
									$(".smart_group.color").slideToggle('fast',
											function() {
											});
								});
						//사이즈와 색상을 눌렀을때 체크 및 선택조건에 입력되도록함
						//사이즈
						$(".detail_size li").on(
								"click",
								"a",
								function() {
									$(this).toggleClass('select');
									var size = $(this).text();
									var i = 1;
									if ($(this).hasClass("select")) {
										$(this).css("color", "#e50015");
										$(this).css("border-color", "#e50015");
										$(".selected_size").append(
												"<a class="+size+">" + size
														+ " &nbsp&nbsp</a>");
									}
									;
									if (!$(this).hasClass("select")) {
										$(this).css("color", "#3b3b3b");
										$(this).css("border",
												"0.5px solid #c5bcbc");
										$(".selected_size a." + size).remove();
									}
									;
								});
						//색상
						$(".shoe_color li").on(
								"click",
								"a",
								function() {
									$(this).toggleClass('select');
									var color = $(this).text();
									if ($(this).hasClass("select")) {
										$(this).css("border",
												"2px solid #e50015");
										$(".selected_color").append(
												"<a class="+color+">" + color
														+ " &nbsp&nbsp</a>");
									} else {
										$(this).css("border", "none");
										$(".selected_color a." + color)
												.remove();
									}
								});
						//브랜드		
						$(".smart_brand_article li img").click(
								function() {
									$(this).toggleClass('select');
									var src = $(this).attr("src");
									var brandname = src.substring(src
											.lastIndexOf("/") + 1, src
											.lastIndexOf("."));
									if ($(this).hasClass("select")) {
										$(this).css("border",
												"0.5px solid #c5bcbc");
										$(".selected_brand").append(
												"<a class="+brandname+">"
														+ brandname
														+ " &nbsp&nbsp</a>");
									} else {
										$(this).css("border", "none");
										$(".selected_brand a." + brandname)
												.remove();
									}
								});
						//카테고리
						$(".smart_category_article li img").click(
								function() {
									$(this).toggleClass('select');
									var src = $(this).attr("src");
									var categoryname = src.substring(src
											.lastIndexOf("/") + 1, src
											.lastIndexOf("."));
									if ($(this).hasClass("select")) {
										$(this).css("border",
												"0.5px solid #c5bcbc");
										$(".selected_category").append(
												"<a class="+categoryname+">"
														+ categoryname
														+ " &nbsp&nbsp</a>");
									} else {
										$(this).css("border", "none");
										$(
												".selected_category a."
														+ categoryname)
												.remove();
									}
								});

						//검색조건 초기화
						$(".reset")
								.click(
										function() {
											$(".detail_size li a").css("color",
													"#3b3b3b");
											$(".detail_size li a").css(
													"border",
													"0.5px solid #c5bcbc");
											$(".selected_size a").remove();

											$(".shoe_color li a").css("border",
													"none");
											$(".selected_color a").remove();

											$(".smart_brand_article li img")
													.css("border", "none");
											$(".selected_brand a").remove();

											$(".smart_category_article li img")
													.css("border", "none");
											$(".selected_category a").remove();

										});
						//선택된 조건으로 검색 
						$(".searchButton")
								.click(
										function() {
											var selected_size = $(
													".selected_size").text()
													.trim();
											var sizes = selected_size.replace(
													/ /g, '|');

											var selected_color = $(
													".selected_color").text()
													.trim();
											var color = selected_color.replace(
													/ /g, '|');

											var selected_brand = $(
													".selected_brand").text()
													.trim();
											var brand = selected_brand.replace(
													/ /g, '|');

											var selected_category = $(
													".selected_category")
													.text().trim();
											var category = selected_category
													.replace(/ /g, '|');

											searchtext = '';

											$
													.ajax({
														data : {
															//searchtext : "${searchtext}",
															sizes : sizes,
															color : color,
															brand : brand,
															category : category
														},
														type : "POST",
														url : "DetailSearch.do",
														success : function(data) {
															$(".add_header")
																	.hide();
															$(
																	".condition_header")
																	.show();
															alert("성공");

															var out = '';
															for (var i = 0; i < data.length; i++) {
																var image = data[i].productimagemain;
																var name = data[i].productname.replace(/ /g, '_');
																var name1 = data[i].productname;
																var id = data[i].productid;
																var price = data[i].productprice;
																var category = data[i].categorybrand;
																out += "<div class='product_box'><div class='model_img_box'><a href=detail.do?productname="+name+" class='over_link'>"
																out += "<img src='"+image+"' width='198' height='200' >"
																out += "</a><!-- 상품 디테일 페이지로 이동 --></div><input type='hidden' id='productid' value="+id+">"
																out += "<a href=detail.do?productname="+name+" class='over_link'><!-- 상품 디테일 페이지로 이동 --><span class='brand'>"
																		+ category + "</span><br>"
																out += "<span class='name'>" + name1
																		+ "</span><br><span class='price'>" + price
																		+ "</span></a><br>"
																out += "</div>"
															}
															$(".result_boxes")
																	.html(out);
														}
													});
											/*Ajax  */
										});
						$.scrolltop({
							template : '<i class="fa fa-chevron-up"></i>',
							class : 'custom-scrolltop'
						});
					});
</script>
<style type="text/css"> /*  //////////////////////////////////////스타일///////////////////////////////////////// */  
.condition_header{
	display : none;
}
/* .quick_list_header{
	height: 30px;
} */
.container_wrap{
}
/* .quickbar_area .quick_product {
	text-align: center;
    position: relative;
    height: 415px;
    padding: 20px 0;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}
#quickbar {
    position: absolute;
    z-index: 201;
    left: 50%;
    width: 80px;
    margin-left: 582px;
    margin-top:  8%;
    background: #fff;
    border: 0.5px solid rgba(206, 200, 200, 0.79);
    
} */
.sort{
	margin-left : 20px;
}
.sort_condition{
    display: inline-block;
    margin-left : 60%;
}
.product_box {
    float: left;
    width: 200px;
    height: 280px;
    margin-right: 15px;
    margin-bottom: 15px;
    border: 0.5px solid rgba(0, 0, 0, 0.17);
    border-radius: 30px;
    text-align: center;
 }
.search_result{
	width : 120px;
 	margin-top:10px;
	margin-bottom : 5px;	
	font-size: 22px;
    font: menu;
}
.searched_result{
	height: 100%;
	overflow-y : auto;
}
.result_boxes{
    display: inline-block;
}
</style>
<link rel="stylesheet" type="text/css" href="resources/css/search/search.css">

<title>검색 결과 페이지</title>

</head>
<body>
	<div class="warp">
		<div class="layoutHeader">
			<c:import url="/WEB-INF/views/common/header.jsp"></c:import>
			<hr>
		</div>
		<!-- 컨테이너 -->
		<div class="container_wrap">
			<div class="container_area" id="container_area">
				
		<%-- <!-- 퀵바 Ajax로 뽑아내야함  -->
		<div id="quickbar" style="top: 50px; position: fixed;">
			<div class="quickbar_area">
		    <section class="quick_product">
		        <header class="quick_list_header">
		             <center><p>최근본상품<p></center>
		        </header>
		      <!--   <div class="quick_list">
		             <ul>
		            		<li>
		                        <a href="http://www.abcmart.co.kr/abc/product/detail?prdtCode=0056138&amp;ctgrId=000002">
		                            <img src="http://image.abcmart.co.kr/nexti/images/title/1886/0056138_sub1.jpg" alt="D LITES 2 SWEET MONSTER" class="smallImage" style="width:64px; heigth:64px;" onerror="imageError(this)">
		                        </a>
		                    </li>
		                    <li>
		                        <a href="http://www.abcmart.co.kr/abc/product/detail?prdtCode=0051624&amp;ctgrId=000200">
		                            <img src="http://image.abcmart.co.kr/nexti/images/title/1599/0051624_sub1.jpg" alt="DELPHINA 3.5" class="smallImage" style="width:64px; heigth:64px;" onerror="imageError(this)">
		                        </a>
		                    </li>
		                    <li>
		                        <a href="http://www.abcmart.co.kr/abc/product/detail?prdtCode=0051625&amp;ctgrId=000200">
		                            <img src="http://image.abcmart.co.kr/nexti/images/title/1094/0051625_sub1.jpg" alt="DELPHINA 3.5" class="smallImage" style="width:64px; heigth:64px;" onerror="imageError(this)">
		                        </a>
		                    </li>
		                    <li>
		                        <a href="http://www.abcmart.co.kr/abc/product/detail?prdtCode=0054142&amp;ctgrId=000002">
		                            <img src="http://image.abcmart.co.kr/nexti/images/title/1571/0054142_sub1.jpg" alt="B.O.G Sock" class="smallImage" style="width:64px; heigth:64px;" onerror="imageError(this)">
		                        </a>
		                    </li>
		                    <li>
		                        <a href="http://www.abcmart.co.kr/abc/product/detail?prdtCode=0054141&amp;ctgrId=000002">
		                            <img src="http://image.abcmart.co.kr/nexti/images/title/1076/0054141_sub1.jpg" alt="B.O.G Sock" class="smallImage" style="width:64px; heigth:64px;" onerror="imageError(this)">
		                        </a>
		                    </li>
		            </ul>
		        </div>
		            <a href="javascript://" class="prev">이전</a>
		            <a href="javascript://" class="next">다음</a> -->
		    </section>
			</div>
		</div> --%>
				
				<!-- 검색조건 부분  -->
				<div class="container_layout">
					<header class="add_header">
						<h2 class="sub_tit">
							<strong class="fc_type1">${searchtext}</strong> <span class="normal">검색결과
							</span>
						</h2>
						<p class="add_tit"></p>
					</header>
					
					<header class="condition_header">
						<h2 class="sub_tit">
							<strong class="fc_type1">조건</strong> <span class="normal">검색결과
							</span>
						</h2>
						<p class="add_tit"></p>
					</header>

					<!-- searchBox영역 -->
					<h4 id="searchConditionArea" class="searchConditionArea">상세
						검색/접기</h4>
					<div class="searchCondition">
						<article class="searchCondArea" id="searchCondArea">
							<section class="searchBox">
								<div class="gridBox">
									<div class="brandBox">
										<h4 class="h4group">브랜드</h4>
										<article class="smart_brand_article">
											<ul>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/NIKE.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/VANS.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/ADIDAS.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/NEWBALANCE.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/DOCTORMARTENS.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/REABOCK.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/SPERRY.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/CONVERSE.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/PUMA.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeBrandImage/FILA.gif"></a></li>
											</ul>
										</article>
									</div>

									<div class="categoryBox">
										<h4 class="h4group">카테고리</h4>
										<article class="smart_category_article">
											<section class="category_group">
											<ul>
											<h4 class="h4group">운동화</h4>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/RUNNING.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/FOOTBALL.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/BASKETBALL.gif"></a></li>
											<h4 class="h4group">구두</h4>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/LOAFER.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/OXFORD.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/DECK.gif"></a></li>
											<h4 class="h4group">스니커즈</h4>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/CONVERSESHOES.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/SLIPON.gif"></a></li>
												<li><a href=#><img src="resources/images/search/shoeCategoryImage/SNEAKERS.gif"></a></li>
											</ul>
											</section>
										</article>
									</div>
								</div>
							</section>
						</article>
						<hr>
						<form action="#" name="productSearch" method="GET"></form>
						<div class="smart_section">
							<h4 id="size_info" class="size_info">사이즈/접기</h4>
							<section class="smart_group condSizeArea">
								<div id="brand_check_box" class="brand_check_box fl-l">
									<ul id="detail_size" class="detail_size">
										<li class=" checkEntity condSize condSize240"><a
											href="javascript://">240</a></li>
										<li class=" checkEntity condSize condSize245"><a
											href="javascript://">245</a></li>
										<li class=" checkEntity condSize condSize250"><a
											href="javascript://">250</a></li>
										<li class=" checkEntity condSize condSize255"><a
											href="javascript://">255</a></li>
										<li class=" checkEntity condSize condSize260"><a
											href="javascript://">260</a></li>
										<li class=" checkEntity condSize condSize265"><a
											href="javascript://">265</a></li>
										<li class=" checkEntity condSize condSize270"><a
											href="javascript://">270</a></li>
										<li class=" checkEntity condSize condSize275"><a
											href="javascript://">275</a></li>
										<li class=" checkEntity condSize condSize280"><a
											href="javascript://">280</a></li>
										<li class=" checkEntity condSize condSize285"><a
											href="javascript://">285</a></li>
										<li class=" checkEntity condSize condSize290"><a
											href="javascript://">290</a></li>
										<li class=" checkEntity condSize condSize295"><a
											href="javascript://">295</a></li>
										<li class=" checkEntity condSize condSize300"><a
											href="javascript://">300</a></li>
									</ul>
								</div>
							</section>
							
							<h4 id="color_info" class="color_info">색상/접기</h4>
							<div class="smart_group color">
								<div id="smart_color_zone" class="smart_color_zone fl-l">
									<ul id="shoe_color" class="shoe_color">
										<li class=" checkEntity condColor condColorgreen"><a
											href="javascript://" class="color_n4">GREEN</a></li>
										<li class=" checkEntity condColor condColorblue"><a
											href="javascript://" class="color_n5">BLUE</a></li>
										<li class=" checkEntity condColor condColororange"><a
											href="javascript://" class="color_n2">ORANGE</a></li>
										<li class=" checkEntity condColor condColoryellow"><a
											href="javascript://" class="color_n3">YELLOW</a></li>
										<li class=" checkEntity condColor condColorpink"><a
											href="javascript://" class="color_n8">PINK</a></li>
										<li class=" checkEntity condColor condColorbrown"><a
											href="javascript://" class="color_n9">BROWN</a></li>
										<li class=" checkEntity condColor condColornavy"><a
											href="javascript://" class="color_n6">NAVY</a></li>
										<li class=" checkEntity condColor condColorpurple"><a
											href="javascript://" class="color_n7">PURPLE</a></li>
										<li class=" checkEntity condColor condColorgold"><a
											href="javascript://" class="color_n15">GOLD</a></li>
										<li class=" checkEntity condColor condColorpattern"><a
											href="javascript://" class="color_n16">PATTERN</a></li>
										<li class=" checkEntity condColor condColorblack"><a
											href="javascript://" class="color_n13">BLACK</a></li>
										<li class=" checkEntity condColor condColorsilver"><a
											href="javascript://" class="color_n14">SILVER</a></li>
										<li class=" checkEntity condColor condColorgray"><a
											href="javascript://" class="color_n11">GRAY</a></li>
										<li class=" checkEntity condColor condColorwhite"><a
											href="javascript://" class="color_n12">WHITE</a></li>
										<li class=" checkEntity condColor condColorred"><a
											href="javascript://" class="color_n1">RED</a></li>
										<li class=" checkEntity condColor condColorbeige"><a
											href="javascript://" class="color_n10">BEIGE</a></li>
										<li class=" checkEntity condColor condColorneon"><a
											href="javascript://" class="color_n17">NEON</a></li>
										<li class=" checkEntity condColor condColormulti"><a
											href="javascript://" class="color_n18">MULTI</a></li>
									</ul>
								</div>
							</div>
						<h4 class="fl-l_s_width">선택한 조건</h4> <input type="submit" class="searchButton" value="검색하기">
						<button class="reset">초기화</button>	
							<div class="smart_group searched">
								<div class="selected_size"> </div>
								<div class="selected_color"></div>
								<div class="selected_brand"></div>
								<div class="selected_category"></div>
							</div>
						</div>
					</div>
				<!-- Ajax로 뽑아내야할 부분들 /////////////////////////////////////////////////////////////////// -->		
					<div class="searched_result">
						<h4 class="searched_result">검색 결과</h4>
						<hr>
						<br>
						<div class="sort_condition">
						  <ul>
							<li class="sort"><a href="#" onclick='SortProduct("new")'><h4 class="h4group">신상품순 </h4></a></li>
							<li class="sort"><a href="#" onclick='SortProduct("best")'><h4 class="h4group">베스트상품순</h4></a></li>
						 	<li class="sort"><a href="#" onclick='SortProduct("asc")'><h4 class="h4group">낮은가격순</h4></a></li>
							<li class="sort"><a href="#" onclick='SortProduct("desc")'><h4 class="h4group">높은가격순</h4></a></li>
						  </ul>	
						</div>
		<div class="result_boxes">
		<c:choose>
			<c:when test="${fn:length(list) > 0}">
			<c:forEach items="${list }" var="row">
							<div class="product_box">
									<div class="model_img_box">
									<a href="detail.do?productname=${row.productname}" class="over_link">
									<img src="${row.productimagemain}" width="198" height="200" >
									</a><!-- 상품 디테일 페이지로 이동 -->
									</div>
									<input type="hidden" id="productid" value="${row.productid }">
									<a href="CreviewDetail.do?boardno=${row.productid }" class="over_link"><!-- 상품 디테일 페이지로 이동 -->
									<span class="brand">${row.categorybrand}</span><br>
        							<span class="name">${row.productname}</span><br>
            						<span class="price">${row.productprice}</span></a><br>
        					</div>		
		</c:forEach>
	</c:when>
<c:otherwise>
<div class="notfound">조회된 결과가 없습니다.</div>
</c:otherwise>
</c:choose>
</div>
			</div>
		</div>
	</div>
	</div></div>
	<c:import url="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>