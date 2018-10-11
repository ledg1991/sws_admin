<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
			<%@ include file="../main/nav.jsp" %> 




			<div id="content">
			
			<div id="content_title"><strong>이용권 관리</strong></div>
				<div id="tecket_info_wrap">
					<table>
						<tr>
							<th>이용권 명</th>
							<td><input type="text" id="v_name"name="v_name"class="inputBox"></td>
						</tr>
						<tr>
							<th>구분</th>
							<td><select id="v_category">
								<option value="none">=======종류선택======</option>
								<option value="v_shot">단기 이용권</option>
								<option value="v_long">장기 이용권</option>
							</select></td>
						</tr>
						<tr>
							<th>이미지</th>
							<td><input type="file" id="v_img"name="v_img"></td>
						</tr>
						<tr>
							<th>이용권 가격</th>
							<td><input type="text" id="v_price"name="v_price"class="inputBox">원</td>
						</tr>
						<tr>
							<th>이용권 설명</th>
							<td><textarea id="v_info">이곳에 이용권의 설명을 적어주세요</textarea></td>
						</tr>
					</table>
					<div id="btn_wrap">
					<input type="button" id="btn_submit" value="확인" class="btn">
					<input type="button" value="삭제" name="del" id="del" class="btn"/>
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


