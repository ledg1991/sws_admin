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

#email_content{
margin:3px;
width:800px;
height:400px;
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
					<li><a href="${path}/group2_sws_prj/member.do">회원 관리</a></li>
					<li><a href="${path}/group2_sws_prj/question.do">문의 관리</a></li>
					<li><a href="${path}/group2_sws_prj/product.do">상품 관리</a></li>
					<li><a href="${path}/group2_sws_prj/rental.do">대여 관리</a></li>
					<li><a href="${path}/group2_sws_prj/ticket.do">이용권 관리</a></li>
					<li><a href="${path}/group2_sws_prj/admin.do">관리자 관리</a></li>
					<li><a href="${path}/group2_sws_prj/notice.do">공지 사항</a></li>
					</ul>
			</div>



			<div id="content">
			
				<div id="content_title"><strong>이메일 보내기</strong></div>
				<div id="email_wrap">
					<table id="email_surface_table">
						<tr>
						<td class="tab_title">제목</td>
						<td><input type="text" id="title_inputBox" value="제목을 입력해주세요" class="inputBox" style="width:500px;"/></td>
						</tr>
						<tr>
						<td class="tab_title">작성자</td>
						<td><input type="text" id="title_inputBox" value="송재원" class="inputBox" readonly="readonly" style="width:500px;"/></td>
						</tr>
						<tr class="tab_title">
						<td>받는 사람</td>
						<td><input type="text" id="title_inputBox" value="kyeong(MEM0000001)" class="inputBox" readonly="readonly" style="width:500px;"/></td>
						</tr>
						<tr>
						<td colspan="2" ><textarea id="email_content">내용을 입력해주세요</textarea></td>
						</tr>
						<tr>
						<td colspan="2" id="button_td"><input type="submit" value="보내기"/><input type="button" value="취소"/></td>
						</tr>
					</table>
				</div>
			</div>
			</div>
	</div>
	<div id="footer">
	&copy;2018 BILRIM Designed by GroupTwo
	</div>

</body>
</html>


