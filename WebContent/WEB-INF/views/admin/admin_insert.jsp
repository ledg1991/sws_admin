<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 등록 </title>
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
margin:35px auto;

}
tr{
	height:38px;
}
th{
text-align:left;
width:125px;
}
td{
padding-left:15px;
}
#e_name{
	width:170px;
}
#e_num1{
	width:50px;
}
#e_num2{
	width:110px;
}
#e_authority{
	height: 26px;
}
.inputBox{
	height: 18px;
}
.btn{
width:65px;
height:25px;
margin-right:10px;
}

#btn_wrap{
	text-align:center;
	margin-top:50px;
	margin-right:45px;
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
			</div>



			<div id="content">
			
				<div id="content_title"><strong>관리자 등록</strong></div>
				<div id="tecket_info_wrap">
					<table>
						<tr>
							<th>사원아이디</th>
							<td><input type="text" id="e_id"name="e_id"class="inputBox"readonly="readonly">&nbsp; <input type="button" id="id_check" value="중복확인"class="btn"/></td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td><input type="password" id="e_pass"name="e_pass"class="inputBox"></td>
						</tr>
						<tr>
							<th>비밀번호 확인</th>
							<td><input type="password" id="e_pass_check"name="e_pass_check"class="inputBox"></td>
						</tr>
						<tr>
							<th>사원명</th>
							<td><input type="text" id="e_name"name="e_name"class="inputBox"></td>
						</tr>
						<tr>
							<th>사원번호</th>
							<td><input type="text" id="e_num1"name="e_num1"class="inputBox">-<input type="text" id="e_num2"name="e_num2"class="inputBox"></td>
						</tr>
						<tr>
							<th>프로필 이미지</th>
							<td><input type="file" id="e_img"name="e_img"></td>
						</tr>
						<tr>
							<th>권한</th>
							<td><select id="e_authority">
								<option value="none">=======권한선택======</option>
								<option value="1">회원 관리</option>
								<option value="2">문의 관리</option>
								<option value="3">상품 관리</option>
								<option value="4">대여 관리</option>
								<option value="5">공지 사항</option>
							</select></td>
						</tr>
					</table>
					<div id="btn_wrap">
					<input type="button" id="btn_submit" value="확인" class="btn">
					<input type="button" id="btn_cancle" value="취소" class="btn">
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


