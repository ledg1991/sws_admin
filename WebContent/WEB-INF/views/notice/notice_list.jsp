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
					<li><a href="${path}/group2_sws_prj/member.do">회원 관리</a></li>
					<li><a href="${path}/group2_sws_prj/question.do">문의 관리</a></li>
					<li><a href="${path}/group2_sws_prj/product.do">상품 관리</a></li>
					<li><a href="${path}/group2_sws_prj/rental.do">대여 관리</a></li>
					<li><a href="${path}/group2_sws_prj/ticket.do">이용권 관리</a></li>
					<li><a href="${path}/group2_sws_prj/admin.do">관리자 관리</a></li>
					<li><a href="${path}/group2_sws_prj/notice.do">공지 사항</a></li>
					</ul>
				</div> <!-- nav 종료 -->



			<div id="content">
			<div id="content_title"><strong>공지 사항</strong></div>
				<div id="tecket_list_wrap">
					<table id="tecket_surface_table">
						<tr>
							<th id="notice_num">글번호</th>
							<th id="notice_name">제목</th>
							<th id="writer">작성자</th>
							<th id="input_date">작성일자</th>
						</tr>
						<tr>
							<td>1</td>
							<td class="title"><a href="#">[FAQ]제품을 분실하면 어떻게 해야하나요</a></td>
							<td>송재원</td>
							<td>2018-09-18</td>
						</tr>
						<tr>
							<td>2</td>
							<td class="title"><a href="#">[공지사항]주소 이전 안내</a></td>
							<td>강소예</td>
							<td>2018-09-13</td>
						</tr>
						<tr>
							<td>3</td>
							<td class="title"><a href="#">[공지사항]빌림의 규칙</a></td>
							<td>강소예</td>
							<td>2018-09-10</td>
						</tr>
						<tr>
							<td>4</td>
							<td class="title"><a href="#">[FAQ]연체되었을 시 유의사항은?</a></td>
							<td>박지영</td>
							<td>2018-09-05</td>
						</tr>
						<tr>
							<td>5</td>
							<td class="title"><a href="#">[공지사항]힘들때 쉬억가세요</a></td>
							<td>이동근</td>
							<td>2018-09-01</td>
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


