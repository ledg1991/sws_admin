<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 상세 정보 </title>
<%@ include file="../main/header.jsp" %>

<!--  CDN -->
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>



<script type="text/javascript">
$(document).ready(function(){
    // 상품 수정 버튼 클릭이벤트
    $("#stopBtn").click(function(){
        
        if (confirm("정말 삭제하시겠습니까??") == true){ 
        	
        	document.form1.action = "${path}/group2_sws_prj/m_stop.do";
            document.form1.submit();
        }else{   //취소
            return;
        }



        
        
    });
    
    
    
});
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
			
				<div id="content_title"><strong>회원 상세 정보</strong></div>
				

				<div id="profilebox">

					<div id="box">


						<table class="tg">
							<tr>
								<th id="photo" colspan="5" rowspan="5"></th>
								<th class="white" rowspan="5"></th>
								<td class="tg-0pky" colspan="2">회원 번호</td>
								<td class="tg-0pky" colspan="2"> <form id="form1" name="form1" enctype="multipart/form-data" method="post">${p_list.mNumber }</form> </td>
								<th class="white" rowspan="5"></th>
								<th class="white" rowspan="5"></th>
								<td class="tg-0pky" colspan="2">상세정보</td>
								<td class="tg-0pky" colspan="2">생일 : ${p_list.mBirth } 
								| 결혼 여부 :
								<c:set var="statusm" value=" ${p_list.mMarriage }" />

							<c:choose> <c:when test="${statusm eq '0'}">  미혼   </c:when>
							<c:when test="${statusm eq '1'}">  기혼   </c:when>
						    <c:otherwise>    미 기입    </c:otherwise> </c:choose>
						    | 성별 :
						    <c:set var="statusg" value=" ${p_list.mGender}" />
							<c:choose> <c:when test="${statusg eq '1'}">  남자   </c:when>
							<c:when test="${statusg eq '2'}">  여자   </c:when>
						    <c:otherwise>    미 기입    </c:otherwise> </c:choose>	
								
							  </td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">ID</td>
								<td class="tg-0pky" colspan="2">${p_list.mId }</td>
								<td class="tg-0pky" colspan="2">주거지</td>
								<td class="tg-0pky" colspan="2">주소 : ${p_list.mAddress } | 우편번호 : ${p_list.mZipcode}  </td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">성명</td>
								<td class="tg-0pky" colspan="2">${p_list.mName }</td>
								<td class="tg-0pky" colspan="2">전화</td>
								<td class="tg-0pky" colspan="2">${p_list.mPhone }</td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">가입일</td>
								<td class="tg-0pky" colspan="2">${p_list.mDate }</td>
								<td class="tg-0pky" colspan="2">E-mail</td>
								<td class="tg-0pky" colspan="2">${p_list.mEmail }</td>
							</tr>
							<tr>
								<td class="tg-0pky" colspan="2">상태</td>
								<td class="tg-0pky" colspan="2">
								<c:set var="status" value="${p_list.mStatus }" />

							<c:choose> <c:when test="${status eq '0'}">  정상    </c:when>
						    <c:otherwise>    정지    </c:otherwise> </c:choose>
								
								</td>
								<td class="tg-0pky" colspan="2"></td>
								<td class="tg-0pky" colspan="2"></td>
							</tr>
						</table>

					</div>

				</div>


				<h1>이용권 내역</h1>

				<div>




					<table
						style="margin: 0px auto; border-top: 2px solid #6093E7; border-spacing: 0px; width:964px">
						<thead>
							<tr style="height: 30px;">
								<th
									style="width: 60px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">번호</th>
								<th
									style="width: 300px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">이용권
									종류</th>
								<th
									style="width: 120px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">구매날짜</th>
								<th
									style="width: 150px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">사용기간</th>
								<th
									style="width: 180px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">이번월
									사용 횟수</th>
								<th
									style="width: 180px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">전체
									횟수</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="nv" items="${nameList }">
								<c:set var="i" value="${i+1 }" />
								<tr style="height: 30px;">
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${i }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">
										<a style="font-size: 15px; color: #333"
										href="nc_detail.do?cmd=NC_S001&nc_num=${nv.ncNum }&current_page=${ empty param.current_page?1:param.current_page }">
											<c:out value="${nv.company }" />
									</a>
									</td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.id }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.name }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.email }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.email }" /></td>
								</tr>
							</c:forEach>
							<c:if test="${empty nameList }">
								<tr>
									<td colspan="7"
										style="text-align: center; border-bottom: 1px solid #6093E7">
										이용권 사용 내역이 없습니다.<br />

									</td>
								</tr>
							</c:if>
						</tbody>
					</table>

				</div>



				<div>

					<h1>상품 대여 내역</h1>

					<table
						style="margin: 0px auto; border-top: 2px solid #6093E7; border-spacing: 0px; width:964px">
						<thead>
							<tr style="height: 30px;">
								<th
									style="width: 60px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">번호</th>
								<th
									style="width: 300px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">상품명</th>
								<th
									style="width: 120px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">대여날짜</th>
								<th
									style="width: 150px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">반납날짜</th>
								<th
									style="width: 180px; border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">상태</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="nv" items="${nameList }">
								<c:set var="i" value="${i+1 }" />
								<tr style="height: 30px;">
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${i }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;">
										<a style="font-size: 15px; color: #333"
										href="nc_detail.do?cmd=NC_S001&nc_num=${nv.ncNum }&current_page=${ empty param.current_page?1:param.current_page }">
											<c:out value="${nv.company }" />
									</a>
									</td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.id }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.name }" /></td>
									<td
										style="border-bottom: 1px solid #6093E7; vertical-align: middle; text-align: center;"><c:out
											value="${nv.email }" /></td>
								</tr>
							</c:forEach>
							<c:if test="${empty nameList }">
								<tr>
									<td colspan="7"
										style="text-align: center; border-bottom: 1px solid #6093E7">
										렌탈 사용 내역이 없습니다.<br />

									</td>
								</tr>
							</c:if>
						</tbody>
					</table>

				</div>

			</div>
			<div id="managebutton">
			<!-- <input type="button" value="이메일 보내기"> -->
			<!-- <input type="button" value="전체 이용권 내역"> -->
			<input type="button" id="stopBtn" name="stopBtn" value="회원 정지">
			<a href="${path}/group2_sws_prj/member.do"><input type="button" value="목록으로"></a>
			</div>
		</div>
	</div>
	<div id="footer">
	&copy;2018 BILRIM Designed by GroupTwo
	</div>

</body>
</html>


