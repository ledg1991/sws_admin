<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인 메뉴</title>

<!--  CDN -->
<!-- SmartMenus core CSS (required) -->
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/group2_sws_prj/common/css/slick.css">



<script src="https://code.jquery.com/jquery-2.2.0.min.js"
	type="text/javascript"></script>
<script src="http://localhost:8080/group2_sws_prj/common/js/slick.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(document).on('ready', function() {
		$(".vertical-center-4").slick({
			dots : true,
			vertical : true,
			centerMode : true,
			slidesToShow : 4,
			slidesToScroll : 2
		});
		$(".vertical-center-3").slick({
			dots : true,
			vertical : true,
			centerMode : true,
			slidesToShow : 3,
			slidesToScroll : 3
		});
		$(".vertical-center-2").slick({
			dots : true,
			vertical : true,
			centerMode : true,
			slidesToShow : 2,
			slidesToScroll : 2
		});
		$(".vertical-center").slick({
			dots : true,
			vertical : true,
			centerMode : true,
		});
		$(".vertical").slick({
			dots : true,
			vertical : true,
			slidesToShow : 3,
			slidesToScroll : 3
		});
		$(".regular").slick({
			dots : true,
			infinite : true,
			slidesToShow : 3,
			slidesToScroll : 3
		});
		$(".center").slick({
			dots : true,
			infinite : true,
			centerMode : true,
			slidesToShow : 5,
			slidesToScroll : 3
		});
		$(".variable").slick({
			dots : true,
			infinite : true,
			variableWidth : true
		});
		$(".lazy").slick({
			lazyLoad : 'ondemand', // ondemand progressive anticipated
			infinite : true
		});
	});
</script>
<style type="text/css">
#wrap {
	margin: 0px auto;
	width: 1200px;
}

a {
	text-decoration: none;
	color: #000000
}

a:hover {
	text-decoration: none;
	color: #3f0085;
}

.logo {
	font-family: 'Lucida', serif;
	font-size: 30px;
	color: #2f2f2f;
	margin-left: 35px;
}

#logo {
	margin-top: 8px;
}

#nav {
	margin-top: 60px;
	border-right: 1px solid #e3e3e3;
	width: 200px;
	float: left;
	height: 650px;
}

#nav li {
	list-style: none;
	font-size: 22px;
	padding: 10px;
}

.menubar {
	border: none;
	border: 0px;
	margin: 0px;
	padding: 0px;
	font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans",
		"Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica,
		sans-serif;
	font-size: 14px;
	font-weight: bold;
}

.menubar ul {
	background: #E0E0E0;
	height: 50px;
	list-style: none;
	margin: 0;
	padding: 0;
}

.menubar li {
	float: left;
	padding: 0px;
}

.menubar li a {
	background: E0E0E0;
	color: #cccccc;
	display: block;
	font-weight: normal;
	line-height: 50px;
	margin: 0px;
	padding: 0px 25px;
	text-decoration: none;
}

#log_out {
	width: 154px;
}

.menubar li a:hover, .menubar ul li:hover a {
	background: rgb(71, 71, 71);
	color: #000000;
	text-decoration: none;
}

.menubar li ul {
	background: E0E0E0;
	display: none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
	height: auto;
	padding: 0px;
	margin: 0px;
	border: 0px;
	position: absolute;
	width: 154px;
	color: #ffffff;
	z-index: 200;
	text-align: center;
	/*top:1em;
/*left:0;*/
}

.menubar li:hover ul {
	display: block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
}

.menubar li li {
	background: E0E0E0;
	display: block;
	float: none;
	margin: 0px;
	padding: 0px;
	width: 200px;
	display: block;
}

.menubar li:hover li a {
	background: none;
}

.menubar li ul a {
	display: block;
	height: 50px;
	font-size: 12px;
	font-style: normal;
	margin: 0px;
	padding: 0px 10px 0px 15px;
	text-align: center;
	margin: 0px;
}

.menubar li ul a:hover, .menubar li ul li:hover a {
	background: rgb(71, 71, 71);
	border: 0px;
	text-decoration: none;
	color: #ffffff;
}

