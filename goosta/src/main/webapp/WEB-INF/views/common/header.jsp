<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style type="text/css"> 
/* __________ Login __________ */
ul{
list-style : none;
}
.text{
	margin-top : 10px;
}
.login-right{
    z-index: 9999;
    position: fixed;
    background: #fff;
    width: 100%;
    height: 30px;
    padding-top: 10px;
    padding-left: 1035px;
}
a {
	color: #999;
}

#display { width: 250px; 
position: absolute; 
z-index: 9999; float: right; 
border-left: solid 1px #dedede; 
border-right: solid 1px #dedede; 
border-bottom: solid 1px #dedede; 
overflow: hidden; } 
a:hover, a:focus { 
text-decoration: none; 
color: #333; } .display_box { 
padding: 4px; font-size: 12px; 
height: 80px; 
background: #FFFFFF; 
color: #333333; 
width : 250px; } 
.display_box:hover { 
background: #fcffaa; 
color: black; cursor: pointer; 
} .boximage { float: left; 
margin-right: 10px; } 
.quickbar_area .quick_product {
	text-align: center;
    position: relative;
    height: 370px;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
    width: 100px;;
    overflow-y : scroll;
}
#quickbar {
    position: absolute;
    z-index: 201;
    left: 50%;
    width: 103px;;
    margin-left: 700px;
    margin-top:  8%;
    background: #fff;
    border: 0.5px solid rgba(206, 200, 200, 0.79);
    
}
::-webkit-scrollbar {width: 6px; height: 8px; border: 2px solid rgba(206, 200, 200, 0.79); }

