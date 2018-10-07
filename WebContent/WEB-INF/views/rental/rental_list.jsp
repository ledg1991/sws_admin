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
#search_wrap{
margin-top:20px;
text-align: center;
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
			<div id="content_title"><strong>대여 관리</strong></div>
			<div id="search_wrap">
				<span id="brand">브랜드 명 <input type="search" id="srh_brand"/><input type="button" id="btn_brand" value="검색" class="btn"/></span>
				<span id="product">상품 명 <input type="search" id="srh_product"/><input type="button" id="btn_product" value="검색" class="btn"/></span>
				<span id="status">상태 <select id="srh_status">
					<option value="standBy">대기 중</option>
					<option value="rentaling">대여 중</option>
					<option value="return">반납</option>
				</select>
				</span>
			</div>
				<div id="rental_list_wrap">
					<table id="rental_surface_table">
						<tr>
							<th id="brand_name">브랜드 명</th>
							<th id="product_name">상품명</th>
							<th id="status">상태</th>
							<th id="rental_date">대여기간</th>
						</tr>
						<tr>
							<td>Rolex</td>
							<td class="title"><a href="#">Rolex oyster perpetual DAY-DATE</a></td>
							<td>대여 중</td>
							<td>2018-08-28 ~ 2018-09-04</td>
						</tr>
						<tr>
							<td>LOUIS VUITTON</td>
							<td class="title"><a href="#">락미 II BB백(M54576)</a></td>
							<td>대여 중</td>
							<td>2018-07-03 ~ 2018-07-07</td>
						</tr>
						<tr>
							<td>FENDI</td>
							<td class="title"><a href="#">마이크로 피카부 백(8M0355)</a></td>
							<td>대여 중</td>
							<td>2018-07-07 ~ 2018-07-15</td>
						</tr>
						<tr>
							<td>BALENCIAGA</td>
							<td class="title"><a href="#">다크 그레이 클래식 시티 백</a></td>
							<td>대기 중</td>
							<td>배송 시작일 부터 7일</td>
						</tr>
						<tr>
							<td>PRADA</td>
							<td class="title"><a href="#">레드 사피아노 갤러리아 백(1BA896)</a></td>
							<td>대여 중</td>
							<td>2018-07-04 ~ 2018-07-07</td>
						</tr>
					</table>
					<div id="list_page_wrap">
					<a href="#">&lt;</a><strong><a href="#">1</a></strong> <a href="#">2</a> <a href="#">3</a> <a href="#">></a>
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