#hello {
	width: 100%;
	height: 60px;
}

#hr {
	wdith: 100%;
}

#title {
	float: right;
	wdith: 200px;
}

#current {
	color: #000000;
}

#current:hover {
	color: #ffffff;
}

#contents {
	min-height: 1000px;
}

#footer {
	border-top: 1px solid #e0e0e0;
	height: 150px;
	text-align: center;
	padding-top: 35px;
	padding-left: 15px;
}

html, body {
	margin: 0;
	padding: 0;
}

* {
	box-sizing: border-box;
}

.slider {
	width: 80%;
	margin: 100px auto;
}

.slick-slide {
	margin: 0px 20px;
}

.slick-slide img {
	width: 100%;
}

.slick-prev:before, .slick-next:before {
	color: black;
}

.slick-slide {
	transition: all ease-in-out .3s;
	opacity: .2;
}

.slick-active {
	opacity: .5;
}

.slick-current {
	opacity: 1;
}

#content {
	min-height: 800px;
}

#NoticeBox {
	background-color: #E0E0E0;
	width: 450px;
	height: 300px;
	margin-top: 50px;
	margin-top: 50px;
	margin-left: 100px;
	margin-bottom: 50px;
	float: left;
}

#QuestionBox {
	background-color: #E0E0E0;
	width: 450px;
	height: 300px;
	margin-top: 50px;
	margin-top: 50px;
	margin-right: 100px;
	margin-bottom: 50px;
	float: right;
}

#box {
	margin: 20px;
	padding: 0;
}

.NoticeDate {
	text-align: right;
	
}

.Notice {
	width: 300px;
}
.QuestionDate {
	text-align: right;
	
}

.Question {
	width: 300px;
}

#footer {
	height: 5px;
	bottom: 0;
	left: 0;
	right: 0;
}
</style>
</head>
<body>
	<div id="wrap">

		<div id="header">

			<div class="menubar">

				<ul>
					<li id="logo"><span class=logo>BILRIM:빌림</span></li>
					<li style="float: right"><a href="#" id="current"
						onmouseover="this.style.color='#ffffff'"
						onmouseout="this.style.color='#000000'">송재원 대표님 ▼</a>
						<ul>
							<li id="log_out"><a href="#"
								onmouseover="document.getElementById('current').style.color='#ffffff'"
								onmouseout="document.getElementById('current').style.color='#000000'">로그아웃</a></li>
						</ul></li>
				</ul>
			</div>

			
		</div>
		<div id="hello">
			<h1 style=""><span id="title">안녕하세요 대표님</span></h1>
		</div>
		<hr id="hr">
	
		


		<div id="content">
		

			<div style="font-size: 25px; font-style: bold;">원하시는 업무 클릭 해주세요		</div>
			
			<div id="slide_menu" style="background-color: #E1E1E1">
				<section class="regular slider">
					<div>
						<a href="http://localhost:8080/group2_sws_prj/member/member_list.html"><img src="http://localhost:8080/group2_sws_prj/common/img/m_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=2">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=3">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=4">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=5">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=6">
					</div>
					<div>
						<img src="http://placehold.it/350x300?text=7">
					</div>
				</section>
			</div>


			<div id="NoticeBox">

				<div id="box">
					<p style="font-size: 20px; font-weight: bold">공지사항</p>
					<p style="text-align: right">
						<a style="text-align: right" href="">+더보기</a>
					</p>

					<table>
						<tr>
							<td class="Notice">[공지] 더욱 새로워진 빌림</td>
							<td class="NoticeDate">2018-08-27</td>
						</tr>
						


					</table>

				</div>

			</div>
			<div id="QuestionBox">

				<div id="box">
					<p style="font-size: 20px; font-weight: bold">문의사항</p>
					<p style="text-align: right">
						<a style="text-align: right">+더보기</a>
					</p>

					<table>
						<tr>
							<td class="Question">배송은 언제 될까요?</td>
							<td class="QuestionDate">2018-08-27</td>
						</tr>
					</table>

				</div>

			</div>


		</div>

		
	</div>
	<div id="footer">&copy;2018 BILRIM Designed by GroupTwo</div>

</body>
</html>



