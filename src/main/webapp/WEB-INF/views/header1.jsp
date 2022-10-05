<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- Favicon -->
    <link href="resources/img/favicon.ico" rel="icon">
    

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <!-- 링크 -->
    <link rel="stylesheet" href="resources/css/style.css"/>

      <!-- JavaScript Libraries -->
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
     <!-- 링크 -->
     <script src="resources/lib/easing/easing.min.js"></script>
     <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>
  
      <!-- Contact Javascript File -->
      <!-- 링크 -->
     <script src="resources/mail/jqBootstrapValidation.min.js"></script>
     <script src="resources/mail/contact.js"></script>
  
      <!-- Template Javascript -->
      <!-- 링크 -->
      <script src="resources/js/main.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<title>Insert title here</title>
</head>

<body>
	<div class="container-fluid align-items-center">

		<div class="row align-items-center py-3 px-xl-5">
			<div class="col-lg-3 d-none d-lg-block">
				<a href="index.jsp" class="text-decoration-none">
					<h1 class="m-0 display-5 font-weight-semi-bold">
						<span class="text-primary font-weight-bold">&nbsp; H</span>oopping
					</h1>
				</a>
			</div>
			<div class="col-lg-6 col-6 text-left">
				<form action="">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search for products">
						<div class="input-group-append">
							<span class="input-group-text bg-transparent text-primary"> <i class="fa fa-search"></i>
							</span>
						</div>
					</div>
				</form>
			</div>
			<div class="col-lg-3 col-6 text-right">
				<a href="login.do" class="btn border"> <span class="badge">로그인</span>
				</a> <a href="member/signUp.do" class="btn border"> <span class="badge">회원가입</span>
				</a>
			</div>
			<div class="col-lg-3 col-6 text-right" hidden="true">
				<a href="index.jsp" class="btn border"> <span class="badge">로그아웃</span>
				</a> <a href="myPage.jsp" class="btn border"> <span class="badge">마이페이지</span>
				</a> <a href="wishList.jsp" class="btn border"> <span class="badge">장바구니</span>
				</a>
			</div>
		</div>
	</div>
	<!-- Topbar End -->


	<!-- Navbar Start -->

	<div class="container-fluid" id="home_all1">
		<div class="row border-top px-xl-5" id="home_all2">
			<div class="col-lg-9" id="nav">
				<nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0" id="home_all3">
					<div class="navbar-nav mr-auto py-0" id="nav_center">
						<div class="nav-item dropdown">
							<a href="index.jsp" class="nav-link">HOME</a>
						</div>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">MEN</a>
							<div class="dropdown-menu rounded-0 m-0" id="drop_menu">
								<a href="category.jsp" class="dropdown-item">Outer</a> <a href="category.jsp" class="dropdown-item">Top</a> <a href="category.jsp" class="dropdown-item">Pants</a> <a href="category.jsp" class="dropdown-item">Shoes</a> <a href="category.jsp" class="dropdown-item">Bag</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">WOMEN</a>
							<div class="dropdown-menu rounded-0 m-0" id="drop_menu">
								<a href="category.jsp" class="dropdown-item">Outer</a> <a href="category.jsp" class="dropdown-item">Top</a> <a href="category.jsp" class="dropdown-item">Pants</a> <a href="category.jsp" class="dropdown-item">Shoes</a> <a href="category.jsp" class="dropdown-item">Bag</a>
							</div>
						</div>
						<div class="nav-item dropdown">
							<a href="reviewList.do" class="nav-link">REVIEW</a>
						</div>
						<div class="nav-item dropdown">
							<a href="best.jsp" class="nav-link">BEST</a>
						</div>
						<div class="nav-item dropdown">
							<a href="event.jsp" class="nav-link">EVENT</a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>