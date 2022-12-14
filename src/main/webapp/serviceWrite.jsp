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
     <link href="resources/css/serviceWrite.css" rel="stylesheet">

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
    
    <section>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">

<div class="container">
    <div id="serviceTap">

    </div> 
    <!-- end row -->
    
<article id="article" style="width:100%"> 
        <header>
            <h2 id="ar-title">
                <span class="ar-tit">문의</span>
            </h2>
        </header>
        <section id="ar-info">
            
        </section>
        <section id="ser-write-main">
            
                <div class="service-write-div">
                    <form id="service-write-form"></form>
                        <div class="service-write-selectbox-div">
                            <span class="service-write-selectbox-title">분류</span>
                            <select class="form-select service-write-selectbox" aria-label="Default select example">
                                <option value="1" selected>환불/교환</option>
                                <option value="2">배송</option>
                                <option value="3">기타</option>
                            </select>
                        </div>
                        <div class="service-write-title-div">
                            <span class="service-write-title">제목</span>
                        <input type="text" class="service-write-title-input"/>
                        </div>
                        <div class="service-write-content-div">
                            <input class="service-write-content" type="text" placeholder="분류를 올바르게 설정하셔야 원하시는 답변을 받으실수 있습니다"/>
                        </div>

                        <div class="service-write-btns-div">
            
                            <ul class="service-write-btns-ul">
                                <a href="serviceBoard.jsp"><li><button class="btn-dark service-write-btn">등록</button></li></a>
                                <a href="serviceBoard.jsp"><li><button class="btn-dark">취소</button></li></a>
                            </ul>
        
                        </div>
                    </form>
                </div>
                

                
           
    </article>

   
    <!-- end row -->
</div>
        
<div id="footer">

</div> 
    
</body>
</html>