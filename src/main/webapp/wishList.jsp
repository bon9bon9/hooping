<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Hoopping</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

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
    
        <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="resources/lib/easing/easing.min.js"></script>
    <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="resources/mail/jqBootstrapValidation.min.js"></script>
    <script src="resources/mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="resources/js/main.js"></script>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
         $(function(){
             
           $("#header").load("header.jsp");
 
           $("#footer").load("footer.jsp");
          
         });
    </script>
    
    
</head>

<body>
    <!-- -----------------------------------------헤더시작------------------------------------------- -->
    <!-- -----------------------------------------헤더시작------------------------------------------- -->
    <!-- -----------------------------------------헤더시작------------------------------------------- -->
	 <header>
        <div id="header">

        </div>
    </header>  
    
    <div class="container-fluid" id="hr">
        <p id="wishlist"> 장바구니 </p>
        <hr>
    </div>
    <div class="container-fluid bg-secondary text-dark mt-5 pt-5" id="wish-m">
        <div class="container-fluid" style="width: 50%; margin-left: 15%;" id="wish-s">
        <span id="your_product1" >쇼핑백 상품 </span>
        <span id="your_product2" >(1) </span>
        
        <hr>
            <table id="sideTb_left">
                <tr style="border-bottom: 1px solid rgb(192, 191, 191);">
                    <td id="sideTb_left_td" style="width:5%">
                        <input type="checkbox" name="" value="">
                    </td>
                    <td id="sideTb_left_td" style="width:30%; text-align: center;">
                        <span id="sideTb_menu">상품정보</span>
                    </td>
                    <td id="sideTb_left_td" style="width:10%; text-align: center;">
                        <span id="sideTb_menu">수량</span>
                    </td>
                    <td id="sideTb_left_td" style="width:10%; text-align: center;">
                        <span id="sideTb_menu">가격</span>
                    </td>
                    <td id="sideTb_left_td" style="width:20%; text-align: center;">
                        <span id="sideTb_menu">쿠폰</span>
                    </td>
                    <td id="sideTb_left_td" style="width:15%; text-align: center;">
                        <span id="sideTb_menu">배송비</span>
                    </td>
                    <td id="sideTb_left_td" style="width:10%; text-align: center;">
                        <span id="sideTb_menu">상품금액</span>
                    </td>
                </tr>
                
                <tr>
                    <td id="sideTb_left_td" style="width:5%">
                        <input type="checkbox" name="" value="">
                    </td>
                    <td id="sideTb_left_td" style="width:30%;">
                        <span id="sideTb_contents">간지나는바지간지나는바지간지나는바지</span>
                    </td>
                    <td id="sideTb_left_td" style="width:10%; text-align: center;">
                        <input type="number" id="sideTb_nb" placeholder="1">
                    </td>
                    <td id="sideTb_left_td" style="width:10%; text-align: center;">
                        <span id="sideTb_contents">50000</span><br>
                        <del id="sideTb_contents">31900</del>
                    </td>
                    <td id="sideTb_left_td" style="width:20%; text-align: center;">
                        <span id="sideTb_contents"></span>
                    </td>
                    <td id="sideTb_left_td" style="width:15%; text-align: center;">
                        <span id="sideTb_contents">무료배송</span>
                    </td>
                    <td id="sideTb_left_td" style="width:10%; text-align: center;">
                        <span id="sideTb_contents">31900</span>
                    </td>
                </tr>
                
            </table>
            <hr>
            <div class="buy-btn-1-1">
                <button class="btn-1-1">선택상품삭제</button>
            </div>
        </div>

    <!-- 사이드바 (결제금액) -->
    
        <div class="sideTb_right" id="wish-position">
            <p class="pricetext-1" id="last-cost">최종결제금액</p>
            
            <!-- 구분선 -->
            <div class="l-1-1">
                <hr>
            </div>
            <!-- 구분선 -->

            <div class="p-1-1" id="total-cost">
                총 상품 금액
            </div>
            <div class="p-2-1" id="total-cost">
                31,900원
            </div>
            <div class="p-1-1" id="deli-cost">
                배송비
            </div>
            <div class="p-2-1" id="deli-cost">
                0원
            </div>
            <div class="p-1-1" id="coupon">
                할인쿠폰
            </div>
            <div class="p-2-1" id="coupon">
                0원
            </div>
            <div class="p-1-1" id="point">
                POINT
            </div>
            <div class="p-2-1" id="point">
                0원
            </div>

            <!-- 구분선 -->
            <div class="l-2-1">
                <hr>
            </div>
            <!-- 구분선 -->

            <div class="p-3-1" id="last-cost-fin">
                최종결제금액
            </div>
            <div class="p-4-1" style="color: red;" id="last-cost-fin">
                31,900원
            </div>
            <div class="p-1-1" id="point-fin">
                적립예정 포인트
            </div>
            <div class="p-2-1" id="point-fin">
                319원
            </div>
            
            <!-- 구분선 -->
            <div class="buy-btn-1-2">
                <a href="order.jsp"><button class="btn-1-2">선택상품 주문하기</button></a>
            </div>
            <!-- 구분선 -->
        </div>
    </div>
    
    <!-- 장바구니 종료 -->

    <div id="footer">

    </div>

</body>

</html>