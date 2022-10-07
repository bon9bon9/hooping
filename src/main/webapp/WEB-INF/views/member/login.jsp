<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../main/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="/ping/resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/ping/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/ping/resources/css/style.css" rel="stylesheet">
<link href="/ping/resources/css/jyp.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- kakao login api -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>

<title>Document</title>

</head>
<body>

	<header>
		<div id="header"></div>
	</header>
	<section class="login-section">

		<div class="login-logo">
			<span>로그인</span>
		</div>

		<div class="contact-form">

			<div id="success"></div>
			<form action="/ping/member/idCheck.do" method="post"  name="sentMessage" id="contactForm" novalidate="novalidate">
				<div class="control-group">
					<div class="login-email">
						<span class="login-email-text">이메일 주소</span><br />
					</div>
					<input type="text" class="form-control" id="name" required="required" data-validation-required-message="Please enter your name" />
					<p class="help-block text-danger">이메일 주소가 틀렸습니다</p>
				</div>
				<div class="control-group">
					<span class="login-password-text">비밀번호</span><br /> <input type="email" class="form-control" id="email" required="required" data-validation-required-message="Please enter your email" />
					<p class="help-block text-danger">비밀번호가 틀렸습니다</p>
				</div>
				<div class="btn-div">
					<button class="btn btn-dark login-button">로그인</button>
				</div>
				<div class="login-signup">
					<a href="signUp.jsp"><span>이메일 가입</span></a> <span>|</span> <span>이메일 찾기</span> <span>|</span> <span>비밀번호 찾기</span>
				</div>

				<div class="login-api">
					<img src="resources/img/naverLogo.png" class="login-api-logo"> <span class="login-api-text">네이버 로그인</span>
				</div>
				<ul>
					<li onclick="kakaoLogin();"><a href="javascript:void(0)"> <span>카카오 로그인</span>
					</a></li>
					<li onclick="kakaoLogout();"><a href="javascript:void(0)"> <span>카카오 로그아웃</span>
					</a></li>
				</ul>
				<div class="login-api">
					<img src="resources/img/kakaoLogo.png" class="login-api-logo"> <span class="login-api-text">카카오 로그인</span>
				</div>
			</form>
		</div>

	</section>

</body>
<%@include file="../main/footer.jsp"%>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('8890a67c089173194979845f9389950d'); //발급받은 키 중 javascript키를 사용해준다.
	console.log(Kakao.isInitialized()); // sdk초기화여부판단
	//카카오로그인
	function kakaoLogin() {
		Kakao.Auth.login({
			success : function(response) {
				Kakao.API.request({
					url : '/v2/user/me',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
			},
			fail : function(error) {
				console.log(error)
			},
		})
	}
	//카카오로그아웃  
	function kakaoLogout() {
		if (Kakao.Auth.getAccessToken()) {
			Kakao.API.request({
				url : '/v1/user/unlink',
				success : function(response) {
					console.log(response)
				},
				fail : function(error) {
					console.log(error)
				},
			})
			Kakao.Auth.setAccessToken(undefined)
		}
	}
</script>
</html>