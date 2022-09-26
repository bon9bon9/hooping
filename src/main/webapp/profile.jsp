<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
     <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
 
     <!-- Customized Bootstrap Stylesheet -->
     <link href="resources/css/style.css" rel="stylesheet">
     <link href="resources/css/profile.css" rel="stylesheet">
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
    <section class="signUp-section">

        <div class="signUp-logo">
            <span>프로필 정보</span>
        </div>

        <div class="contact-form">

            <div id="success"></div>
            <form name="sentMessage" id="contactForm" novalidate="novalidate">
                <div class="profile-control-group">
                    <span class="profile-subtitle">로그인 정보</span>
                    <div class="login-email">
                        <span class="login-email-text">이메일 주소</span><br/>
                    </div>
                    <input type="text" class="form-control profile-form-control" id="name" 
                        required="required" data-validation-required-message="Please enter your name" />
                    <a href="profileform.html"><button type="button">변경</button></a>
                    
                </div>
                <div class="profile-control-group">
                    <div class="login-email">
                        <span class="login-email-text">비밀번호</span><br/>
                    </div>
                    <input type="text" class="form-control profile-form-control" id="name" 
                        required="required" data-validation-required-message="Please enter your name" />
                    <button type="button">변경</button>
                </div> 
                <div class="profile-control-group">
                    <span class="profile-subtitle">개인 정보</span><br/>
                    <div class="login-email">
                        <span class="login-email-text">이름</span><br/>
                    </div>
                    <input type="email" class="form-control profile-form-control" id="email"
                        required="required" data-validation-required-message="Please enter your email" />
                    <button type="button">변경</button>    
                </div>    
                <div class="profile-control-group">
                    <span class="login-password-text">휴대폰 번호</span><br/>
                    <input type="email" class="form-control profile-form-control" id="email"
                        required="required" data-validation-required-message="Please enter your email" />
                    <button type="button">변경</button>
                </div> 
                <div class="profile-control-group">
                    <span class="login-password-text">주소</span><br/>
                    <input type="email" class="form-control profile-form-control" id="email"
                        required="required" data-validation-required-message="Please enter your email" />
                    <button type="button">변경</button>
                </div>         
                <div class="profile-control-group">
                    <span class="login-password-text">인스타그램</span><br/>
                    <input type="email" class="form-control profile-form-control" id="email"
                        required="required" data-validation-required-message="Please enter your email" />
                    <button type="button">변경</button>
                </div>    
                
                
                <div class="btn-div">
                	<a href="myPage.jsp">
                    <button type="button" class="btn btn-dark login-button">저장하기</button>
                    </a>
                </div>
            </form>           
        </div>
        
        <div id="footer">

        </div> 
</body>
</html>