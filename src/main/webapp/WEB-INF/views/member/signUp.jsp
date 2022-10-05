<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="../header.jsp"%>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/ping/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/ping/resources/css/style.css" rel="stylesheet"/>
<link href="/ping/resources/css/signUp.css" rel="stylesheet"/>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>
	$(function() {

		$("#header").load("header.jsp");

		$("#footer").load("footer.jsp");

	});
</script>

<title>Document</title>

</head>
<body>

	<header>
		<div id="header"></div>
	</header>

	<section class="signUp-section">

		<div class="signUp-logo">
			<span>회원가입</span>
		</div>

		<div class="contact-form">

			<div id="success"></div>
			<form action="signDetail.do" method="post" id="contactForm" novalidate="novalidate">
				<div class="control-group">
					<div class="login-email">
						<span class="login-email-text">이메일 주소</span><br />
					</div>
					<input name="memberEmail" type="text" class="form-control" id="email" required="required" data-validation-required-message="Please enter your name" />
					<p class="help-block text-danger">이메일 인증에 실패하였습니다</p>
				</div>
				<div class="control-group">
					<span class="login-password-text">비밀번호</span><br /> <input name="memberPwd" type="text" class="form-control" id="pwd" required="required" data-validation-required-message="Please enter your email" />
					<p id="pwdWrong" class="help-block text-danger">비밀번호가 틀렸습니다</p>
				</div>
				<div class="control-group">
					<span class="login-password-text">비밀번호 확인</span><br /> <input type="text" class="form-control" id="pwdCheck" required="required" data-validation-required-message="Please enter your email" />
				</div>


				<div class="btn-div">
					<button type="button" class="btn btn-dark login-button">상세정보 입력</button>
				</div>
			</form>

		</div>

	</section>
	<div id="footer"></div>

</body>
<jsp:include page="../footer.jsp" flush="true"></jsp:include>
<script>
	$(function() {

		$(".login-button").click(function() {

			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요");
				$("#email").focus();
				return false;
			}
			
			if ($("#pwd").val() == "") {
				alert("비밀번호를 입력해주세요");
				$("#pwd").focus();
				return false;
			}
			
			if ($("#pwd").val() != $("#pwdCheck").val()) {
				$("#pwdWrong").css("display", "inline" )
				$("#pwd").focus();
				return false;
			}
			
			$("#pwdWrong").css("display", "none" )
			$(".login-button").prop("type", "submit");

		})
	});
</script>
</html>