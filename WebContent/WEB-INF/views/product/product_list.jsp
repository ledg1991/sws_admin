<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
			<div id="content_title"><strong>상품 목록</strong></div>
				<h2>상품 목록</h2>
    <table border="1">
        <tr>
            <th>상품ID번호</th>
            <th>상품이미지</th>
            <th>상품명</th>
            <th>가격</th>
        </tr>
        <c:forEach var="row" items="${list}">
        <tr>
            <td>
                ${row.productId}
            </td>
            <td>
                <a href="${path}/shop/product/detail/${row.productId}">
                    <img src="${path}/images/${row.productUrl}" width="120ox" height="110px">
                </a>
            </td>
            <td>
                <a href="${path}/shop/product/detail/${row.productId}">${row.productName}</a>
            </td>
            <td>
                <fmt:formatNumber value="${row.productPrice}" pattern="###,###,###"/>
            </td>
        </tr>
        </c:forEach>
    </table>
			
		<div id="list_page_wrap">
					<a href="#">&lt;</a><strong><a href="#">1</a></strong> <a href="#">2</a> <a href="#">3</a> <a href="#">></a>
					</div>
					<div id="btn_wrap">
					<input type="button" value="추가" name="add" id="add"/>
					</div>
					
		<div id="footer">
		&copy;2018 BILRIM Designed by GroupTwo
		</div>
	</div>
	</div>
	</div>
	<div id="footer">
	&copy;2018 BILRIM Designed by GroupTwo
	</div>

</body>
</html>


