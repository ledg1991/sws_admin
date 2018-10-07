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
				</div> <!-- nav 종료 -->



			<div id="content">
			<div id="content_title"><strong>이용권 관리</strong></div>
				<div id="ticket_list_wrap">
					<table id="ticket_surface_table">
						<tr>
							<th id="v_num">순번</th>
							<th id="v_name">이름</th>
							<th id="v_category">구분</th>
							<th id="v_price">가격</th>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="#">3개월 월 5회 이용권</a></td>
							<td>월단위 이용권</td>
							<td>\189,500</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="#">5개월 월 6회 이용권</a></td>
							<td>월단위 이용권</td>
							<td>\380,000</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="#">7개월 월 7회 이용권</a></td>
							<td>월단위 이용권</td>
							<td>\528,000</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="#">12개월 월 10회 이용권</a></td>
							<td>월단위 이용권</td>
							<td>\985,950</td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href="#">24개월 월 12회 이용권</a></td>
							<td>월단위 이용권</td>
							<td>\1,883,890</td>
						</tr>
					</table>
					<div id="list_page_wrap">
					<a href="#">&lt;</a><strong><a href="#">1</a></strong> <a href="#">2</a> <a href="#">3</a> <a href="#">></a>
					</div>
					<div id="btn_wrap">
					<input type="button" value="추가" name="add" id="add"/>
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



