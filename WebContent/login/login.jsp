<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�α���</title>
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
	<input type="text" name="userId" id="userId" style="ime-mode:disabled;"></td>
	<p/>
	PW
	<input type="password" name="userPw" id="userPw"/>
	<p/>
	<input type="button"  value="�α���" id="btnLogin"/>
	
	  <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        ���̵� �Ǵ� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.
                    </div>
                </c:if>
	
	</div>

<hr>


</body>
</html>