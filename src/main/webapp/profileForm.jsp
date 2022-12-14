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
     <link href="resources/css/jyp.css" rel="stylesheet">
    <title>Document</title>

</head>
<body class="profile-edit-body">

    <section class="signUp-section">

        <div class="contact-form">
            <form name="sentMessage" id="contactForm" novalidate="novalidate">
                <div class="profile-control-group">
                    <span class="profile-subtitle">이름</span>
                    <div class="login-email">
                        <span class="login-email-text">새로운 이름</span><br/>
                    </div>
                    <input type="text" class="form-control" id="name" 
                        required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger">변경 전 이름과 같습니다</p>
                    
                </div>
                <div class="profile-edit-btn-div">
                    <button type="button" class="btn btn-dark">취소</button>
                    <button class="btn btn-light">저장</button>
                 </div>
                
                
            </form>

            
        </div>

    </section>
    
    
</body>
</html>