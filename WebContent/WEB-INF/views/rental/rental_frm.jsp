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
			<%@ include file="../main/nav.jsp" %> <!-- //목차 -->




			<div id="content">
			
			<div id="content_title"><strong>대여 관리</strong></div>
				<div id="tecket_info_wrap">
				
				<table id="rantal_info_tab">
					<tr>
						<td>	
							<table id="info_left_tab">
								<tr>
								<td colspan="4" id="tab_title">대여 정보</td>
								</tr>
								<tr>
								<td class="img_td"><img src=""/></td>
								<td class="img_td"><img src=""/></td>
								<td class="img_td"><img src=""/></td>
								<td class="img_td"><img src=""/></td>
								</tr>
								<tr>
								<td colspan="4">상품 정보<br><textArea id="product_info">기본정보</textArea></td>
								</tr>
								<tr>
								<td colspan="4">상품 설명<br><textarea id="detail_info">상세설명</textarea></td>
								</tr>
							</table>
						</td>
						<td>
						<table id="info_right_tab">
								<tr>
								<td rowspan="2" class="td_title">카테고리</td>
								<td>시계</td>
								
								<tr>
								<td>메탈시계</td>
								</tr>
								<tr>
								<td class="td_title">브랜드명</td>
								<td>BALENCIAGA</td>
								</tr>
								<tr>
								<td class="td_title">상품명</td>
								<td>다크 그레이 클래식 시티백</td>
								</tr>
								<tr>
								<td class="td_title">대여자</td>
								<td>park(MEM0000003)</td>
								</tr>
								<tr>
								<td class="td_title">대여날짜</td>
								<td>준비중</td>
								</tr>
								<tr>
								<td class="td_title">반납날짜</td>
								<td>배송 시작일 부터 7일</td>
								</tr>
								<tr>
								<td class="td_title">상태</td>
								<td>대기 중</td>
								</tr>
								<tr>
								<td class="td_title">송장번호</td>
								<td><input type="text" id="tracking_number"name="tracking_number" class="inputBox"></td>
								
								</tr>
							</table>
						</td>
					</tr>
				</table>
				
					<div id="btn_wrap">
					<input type="button" id="btn_email" value="이메일" class="btn">
					<input type="button" value="반납" name="return_prd" id="return_prd" class="btn"/>
					<input type="button" value="배송" name="rental_prd" id="rental_prd" class="btn"/>
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


