<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../main/header.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

	<style>
		@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
		@import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@800&display=swap');
	</style>

	<!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="/ping/resources/lib/easing/easing.min.js"></script>
    <script src="/ping/resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="/ping/resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="/ping/resources/mail/contact.js"></script>
	<script src="/ping/resources/js/main.js"></script>
	<script>
        $(function(){
            
          $("#header").load("header.jsp");
          $("#footer").load("footer.jsp");
        });
    </script>

    <!-- Favicon -->
    <link href="/ping/resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/ping/resources/css/style.css" rel="stylesheet">
    <link href="/ping/resources/css/review.css" rel="stylesheet">
	<link href="/ping/resources/css/header.css" rel="stylesheet">
</head>
</head>

<body>
	<div id="header">

	</div>
    
	<!-- Review Box Start -->
	<div class="container-fluid px-xl-5 pt-5">
		<div class="reviewTitle">
			<div class="fontGothic">최고의 후기들</div>
			<hr>
		</div>
		<div class="px-xl-5 reviewBox">
			<div class="bestReview">
				<div class="imgMix" style="position:relative">
					<img src="/ping/resources/img/reviewEx.jpg" alt="">
					<img src="/ping/resources/img/1등.png" alt="" style="position:absolute; width:20%; right:20%; top:-7%;">
				</div>
				<div class="reviewId" style="width:40%; margin:auto;">
					<span>***</span><span>님의 리뷰</span>
				</div>
				
			</div>
			<div class="reviewList">
				<div class="oneReview">
					<div class="reviewImg">
						<img src="/ping/resources/img/reviewEx.jpg" alt="">
					</div>
					<div class="reviewId">
						<span>***</span><span>님의 리뷰</span>
					</div>
				</div>
				<div class="oneReview">
					<div class="reviewImg">
						<img src="/ping/resources/img/reviewEx.jpg" alt="">
					</div>
					<div class="reviewId">
						<span>***</span><span>님의 리뷰</span>
					</div>
				</div>
				<div class="oneReview">
					<div class="reviewImg">
						<img src="/ping/resources/img/reviewEx.jpg" alt="">
					</div>
					<div class="reviewId">
						<span>***</span><span>님의 리뷰</span>
					</div>
				</div>
				

			</div>
		</div>
	</div>
	<!-- Review Box End-->

	<!--PopUp Start-->
	<div class="fullScreen dontshow">
		<div class="reviewDetail area">
			<div class="reviewDetailImg">
				<img src="/ping/resources/img/reviewEx.jpg" alt="">
			</div>
			<div class="rightReviewDetailBox" >
				
				<div class="reviewUserInfo">
					<span>userid</span>(<span>등급</span>)<br>
					<span>★★★★☆</span>
					<hr>
				</div>
				<div class="ReviewDetailText" style="overflow-y:scroll">
					<div class="reviewFormPrint">
						상품명: <span></span> <br>
						색상: <span></span> <br>
						사이즈: <span></span> <br>
						퀄리티: <span></span> <br>
						키: <span></span> <br>
						몸무게 : <span></span> <br>
						< 리뷰 설명 > <br>
						<textarea style="width:90%"name="" id="" rows="5" readonly></textarea>
						<hr>
					</div>
					<div class="readReviewComment">
						댓글 <br>
						<div class="oneComment">
							<hr>
							<div class="commentUserInfo">
								<span>userid</span>
							</div>
							<div class="commentText">
								좋으네영.......................참말로좋아............후기증말 도움됨...........역시 베스트후기....
							</div>
						</div>
						<div class="oneComment">
							<hr>
							<div class="commentUserInfo">
								<span>userid</span>
							</div>
							<div class="commentText">
								뭐 댓글 이런식으로 달리겠져
							</div>
						</div>
					</div>

				</div>
				<div class="ReviewDetailThumbs">
					<hr>
					<span>♡</span> <span>0</span>명이 좋아합니다.
				</div>
				<div class="writeReviewComment">
					<input type="text" name="" id="" placeholder="댓글 남기기..">
				</div>
			</div>
		</div>
	</div>
	<!--PopUp End-->

    <!-- Template Javascript -->
	<script>
		$('.fullScreen').click(function(e){
			if ($(e.target).is('.fullScreen')) { 
				$('.fullScreen').addClass('dontshow');
			}
		});
		$('.oneReview').click(function(){
			$('.fullScreen').removeClass('dontshow');
		});
		$('.ReviewDetailThumbs').click(function(){
			console.log($('.ReviewDetailThumbs').children()[0]);
			if($('.ReviewDetailThumbs>span:nth-child(2)').text()=='♡'){
				$('.ReviewDetailThumbs').children()[1].innerText='♥'
				$('.ReviewDetailThumbs>span:nth-child(2)').attr('style','color:red;');
				$('.ReviewDetailThumbs').children()[2].innerText=parseInt($('.ReviewDetailThumbs').children()[2].innerText)+1;
				
			}
			else{
				$('.ReviewDetailThumbs').children()[1].innerText='♡'
				$('.ReviewDetailThumbs>span:nth-child(2)').attr('style','color:black;');
				$('.ReviewDetailThumbs').children()[2].innerText=parseInt($('.ReviewDetailThumbs').children()[2].innerText)-1;

			}
		})
	</script>
	<div id="footer">

	</div>
</body>
<%@include file="../main/footer.jsp"%>
</html>