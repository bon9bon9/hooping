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
     <link href="resources/css/signUp.css" rel="stylesheet">

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
            <span>상세 정보 입력</span>
        </div>

        <div class="contact-form">

            <div id="success"></div>
            <form action="saveMember.do" method="post" id="contactForm">
            	<input type="hidden" name="memberEmail" value= "${MemberVO.memberEmail }"/>
            	<input type="hidden" name="memberPwd" value= "${MemberVO.memberPwd }"/>
                <div class="control-group">
                    <div class="login-email">
                        <span class="login-email-text">이름</span><br/>
                    </div>
                    <input name="memberName" type="text" class="form-control" id="name" 
                        required="required" data-validation-required-message="Please enter your name" />
                    <p class="help-block text-danger"></p>
                </div>
                <div class="control-group">
                    <span class="login-password-text">전화번호</span><br/>
                    <input name="memberPhoneNum" type="text" class="form-control" id="phoneNum"
                        required="required" data-validation-required-message="Please enter your email" />
                </div>      
                <div class="control-group">
                    <span class="login-password-text">기본 배송지</span><br/>
                    <input name="memberBaseAddress" type="text" class="form-control" id="address"
                        required="required" data-validation-required-message="Please enter your email" />
                </div>       
                 <div class="control-group">
                    <span class="login-password-text">인스타 아이디</span><br/>
                    <input name="memberInstagramId" type="text" class="form-control" id="instaId"
                        required="required" data-validation-required-message="Please enter your email" />
                </div>           
                
                <div class="btn-div">
                    <button type="button" class="btn btn-dark login-button">가입하기</button>
                </div>

            </form>
            
        </div>

    </section>
    <div id="footer">

    </div> 
    
</body>
<script>	
	
	$(function(){
		
		$(".login-button").click(function(){
			
			if ($("#name").val() == "") {
				alert("이름을 입력해주세요");
				$("#name").focus();
				return false;
			}
			
			if ($("#phoneNum").val() == "") {
				alert("전화번호를 입력해주세요");
				$("#phoneNum").focus();
				return false;
			}
			
			if ($("#address").val() == "") {
				alert("주소를 입력해주세요");
				$("#address").focus();
				return false;
			}
			
			if ($("#instaId").val() == "") {
				alert("인스타 아이디를 입력해주세요");
				$("#instaId").focus();
				return false;
			}
			
			$(".login-button").prop("type", "submit");
			
		
		})
	});
	
</script>
</html>