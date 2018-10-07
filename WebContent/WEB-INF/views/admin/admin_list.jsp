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
			
				<div id="content_title"><strong>관리자 관리</strong></div>
				<div id="tecket_list_wrap">
					<table id="tecket_surface_table">
						<tr>
							<th id="num">순번</th>
							<th id="emp_num">사원번호</th>
							<th id="name">이름</th>
							<th id="position">직급</th>
							<th id="input_date">입사일</th>
						</tr>
						<tr>
							<td>1</td>
							<td>18-000001</td>
							<td class="title"><a href="#">송재원</a></td>
							<td>대표이사</td>
							<td>2018-09-10</td>
						</tr>
						<tr>
							<td>2</td>
							<td>18-000002</td>
							<td class="title"><a href="#">이동근</a></td>
							<td>털관리부부장</td>
							<td>2018-09-11</td>
						</tr>
						<tr>
							<td>3</td>
							<td>18-000003</td>
							<td class="title"><a href="#">강소예</a></td>
							<td>대리</td>
							<td>2018-09-12</td>
						</tr>
						<tr>
							<td>4</td>
							<td>18-000004</td>
							<td class="title"><a href="#">박지영</a></td>
							<td>차장</td>
							<td>2018-09-13</td>
						</tr>
						<tr>
							<td>5</td>
							<td>18-000005</td>
							<td class="title"><a href="#">경제현</a></td>
							<td>털관리부사원</td>
							<td>2018-09-14</td>
						</tr>
					</table>
					


			<div id="list_page_wrap">
					<a href="#">&lt;</a><strong><a href="#">1</a></strong> <a href="#">2</a> <a href="#">3</a> <a href="#">></a>
					</div>
					<div id="btn_wrap">
					<input type="button" onclick="location.href='${path}/group2_sws_prj/admin_insert.do'"  value="추가" name="add" id="add" />
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


