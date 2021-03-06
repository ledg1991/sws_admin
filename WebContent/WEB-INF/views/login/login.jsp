<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인</title>
<!--CDN-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $("#btnLogin").click(function(){
        // 태크.val() : 태그에 입력된 값
        // 태크.val("값") : 태그의 값을 변경 
        var userId = $("#userId").val();
        var userPw = $("#userPw").val();
        if(userId == ""){
            alert("아이디를 입력하세요.");
            $("#userId").focus(); // 입력포커스 이동
            return; // 함수 종료
        }
        if(userPw == ""){
            alert("비밀번호를 입력하세요.");
            $("#userPw").focus();
            return;
        }
        // 폼 내부의 데이터를 전송할 주소
        document.form1.action="${path}/group2_sws_prj/loginCheck.do" // git 내려받기 후 에러 날때 메이븐 전체 삭제 후 다시 받고 여기 위치 수정
        // 제출
        document.form1.submit();
    });
});
</script>
<style type="text/css">
.logo 
{
	font-family: 'Lucida', serif;
	font-size: 50px;
	color: #2f2f2f;
}
</style>
</head>
<body>

	<div style="text-align:center; margin-top:10%;" >
	
	
	<h1 class=logo>BILRIM:빌림</h1>
	<form id="form1" name="form1" method="post" >
	ID
	<input type="text" name="userId" id="userId" style="ime-mode:disabled;"></td>
	<p/>
	PW
	<input type="password" name="userPw" id="userPw"/>
	<p/>
	<input type="button"  value="로그인" id="btnLogin"/>
	
	
	
	  <c:if test="${msg == 'fail'}">
                    <div style="color: red">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
       </c:if>
       
       <c:if test="${msg == 'logout'}">
                    <div style="color: red">
                        로그아웃되었습니다.
                    </div>
                </c:if>
                
       <c:if test="${msg == 'required'}">
                    <div style="color: red">
                        로그인이 필요합니다.
                    </div>
                </c:if>
                </form>
	</div>
	

<hr>


</body>
</html>