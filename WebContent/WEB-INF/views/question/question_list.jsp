<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 관리 </title>
<%@ include file="../main/header.jsp" %>

<!--  CDN -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<script type="text/javascript">


</script>

<!-- nav css -->
<link href="http://localhost:8080/group2_sws_prj/common/css/nav_frm.css" rel="stylesheet" type="text/css" />

<style type="text/css">

table{
border-top:1px solid #333;
margin:35px auto;
border-bottom:1px solid #333;
}
tr{
	height:38px;
}
th{border-bottom: 1px solid #333;}
td{
text-align:center;
}
.title{
text-align:center;
}
#num{
width:50px;
}
#emp_num{
width:150px;
}
#name{
width:250px;
}
#position{
width:200px;
}
#input_date{
width:130px;
}

#add,#upd,#del{
width:65px;
height:30px;
float:right;
margin-right:10px;
}

#btn_wrap{
	margin-top:10px;
	margin-right:45px;
}
#list_page_wrap{
	text-align: center;
	}
</style>
</head>
<body>
	<div id="wrap">

		
		<div id="contents">
			<%@ include file="../main/nav.jsp" %> <!-- //목차 -->




			<div id="content">
			<div id="content_title"><strong>문의 사항</strong></div>
				<div id="tecket_list_wrap">
					<table id="tecket_surface_table">
						<tr>
							<th id="q_num">글번호</th>
							<th id="q_name">문의 종류</th>
							<th id="q_id">ID</th>
							<th id="q_title">제목</th>
							<th id="q_date">문의 날짜</th>
							<th id="q_flag">답변 여부</th>
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
	</div>
	<div id="footer">
	&copy;2018 BILRIM Designed by GroupTwo
	</div>

</body>
</html>

