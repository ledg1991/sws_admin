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
			<%@ include file="../main/nav.jsp" %> <!-- //목차 -->



			<div id="content">
			
				<h1> 관리자 정보</h1>
				

				<div id="profilebox">

					<div id="box">


						<table class="tg">
							<tr>
								<th id="photo" colspan="5" rowspan="5"></th>
								<th class="white" rowspan="5"></th>
								<td class="tg-0pky" colspan="2">사원 번호</td>
								<td class="tg-0pky" colspan="2"> mem0001</td>
								<th class="white" rowspan="5"></th>
								<th class="white" rowspan="5"></th>
								<td class="tg-0pky" colspan="2">상세정보</td>
								<td class="tg-0pky" colspan="2"></td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">ID</td>
								<td class="tg-0pky" colspan="2">kyeong</td>
								<td class="tg-0pky" colspan="2">주거지</td>
								<td class="tg-0pky" colspan="2">경기도 구리시 안창동</td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">성명</td>
								<td class="tg-0pky" colspan="2">경제현</td>
								<td class="tg-0pky" colspan="2">전화</td>
								<td class="tg-0pky" colspan="2">010-3333-2222</td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">입사일</td>
								<td class="tg-0pky" colspan="2">20180627</td>
								<td class="tg-0pky" colspan="2">E-mail</td>
								<td class="tg-0pky" colspan="2">economy@cc.com</td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">권한</td>
								<td class="tg-0pky" colspan="7">
								<input type="radio" name="authority" value="회원관리" checked="checked"/><label>회원관리</label>
								<input type="radio" name="authority" value="문의관리"/><label>문의관리</label>
								<input type="radio" name="authority" value="상품관리"/><label>상품관리</label><br>
								<input type="radio" name="authority" value="대여관리"/><label>대여관리</label>
								<input type="radio" name="authority" value="이용권관리"/><label>이용권관리</label>
								<input type="radio" name="authority" value="공지사항"/><label>공지사항</label> &nbsp;
								<input type="button" id="authority_update" value="권한수정" class="btn">
								</td>
							</tr>
						</table>

					</div>

				</div>


			<div id="managebutton">
			<input type="button" value="관리자 삭제"/> 
			<input type="button" value="목록으로"/>
			</div>
		</div>
	</div>
	</div>
	<div id="footer">
	&copy;2018 BILRIM Designed by GroupTwo
	</div>

</body>
</html>


