<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원관리</title>
<!--   -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">

</script>
<!-- nav css -->
<link href="http://localhost:8080/group2_sws_prj/common/css/nav_frm.css" rel="stylesheet" type="text/css" />

<!--  -->
<style type="text/css">
table{
border-top:1px solid #333;
margin-top:35px;
margin-left:70px;
border-bottom:1px solid #333;
}
tr{
	height:38px;
}
th{border-bottom: 1px solid #333;}
td{
text-align:center;
}
#q_num{
width:50px;
}
#q_name{
width:100px;
}
#q_id{
width:100px;
}
#q_title{
width:400px;

}
#input_date{
width:150px;
}
#add,#upd,#del{
width:65px;
height:30px;
float:right;
margin-right:10px;
}

#btn_wrap{
	margin-top:10px;
	margin-right:75px;
}
#list_page_wrap{
	text-align: center;
	}
</style>
</head>
<body>
	<div id="wrap">

		<div id="header">

			<div class="menubar">

				<ul>
					<a href="http://localhost:8080/group2_sws_prj/main/main.html"><li id="logo"><span class=logo>BILRIM:빌림</span></li></a>
					<li style="float: right"><a href="#" id="current" onmouseover="this.style.color='#ffffff'"onmouseout="this.style.color='#000000'" >송재원 대표님 ▼</a>
						<ul>
							<li id="log_out"><a href="#"onmouseover="document.getElementById('current').style.color='#ffffff'"onmouseout="document.getElementById('current').style.color='#000000'">로그아웃</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<!-- contents -->
		<div id="contents">
			<!-- nav -->
			<div id="nav">
				<ul>
					<li><a href="http://localhost:8080/group2_sws_prj/member/member_list.html">회원 관리</a></li>
					<li><a href="http://localhost:8080/group2_sws_prj/question/question_list.html">문의 관리</a></li>
					<li><a href="http://localhost:8080/group2_sws_prj/product/product_list.html">상품 관리</a></li>
					<li><a href="http://localhost:8080/group2_sws_prj/rental/rental_list.html">대여 관리</a></li>
					<li><a href="http://localhost:8080/group2_sws_prj/ticket/ticket_list.html">이용권 관리</a></li>
					<li><a href="http://localhost:8080/group2_sws_prj/admin/admin_list.html">관리자 관리</a></li>
					<li><a href="http://localhost:8080/group2_sws_prj/notice/notice_list.html">공지 사항</a></li>
				</ul>
			</div>
			<!-- content -->
			<div id="content">
			<div id="content_title"><strong>회원 목록</strong></div>
				<div id="tecket_list_wrap">
					<table id="tecket_surface_table">
						<tr>
							<th id="q_num">회원 번호</th>
							<th id="q_id">ID</th>
							<th id="q_id">성 명</th>
							<th id="q_title">E-mail</th>
							<th id="q_date">가입 날짜</th>
							<th id="q_flag">상태</th>
						</tr>
						<tr>
							<td>1</td>
							<td>kyong</td>
							<td>이동근</td>
							<td ><a href="#">[FAQ]제품을 분실하면 어떻게 해야하나요</a></td>
							<td>2018-09-18</td>
							<td>답변</td>
						</tr>
						<tr>
							<td>1</td>
							<td>대여</td>
							<td>kyong</td>
							<td ><a href="#">[FAQ]제품을 분실하면 어떻게 해야하나요</a></td>
							<td>2018-09-18</td>
							<td>답변</td>
						</tr>
						<tr>
							<td>1</td>
							<td>대여</td>
							<td>kyong</td>
							<td ><a href="#">[FAQ]제품을 분실하면 어떻게 해야하나요</a></td>
							<td>2018-09-18</td>
							<td>답변</td>
						</tr>
						
					</table>
					<div id="list_page_wrap">
					<a href="#">&lt;</a><strong><a href="#">1</a></strong> <a href="#">2</a> <a href="#">3</a> <a href="#">></a>
					</div>
					<div id="searchID" style="text-align: right;margin-top: 20px">
			<form action="" method="post" name="searchFrm"	id="searchFrm">
				
				<input type="text" name="keyword" class="inputBox"
					style="width:200px" id="keyword" value="ID로 검색"/>
				<input type="button" value="검색" id="btnSearch" class="btn"/>
			</form>
		</div>
					
					
				</div>
			</div>
		</div>
		<div id="footer">
		&copy;2018 BILRIM Designed by GroupTwo
		</div>
	</div>
	
</body>
</html>





