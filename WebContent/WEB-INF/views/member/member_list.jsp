<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 </title>
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
tr{ 	height:38px;
}
th{border-bottom: 1px solid #333;}
td{ text-align:center; }

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
			<div id="content_title"><strong>회원 목록</strong></div>
				<div id="member_list_wrap">
					<table id="member_table">
						
						 <thead>
						 <tr>
							<th id="q_num">회원 번호</th>
							<th id="q_id">ID</th>
							<th id="q_id">성 명</th>
							<th id="q_title">E-mail</th>
							<th id="q_date">가입 날짜</th>
							<th id="q_flag">상태</th>
						</tr>
						</thead>
						 <tbody>
                        <c:forEach items="${list}" var="memberVO">
                            <tr>
                                <td>${memberVO.mNumber}</td>
                                <td>${memberVO.mId}</td>
                                <td>${memberVO.mName}</td>
                                <td>${memberVO.mEmail}</td>
                                <td>${memberVO.mDate}</td>
                                <td>
                                
                                <c:set var="status" value="${memberVO.mStatus}" />

							<c:choose> <c:when test="${status eq '0'}">  정상    </c:when>
						    <c:otherwise>    정지    </c:otherwise> </c:choose> </td>
                            </tr>
                        </c:forEach>
                        </tbody>
					</table>
					<div id="list_page_wrap">
					</div>
					<div id="searchID" style="text-align: right;margin-top: 20px">
			<form action="" method="post" name="searchFrm"	id="searchFrm">
				
				<input type="text" name="keyword" class="inputBox"
					style="width:200px" id="keyword" value="ID로 검색"/>
				<input type="button" value="검색" id="btnSearch" class="btn"/>
			</form>
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


