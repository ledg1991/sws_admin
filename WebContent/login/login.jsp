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
        // ��ũ.val() : �±׿� �Էµ� ��
        // ��ũ.val("��") : �±��� ���� ���� 
        var userId = $("#userId").val();
        var userPw = $("#userPw").val();
        if(userId == ""){
            alert("���̵� �Է��ϼ���.");
            $("#userId").focus(); // �Է���Ŀ�� �̵�
            return; // �Լ� ����
        }
        if(userPw == ""){
            alert("��й�ȣ�� �Է��ϼ���.");
            $("#userPw").focus();
            return;
        }
        // �� ������ �����͸� ������ �ּ�
        document.form1.action="${path}/admin/loginCheck.do"
        // ����
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
	
	
	<h1 class=logo>BILRIM:����</h1>
	ID
	<input name="userId" id="userId"></td>
	<p/>
	PW
	<input type="password" value="" title="pass"/>
	<p/>
	<input type="button"  onclick="location.href='main.html'" value="�α���" />
	
	</div>

<hr>


</body>
</html>