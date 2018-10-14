<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
function fnCngList(sVal){
    var f = document.form1;
    var opt = $("#ctg_nm option").length;
 
    if(sVal == "") {
        num = new Array("선택");
        vnum = new Array("");
    }else if(sVal == "1") {

        num = new Array("tote","shoulder","cross");
        vnum = new Array("1","2","3");
    }else if(sVal == "2") {
        num = new Array("necklace","bracelet","watch");
        vnum = new Array("4","5","6");
    }else if(sVal == "3") {
        num = new Array("long","short","card");
        vnum = new Array("7","8","9");
    }
 
    for(var i=0; i<opt; i++) {
        f.SDIV.options[0] = null;
    }
 
    for(k=0;k < num.length;k++) {
        f.SDIV.options[k] = new Option(num[k],vnum[k]);
    }
}


$(document).ready(function(){
    // 상품 수정 버튼 클릭이벤트
    $("#editBtn").click(function(){
        var productName = $("#productName").val();
        var productPrice = $("#productPrice").val();
        var productDesc = $("#productDesc").val();
        // 상품 수정 폼 유효성 검사
        if(productName == "") {
            alert("상품명을 입력해주세요");
            productName.foucs();
        } else if (productPrice == "") {
            alert("상품 가격을 입력해주세요");
            productPrice.focus();
        } else if (productDesc == "") {
            alert("상품 설명을 입력해주세요");
            productDesc.focus();
        }
        document.form1.action = "${path}/group2_sws_prj/p_insert.do";
        document.form1.submit();
    });
    // 상품 삭제 버튼 클릭이벤트
    $("#deleteBtn").click(function(){
        // 상품 삭제 확인
        if(confirm("상품을 삭제하시겠습니까?")){
            document.form1.action = "${path}/shop/product/delete.do";
            document.form1.submit();
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
			
				<%@ include file="../main/nav.jsp" %>
			



			<div id="content">
			<div id="content_title"><strong>상품 입력</strong></div>
<form id="form1" name="form1" enctype="multipart/form-data" method="post">
    <table border="">
        <tr>
            <td>
                <img src="${path}/images/${p_info.pImg}" height="150px" width="150px">
                <img src="${path}/images/${p_info.pImg2}" height="150px" width="150px">
                <img src="${path}/images/${p_info.pImg3}" height="150px" width="150px">
                <img src="${path}/images/${p_info.pImg4}" height="150px" width="150px">
                <br>
                
                <input type="file" id="productPhoto" name="productPhoto">
            
             </td>
                
        </tr>
        <tr>
            <td>
            상품명 : <input type="text" name="pName" id="pName"/> | 
            가격 : <input type="text" name="pPrice" id="pPrice"/> | 
            </td>
            </tr>
            <tr>
            <td>
            렌탈 가 : <input type="text" name="pRfee" id="pRfee"/> | 
            수량 : <input type="text" name="pCount" id="pCount"/> | 
                  
             </td>
             
        </tr>
        <tr>
        <td>
       	 카테고리 
       	 <select name="BDIV" id="ctg" class="sel_cate" onchange="fnCngList(this.value);">
            <option value="">선택</option>
            <option value="1">bag</option>
            <option value="2">watch & accessories</option>
            <option value="3">wallet</option>
             
        </select>
        <select name="SDIV" id="ctg_nm" class="sel_list">
            <option value="">선택</option>

        </select>


       	 </td> 
        </tr>
        
        
        <tr>
            <td colspan="2" align="center">
                <input type="button" id="editBtn" value="등록">
                <a href="${path}/group2_sws_prj/product.do"><input type="button" id="deleteBtn"value="취소" ></a>
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


