<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

     <!-- Favicon -->
     <link href="img/favicon.ico" rel="icon">

     <!-- Google Web Fonts -->
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 
 
     <!-- Font Awesome -->
     <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
 
     <!-- Libraries Stylesheet -->
     <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
 
     <!-- Customized Bootstrap Stylesheet -->
     <link href="resources/css/style.css" rel="stylesheet">
     <link href="resources/css/jyp.css" rel="stylesheet">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
         $(function(){
             
           $("#header").load("header.jsp");
 
           $("#footer").load("footer.jsp");
          
         });
    </script>
 
    <title>Document</title>

</head>
<body>
    
    <header>
        <div id="header">

        </div>
    </header>
    <section class="login-section">

        <div class="login-logo">
            <span>로그인</span>
        </div>

        <div class="contact-form">

            <div id="success"></div>
            <form name="sentMessage" id="contactForm" novalidate="novalidate">
                <div class="control-group">
                    <div class="login-email">
                        <span class="login-email-text">이메일 주소</span><br/>
                    </div>
                    <input type="text" class="form-control" id="name" 
                        required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger">이메일 주소가 틀렸습니다</p>
                </div>
                <div class="control-group">
                    <span class="login-password-text">비밀번호</span><br/>
                    <input type="email" class="form-control" id="email"
                        required="required" data-validation-required-message="Please enter your email" />
                    <p class="help-block text-danger">비밀번호가 틀렸습니다</p>
                </div>                
                <div class="btn-div">
                    <button class="btn btn-dark login-button">로그인</button>
                </div>
                <div class="login-signup">
                    <a href="signUp.jsp"><span>이메일 가입</span></a>
                    <span>|</span>
                    <span>이메일 찾기</span>
                    <span>|</span>
                    <span>비밀번호 찾기</span>
                </div>
                    
                <div class="login-api">
                    <img src="resources/img/naverLogo.png" class="login-api-logo">
                    <span class="login-api-text">네이버 로그인</span>
                </div>
                <div class="login-api">
                    <img src="resources/img/kakaoLogo.png" class="login-api-logo">
                    <span class="login-api-text">카카오 로그인</span>
                </div>


            </form>

            
        </div>

    </section>
    <div id="footer">

    </div> 
    
</body>
</html>