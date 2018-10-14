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
			<div id="content_title"><strong>문의 사항</strong></div>
				<div id="tecket_list_wrap">
					<table id="tecket_surface_table">
						<thred><tr>
							<th id="q_num">글번호</th>
							<th id="q_id">ID</th>
							<th id="q_name">문의 종류</th>
							<th id="q_title">제목</th>
							<th id="q_date">문의 날짜</th>
							<th id="q_flag">답변 여부</th>
						</tr></thred>
						 <tbody>
						 
                        <c:forEach items="${i_list}" var="inquiry">
                        <c:set var="count" value="${count+1}"/>
                            <tr>
                            
                            	<td><c:out value="${count}"/></td>
                            
                                <td>${inquiry.mId}</td>
                                <td>${inquiry.iType}</td>
                                <td><a href="${path}/group2_sws_prj/answer.do?mNumber=${inquiry.iNumber}">${inquiry.iTitle}</a></td>
                                <td>${inquiry.iDate}</td>
                                <td>                                
                                <c:set var="status" value="${inquiry.iCheck}" />
							<c:choose> <c:when test="${status eq '0'}">  답변 대기중   </c:when>
						    <c:otherwise>    답변    </c:otherwise> </c:choose> </td>
                            </tr>
                        </c:forEach>
                        </tbody>
					</table>
					<div id="list_page_wrap">
					<a href="#">&lt;</a><strong><a href="#">1</a></strong> <a href="#">2</a> <a href="#">3</a> <a href="#">></a>
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


