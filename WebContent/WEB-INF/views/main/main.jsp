<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인 메뉴</title>
<%@ include file="header.jsp" %>

<!--  CDN -->
<!-- SmartMenus core CSS (required) -->
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/group2_sws_prj/common/css/slick.css">



<script src="https://code.jquery.com/jquery-2.2.0.min.js"
	type="text/javascript"></script>
<script src="http://localhost:8080/group2_sws_prj/common/js/slick.min.js"
	type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	$(document).on('ready', function() {
		$(".vertical-center-4").slick({
			dots : true,
			vertical : true,
			centerMode : true,
			slidesToShow : 4,
			slidesToScroll : 2
		});
		$(".vertical-center-3").slick({
			dots : true,
			vertical : true,
			centerMode : true,
			slidesToShow : 3,
			slidesToScroll : 3
		});
		$(".vertical-center-2").slick({
			dots : true,
			vertical : true,
			centerMode : true,
			slidesToShow : 2,
			slidesToScroll : 2
		});
		$(".vertical-center").slick({
			dots : true,
			vertical : true,
			centerMode : true,
		});
		$(".vertical").slick({
			dots : true,
			vertical : true,
			slidesToShow : 3,
			slidesToScroll : 3
		});
		$(".regular").slick({
			dots : true,
			infinite : true,
			slidesToShow : 3,
			slidesToScroll : 3
		});
		$(".center").slick({
			dots : true,
			infinite : true,
			centerMode : true,
			slidesToShow : 5,
			slidesToScroll : 3
		});
		$(".variable").slick({
			dots : true,
			infinite : true,
			variableWidth : true
		});
		$(".lazy").slick({
			lazyLoad : 'ondemand', // ondemand progressive anticipated
			infinite : true
		});
	});
</script>
<style type="text/css">


* {
	box-sizing: border-box;
}

.slider {
	width: 80%;
	margin: 50px auto;
}

.slick-slide {
	margin: 0px 20px;
}

.slick-slide img {
	width: 100%;
}

.slick-prev:before, .slick-next:before {
	color: black;
}

.slick-slide {
	transition: all ease-in-out .3s;
	opacity: .2;
}

.slick-active {
	opacity: .5;
}

.slick-current {
	opacity: 1;
}



#footer {
	border-top: 1px solid #e0e0e0;
	height: 100px;
	text-align: center;
	padding-top: 35px;
	
}

html, body {
	margin: 0;
	padding: 0;
}
#content {
	min-height: 800px;
}

#NoticeBox {
	background-color: #E0E0E0;
	width: 450px;
	height: 350px;
	margin-top: 30px;
	margin-left: 100px;
	margin-bottom: 30px;
	float: left;
}

#QuestionBox {
	background-color: #E0E0E0;
	width: 450px;
	height: 350px;
	margin-top: 30px;
	margin-right: 100px;
	margin-bottom: 30px;
	float: right;
}

#box {
	margin: 20px;
	padding: 0;
}

.NoticeDate {
	text-align: right;
	
}

.Notice {
	width: 300px;
}
.QuestionDate {
	text-align: right;
	
}

.Question {
	width: 300px;
}


</style>
</head>
<body>
	<div id="wrap">

		
		


		<div id="content">
		
		

			<div style="font-size: 25px; font-style: bold;">원하시는 업무 클릭 해주세요		</div>
			
			<div id="slide_menu" style="background-color: #E1E1E1">
				<section class="regular slider">
					<div>
						<a href="${path}/group2_sws_prj/member.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/m_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<a href="${path}/group2_sws_prj/question.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/q_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<a href="${path}/group2_sws_prj/product.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/p_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<a href="${path}/group2_sws_prj/rental.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/r_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<a href="${path}/group2_sws_prj/ticket.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/t_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<a href="${path}/group2_sws_prj/admin.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/a_manage.jpg" width="350px" height="300px"></a>
					</div>
					<div>
						<a href="${path}/group2_sws_prj/notice.do">
						<img src="http://localhost:8080/group2_sws_prj/common/img/n_manage.jpg" width="350px" height="300px"></a>
					</div>
					
				</section>
			</div>


			<div id="NoticeBox">

				<div id="box">
					<p style="font-size: 20px; font-weight: bold">공지사항</p>
					<p style="text-align: right">
						<a style="text-align: right" href="${path}/group2_sws_prj/question.do">+더보기</a>
					</p>

					<table>
						<tr>
							<td class="Notice">[공지] 더욱 새로워진 빌림</td>
							<td class="NoticeDate">2018-08-27</td>
						</tr>
						


					</table>

				</div>

			</div>
			<div id="QuestionBox">

				<div id="box">
					<p style="font-size: 20px; font-weight: bold">문의사항</p>
					<p style="text-align: right" >
						<a style="text-align: right" href="${path}/group2_sws_prj/notice.do">+더보기</a>
					</p>

					<table>
						<tr>
							<td class="Question">배송은 언제 될까요?</td>
							<td class="QuestionDate">2018-08-27</td>
						</tr>
					</table>

				</div>

			</div>


		</div>

		
	</div>
	<div id="footer" >
	 &copy;2018 BILRIM Designed by GroupTwo</div>

</body>
</html>



