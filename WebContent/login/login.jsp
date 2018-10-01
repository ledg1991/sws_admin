<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
        document.form1.action="${path}/admin/loginCheck.do"
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
	ID
	<input name="userId" id="userId"></td>
	<p/>
	PW
	<input type="password" value="" title="pass"/>
	<p/>
	<input type="button"  onclick="location.href='main.html'" value="로그인" />
	
	</div>

<hr>


</body>
</html>