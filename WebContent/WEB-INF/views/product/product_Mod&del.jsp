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
			<div id="content_title"><strong>상품 삭제&수정</strong></div>
<form id="form1" name="form1" enctype="multipart/form-data" method="post">
    <table border="">
        <tr>
            <td>상품 이미지</td>
            <td>
                <img src="${path}/images/${vo.productUrl}" height="150px" width="150px">
                <img src="${path}/images/${vo.productUrl}" height="150px" width="150px">
                <img src="${path}/images/${vo.productUrl}" height="150px" width="150px">
                <img src="${path}/images/${vo.productUrl}" height="150px" width="150px">
                <br>
                <input type="file" id="productPhoto" name="productPhoto">
            </td>
        </tr>
        <tr>
            <td>상품명</td>
            <td><input type="text" id="productName" name="productName" value="${vo.productName}"></td>
        </tr>
        <tr>
            <td>가격</td>
            <td><input type="number" id="productPrice" name="productPrice" value="${vo.productPrice}"></td>
        </tr>
        <tr>
            <td>상품소개</td>
            <td><textarea id="productDesc" name="productDesc" rows="5" cols="60">${vo.productDesc}</textarea></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="hidden" name="productId" value="${vo.productId}">
                <input type="button" id="editBtn" value="수정">
                <input type="button" id="deleteBtn"value="취소" onclick="location.href='http://localhost:8080/group2_sws_prj/product/product_list.html'">
            </td>
        </tr>
    </table>
</form>
			
			
			
			</div>
		</div>
	</div>
	<div id="footer">
	&copy;2018 BILRIM Designed by GroupTwo
	</div>

</body>
</html>


