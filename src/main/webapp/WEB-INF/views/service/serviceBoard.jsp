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
     <link href="resources/css/serviceArticle.css" rel="stylesheet">
     <link href="resources/css/serviceTap.css" rel="stylesheet">
     

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

     <script>
         $(function(){
             
           $("#header").load("header.jsp");
 
           $("#footer").load("footer.jsp");
           
           $('#serviceTap').load("serviceTap.jsp");
          
         });
         </script>

    <title>Document</title>

</head>
<body>
   

    <header>
        <div id="header">

        </div>   
    </header>   
    
<div class="container">
    <div id="serviceTap"></div>
    <!-- end row -->
    
    <article id="article" style="width:100%"> 
        <header>
            <h2 id="ar-title">
                <span class="ar-tit">환불은 어떻게 하나요?</span>
            </h2>
        </header>
        <section id="ar-info">
            <strong>
                <span class="ar-user">ㅁㅁㅁ</span>
            </strong>
            <strong>
                <span>댓글 1개</span>
            </strong>
            <stong>
                <span>147회</span>
            </stong>
            <strong class="ar-date">
                <span>2022-09-21</span>
            </strong>
        </section>
        <section id="ar-main">
            <div class="ar-main-text">
                질문입니다
                <br/>
                대답해주세요
                <br/>
                감사합니다
            </div>
        </section>
        <div class="answer-box">
            <section id="ans-box">
                <article id="ans-main">
                    <header>
                        <span class="manager">관리자</span>
                        <span class="ans-date">2022-09-21</span>
                        
                    </header>

                    <div class="answer-contents">
                        <p class="ans-text">
                            안녕하세요
                            <br/>
                            답변입니다
                            <br/>
                            감사합니다
                        </p>
                        <button class="ans-edit btn-dark">답변 수정</button>
                    </div>
                   

                    <div class="ans-btns">
                        <ul class="ans-com-btn-ul">
                            <a href="serviceWrite.jsp">
                            <li><button class="btn-dark">수정</button></li>
                            </a>
                            <li><button class="btn-dark">삭제</button></li>
                         </ul>
                         <ul class="ans-list-ul">
                         	<a href="serviceBoard.jsp">
                             <li><button class="btn-dark">목록</button></li>
                             </a>
                        </ul>
                    </div>
                   
                   
                </article>
            </section>
        </div>
    </article>
</div>

<div id="footer">

</div> 
</body>
</html>