::-webkit-scrollbar-button:start:decrement, ::-webkit-scrollbar-button:end:increment {display: block; height: 10px; background: #efefef}

::-webkit-scrollbar-track {background: #efefef; -webkit-border-radius: 10px; border-radius:10px; -webkit-box-shadow: inset 0 0 4px rgba(0,0,0,.2)}

::-webkit-scrollbar-thumb {height: 50px; width: 50px; background: rgba(0,0,0,.2); -webkit-border-radius: 8px; border-radius: 8px; -webkit-box-shadow: inset 0 0 4px rgba(0,0,0,.1)}
.quick_list_header{
	width : 100px;
	height: 100%;
}
</style> 
<script type="text/javascript"> 
/* $(document).ready(function(){ 
$('nav li').hover( 
function() { 
$('ul', this).stop().slideDown(200); 
}, function() { 
$('ul', this).stop().slideUp(200); 
} ); }); */ 
function PreviousProductList(){
	$.ajax({
		data : {"productname" : "productname" },
		type : "POST",
		url : "PreviousProductList.do", 
		success : function(data) {
	var out = '';
	for(var i = 0; i<data.length; i++){
		var image = data[i].productimagemain; 
		var name = data[i].productname.replace(/ /g, '_');
		var name1 = data[i].productname;
		out += "<div class='quick_list'><ul><li><a href=detail.do?productname="+name+" class='over_link'>"
		out += "<img src='"+image+ "' class='smallImage' style='width:64px; heigth:64px;'></a></li></ul></div>"
			}
		$(".quick_product").html(out);
		}
	}); 
}
$(document).ready(function () { 
	PreviousProductList();
    $("#searchBox").keyup(function()   {  
        var searchtext = $(this).val();  
   //    var dataString = 'searchword='+ keyword;   
        if(searchtext=="") {  
            $("#display").hide(); 
        } else {  
            $.ajax({ 
  data : {   
			searchtext : searchtext },          
            type: "POST", 
            url: "HeaderSearch.do", 
            success: function(data) { 
var out = ''; 
for(var i = 0; i<data.length; i++){ 
var image = data[i].productimagemain; 
var name = data[i].productname.replace(/ /g, '_');
var name1 = data[i].productname;
var id = data[i].productid; 
out+="<a href=detail.do?productname="+name+"><div class='display_box' id="+id+" value="+id+">";
out+="<img src='"+image+"' width='95' height ='100%' class='boximage'/><br/>"; 
out+="<b>"+name1+"</b></div></a>"; 
} 
$("#display").show(); 
$("#display").html(out); 
} 
            });  
            return false; 
     } 
    });    
}); 
</script> 
<!-- HEADER -->
		<header>
		<!-- LOGIN -->
			<div class="login-right">			
				<c:if test="${empty sessionScope.loginUser }">
	        		<a href="login.do">로그인</a>&nbsp; |&nbsp;
					<a href="enroll.do">회원가입</a>&nbsp; |
	    		</c:if>
				<c:if test="${not empty sessionScope.loginUser }">
					<a href="logout.do">로그아웃</a>&nbsp; |&nbsp;
				</c:if>
				
				<a href="cart.do">장바구니</a>&nbsp; |&nbsp;
				<a href="#">주문조회</a>&nbsp; |&nbsp;
				<a href="mypage.do">마이페이지</a>&nbsp; |&nbsp;
				<a href="sreview.do">리뷰</a>&nbsp; |&nbsp;
				<a href="viewEvent.do">이벤트</a>&nbsp; |&nbsp;
				<a href="viewCustomer.do">고객센터</a>
				<c:if test="${ loginUser.memberid eq admin }">
				<a href="memberManager.do">관리자</a>&nbsp; |&nbsp;
				</c:if>
			</div>
		
			<!-- MENU BLOCK -->
			<div class="menu_block">
			
				<!-- CONTAINER -->
				<div class="container clearfix">
					
					<!-- LOGO -->
					<div class="logo pull-left">
						<a href="/goosta/" ><span class="b1">G</span><span class="b2">o</span><span class="b3">o</span><span class="b4">s</span><span class="b5">t</span><span class="b5">a</span></a>
					</div><!-- //LOGO -->
					
					<!-- SEARCH FORM -->
					<div id="search-form" class="pull-right">
						<form method="get" action="TextSearch.do"> 
						<input id="searchBox" type="text" name="Search" value="Search" onFocus="if (this.value == 'Search') 
						this.value = '';" onBlur="if (this.value == '') this.value = 'Search';" autocomplete=off />
						<div id="display"> 
						</div> 
						</form>
					</div><!-- SEARCH FORM -->
					
					<!-- MENU -->
					<div class="pull-right">
						<nav class="navmenu">
							<ul>
							<c:if test="${ loginUser.memberid eq 'admin'}"> 
							<!--관리자 페이지  -->
							<li class="sub-menu">
									<a href="#about" class="bigmenu">MANAGE</a>
									<div class="depth2_contents">
										<div class="community_words">
											MANAGE
										</div>
										<div class="commuity_menu">
											<div class="community">
												<ul>
													<li class="man_board">
														<div class="community_title">
															<a href="#" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																상품관리
															</a>
														</div>
														<div class="icon">
														<a href="">
															<img src="resources/images/header/상품관리.jpg">
														</a>
														</div>
													</li>
													<li class="man_board">
														<div class="community_title">
															<a href="#" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																거래처관리
															</a>
														</div>
														<div class="icon">
														<a href="">
															<img src="resources/images/header/거래처관리.jpg">
														</a>
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
															</a>
														</div>
													</li>
													<li class="man_board">
														<div class="community_title">
															<a href="#" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																입고관리
															</a>
														</div>
														<div class="icon">
														<a href="">
															<img src="resources/images/header/입고관리.jpg">
														</a>
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
															</a>
														</div>
													</li>
													<li class="man_board">
														<div class="community_title">
															<a href="#" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																결제관리
															</a>
														</div>
														<div class="icon">
															<a href="">
															<img src="resources/images/header/결제관리.jpg">
															</a>
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
															</a>
														</div>
													</li>
													<li class="man_board">
														<div class="community_title">
															<a href="#" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																회원관리
															</a>
														</div>
														<div class="icon">
															<a href="">
															<img src="resources/images/header/회원관리.jpg">
															</a>
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
															</a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								</c:if>
 								<li class="sub-menu">
									<a href="#home" class="bigmenu">ShoppingMall</a>
									<div class="depth2_contents">
										<div class="shopping_mall">
											<div class="ctgr_box">
												<div class="box img_box">
													<dl>
														<dt><img src="resources/images/header/nike.PNG" style="width: 120px; height: 40px;"></dt>
														<dd>
															<div class="small_picture">
																<img src="resources/images/header/nike_img.PNG" style="width: 200px; height: 70px;">
															</div>
															<div class="menu_sort">
																<ul style="padding-left: 10px; padding-right: 10px;">
																	<li class="li_part"><a href="category.do?categorybrand=NIKE&order=desc&orderColumn=productdate" style="margin: 0; padding: 5px 0 0 5px; color: black;">신상품</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NIKE&orderColumn=best" style="margin: 0; padding: 5px 0 0 5px; color: black;">베스트셀러</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NIKE&categorysort=RUNNING" style="margin: 0; padding: 5px 0 0 5px; color: black;">런닝</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NIKE&categorysort=FOOTER" style="margin: 0; padding: 5px 0 0 5px; color: black;">축구</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NIKE&categorysort=BASKETBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">농구</a></li>
																	<hr style="margin : 5px 0 5px 0;">
																	<li class="li_part"><a href="category.do?categorybrand=NIKE" style="margin: 0; padding: 5px 0 0 5px; color: black;">전체보기</a></li>
																</ul>
															</div>
															<!-- <div style="height: 1px;background-color: #666; margin-top: 10px;"></div>
															<div class="menu_sort">
																<ul>
																	<li class="li_part">전체보기</li>
																</ul>
															</div> -->
														</dd>
													</dl>
													<dl>
														<dt><img src="resources/images/header/adidas.PNG" style="width: 120px; height: 40px;"></dt>
														<dd>
															<div class="small_picture">
																<img src="resources/images/header/adidas_img.PNG" style="width: 200px; height: 70px;">
															</div>
															<div class="menu_sort">
																<ul style="padding-left: 10px; padding-right: 10px;">
																	<li class="li_part"><a href="category.do?categorybrand=ADIDAS&order=desc&orderColumn=productdate" style="margin: 0; padding: 5px 0 0 5px; color: black;">신상품</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=ADIDAS&orderColumn=best" style="margin: 0; padding: 5px 0 0 5px; color: black;">베스트셀러</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=ADIDAS&categorysort=RUNNING" style="margin: 0; padding: 5px 0 0 5px; color: black;">런닝</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=ADIDAS&categorysort=FOOTBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">축구</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=ADIDAS&categorysort=BASKETBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">농구</a></li>
																	<hr style="margin : 5px 0 5px 0;">
																	<li class="li_part"><a href="category.do?categorybrand=ADIDAS" style="margin: 0; padding: 5px 0 0 5px; color: black;">전체보기</a></li>
																</ul>
															</div>
														</dd>
													</dl>
													<dl>
														<dt><img src="resources/images/header/newbal.PNG" style="width: 120px; height: 40px;"></dt>
														<dd>
															<div class="small_picture">
																<img src="resources/images/header/newbal_img.PNG" style="width: 200px; height: 70px;">
															</div>
															<div class="menu_sort">
																<ul style="padding-left: 10px; padding-right: 10px;">
																	<li class="li_part"><a href="category.do?categorybrand=NEWBALANCE&order=desc&orderColumn=productdate" style="margin: 0; padding: 5px 0 0 5px; color: black;">신상품</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NEWBALANCE&orderColumn=best" style="margin: 0; padding: 5px 0 0 5px; color: black;">베스트셀러</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NEWBALANCE&categorysort=RUNNING" style="margin: 0; padding: 5px 0 0 5px; color: black;">런닝</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NEWBALANCE&categorysort=FOOTBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">축구</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=NEWBALANCE&categorysort=BASKETBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">농구</a></li>
																	<hr style="margin : 5px 0 5px 0;">
																	<li class="li_part"><a href="category.do?categorybrand=NEWBALANCE" style="margin: 0; padding: 5px 0 0 5px; color: black;">전체보기</a></li>
																</ul>
															</div>
														</dd>
													</dl>
													<dl>
														<dt><img src="resources/images/header/puma.PNG" style="width: 120px; height: 40px;"></dt>
														<dd>
															<div class="small_picture">
																<img src="resources/images/header/puma_img.PNG" style="width: 200px; height: 70px;">
															</div>
															<div class="menu_sort">
																<ul style="padding-left: 10px; padding-right: 10px;">
																	<li class="li_part"><a href="category.do?categorybrand=PUMA&order=desc&orderColumn=productdate" style="margin: 0; padding: 5px 0 0 5px; color: black;">신상품</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=PUMA&orderColumn=best" style="margin: 0; padding: 5px 0 0 5px; color: black;">베스트셀러</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=PUMA&categorysort=RUNNING" style="margin: 0; padding: 5px 0 0 5px; color: black;">런닝</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=PUMA&categorysort=FOOTBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">축구</a></li>
																	<li class="li_part"><a href="category.do?categorybrand=PUMA&categorysort=BASKETBALL" style="margin: 0; padding: 5px 0 0 5px; color: black;">농구</a></li>
																	<hr style="margin : 5px 0 5px 0;">
																	<li class="li_part"><a href="category.do?categorybrand=PUMA" style="margin: 0; padding: 5px 0 0 5px; color: black;">전체보기</a></li>
																</ul>
															</div>
														</dd>
													</dl>
												</div>
											</div>
										</div>
									</div>
								</li>
								<li class="sub-menu">
									<a href="#about" class="bigmenu">Community</a>
									<div class="depth2_contents">
										<div class="community_words">
											COMMUNITY
										</div>
										<div class="commuity_menu">
											<div class="community">
												<ul>
													<li class="com_board">
														<div class="community_title">
															<a href="#" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																공지사항
															</a>
														</div>
														<div class="icon">
															<img src="resources/images/header/notice.png">
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
																Goosta에<br> 새로운 소식을<br> 확인 하실 수<br> 있습니다.
															</a>
														</div>
													</li>
													<li class="com_board">
														<div class="community_title">
															<a href="viewShand.do" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																중고거래
															</a>
														</div>
														<div class="icon">
															<img src="resources/images/header/deal.png">
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
																Goosta에서 <br>회원 끼리 <br>중고거래를 <br> 할 수 있습니다. 
															</a>
														</div>
													</li>
													<li class="com_board">
														<div class="community_title">
															<a href="fboardlist.do" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																자유게시판
															</a>
														</div>
														<div class="icon">
															<img src="resources/images/header/free.png">
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
																Goosta에서<br>자유롭게 <br>글을<br>올려보세요.
															</a>
														</div>
													</li>
													<li class="com_board">
														<div class="community_title">
															<a href="report.do" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																신고게시판
															</a>
														</div>
														<div class="icon">
															<img src="resources/images/header/notify.png">
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
																불법적으로 <br>행동하는 회원을<br> 신고할 수<br> 있습니다.
															</a>
														</div>
													</li>
													<li class="com_board">
														<div class="community_title">
															<a href="CreviewList.do" style="text-align: center;margin-bottom: 10px;margin-top: 30px;font-weight: 800;font-size: 16pt;color: #666;padding: 0;">
																리뷰
															</a>
														</div>
														<div class="icon">
															<img src="resources/images/header/review.png">
														</div>
														<div class="community_content">
															<a href="" style="text-align: center; margin-top: 2px; font-size: 10pt; padding: 0; color: #666; font-weight: 600;">
																Goosta에서<br>상품에 대한<br> 리뷰를 <br> 확인해보세요 
															</a>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</li>
							</ul>
						</nav>
					</div><!-- //MENU -->
				</div><!-- //MENU BLOCK -->
				<!-- 퀵바 Ajax로 뽑아내야함  -->
		<div id="quickbar" style="top: 50px; position: fixed;">
			<div class="quickbar_area">
			<header class="quick_list_header">
		             <center><div class="text">최근본상품</div><p></center>
		        </header>
		    <section class="quick_product">
		        
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
		</div>
			</div><!-- //CONTAINER -->
		</header><!-- //HEADER -->