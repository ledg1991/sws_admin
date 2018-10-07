<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인 메뉴</title>



<script type="text/javascript">
	
</script>
<style type="text/css">
#wrap {
	margin: 0px auto;
	width: 1200px;
}
#header {
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
#footer {
	border-top: 1px solid #e0e0e0;
	height: 100px;
	text-align: center;
	padding-top: 35px;
	
}

</style>
</head>
<body>
	

		<div id="header">

			<div class="menubar">

				<ul>
					<li id="logo"><span class=logo>BILRIM:빌림</span></li>
					<li style="float: right"><a href="#" id="current"
						onmouseover="this.style.color='#ffffff'"
						onmouseout="this.style.color='#000000'">송재원 대표님 ▼</a>
						<ul>
							<li id="log_out"><a href="${path}/group2_sws_prj/logout.do"
								onmouseover="document.getElementById('current').style.color='#ffffff'"
								onmouseout="document.getElementById('current').style.color='#000000'">로그아웃</a></li>
						</ul></li>
				</ul>
			</div>

			
		
		<div id="hello">
			<h1 style=""><span id="title">안녕하세요 대표님</span></h1>
		</div>
		<hr id="hr">
		</div>
	
		



</body>
</html>



