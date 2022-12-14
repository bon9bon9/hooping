<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <script src="resources/lib/easing/easing.min.js"></script>
    <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="resources/mail/contact.js"></script>
	<script src="resources/js/main.js"></script>
	<script>
        $(function(){
            
          $("#header").load("header.jsp");
          $("#footer").load("footer.jsp");
        });
    </script>

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
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/writeReview.css" rel="stylesheet">
</head>
</head>

<body>
    <div id="header">

	</div>

	<!-- writeReview Body -->
	<div class="reviewForm px-xl-5 my-5">
		<div class="uploadReviewImg">
			<img src="resources/img/reviewEx.jpg" alt="">
		</div>
		<div class="rightReviewInputBox" >
			<form>
				<div class="reviewFormWrite">
					<div class="buyInfo">
						<div>구매한 상품 정보</div>
						<div>db에서 긁어온 구매 상품 옵션 쥬르륵</div>
						<hr>
					</div>
					<div class="InputReview Color">
						<div>색상</div>
						<div>
							<input type="radio" name="color" id="darker"><label for="darker" class="btn-secondary">생각보다 어두워요</label>
							<input type="radio" name="color" id="normal"><label for="normal" class="btn-secondary">생각대로에요</label>
							<input type="radio" name="color" id="brighter"><label for="brighter" class="btn-secondary">생각보다 밝아요</label>
						</div>
					</div>
					<div class="InputReview Size">
						<div>사이즈</div>
						<div>
							<input type="radio" name="size" id="smaller"><label for="smaller" class="btn-secondary">생각보다 작아요</label>
							<input type="radio" name="size" id="normal2"><label for="normal2" class="btn-secondary">생각대로에요</label>
							<input type="radio" name="size" id="bigger"><label for="bigger" class="btn-secondary">생각보다 커요</label>
						</div>
					</div>
					<div class="InputReview Q">
						<div>퀄리티</div>
						<input type="text" name="" id="">
					</div>
					<div class="InputReview Height">
						<div>키</div>
						<input type="text" name="" id="" placeholder="기입 선택 사항 입니다.">
					</div>
					<div class="InputReview Weight">
						<div>몸무게</div>
						<input type="text" name="" id="" placeholder="기입 선택 사항 입니다.">
					</div>
					<div class="InputReview Total">
						<div>만족도</div>
						<input type="text" name="" id="" value="☆" readonly>
						<input type="text" name="" id="" value="☆" readonly>
						<input type="text" name="" id="" value="☆" readonly>
						<input type="text" name="" id="" value="☆" readonly>
						<input type="text" name="" id="" value="☆" readonly>
					</div>
					<div class="InputReview Detail">
						<div>리뷰 설명</div>
						<textarea style="width:100%"name="" id="" rows="5"></textarea>
					</div>
					<div class="reviewSubmit">
						
						<input class="btn-primary" type="submit" value="제출하기">
						
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- Footer Start -->
    <div id="footer">

	</div>
    <!-- Footer End -->
	

    <!-- Template Javascript -->
	<script>
		$('.InputReview.Total input').click(function(){
			alert($(this).index());
		});
	</script>
</body>
</html>