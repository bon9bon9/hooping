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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="resources/css/style.css" rel="stylesheet">
    <link href="resources/css/order.css" rel="stylesheet">
    
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
    <div id="header">

    </div>
    <!-- 붙일대상 시작 -->
    <div class="container">
        <div class="ip-1">
            <h1 class="text">주문결제</h1>
            <hr class="st-1">
        </div>
        <div class="leftcontainer">
            <div class="pitext">
                <h3>배송지 정보</h3>
            </div>
            <hr>
            <div class="pis">
                <a>배송지 선택</a>
                <div class="pis-2">
                    <input type="radio" id="radio1" name="radios" value=0 checked="checked">
                    <label for="radio1">기본주소</label>
                    <input type="radio" id="radio2">
                    <label for="radio2">새로입력</label>
                </div>
            </div>
            <hr style="color: rgb(255, 255, 255);">
            <div class="username">
                <a> 받으시는분 </a>
                <input class="username-1" type="text" size="8" class="nametext" id="text">
            </div>
            <hr>
            <div class="phone">
                <a class="">휴대폰 번호</a>
                <select name="" class="first" id="text">
                    <option value="010">010</option>
                    <option value="011">011</option>
                    <option value="012">012</option>
                </select>
                <input type="text" class="sec" size="6" id="text">
                <input type="text" class="end" size="6" id="text">
            </div>
            <hr>
            <div class="adress">
                <a class="ad-1">배송 주소</a>
                <div class="number">
                    <input type="text" class="number-1" id="text">
                    <button class="as" id="as">우편번호 찾기</button>
                </div>
                <div class="add">
                    <input type="text" name="" class="add-1" id="text">
                    <input type="text" name="" class="add-2" id="text">
                </div>
            </div>
            <hr>
            <div class="message">
                <a class="message-1">배송 메세지</a>
                <input type="text" class="message-2" id="text">
            </div>
            <hr>
            <div class="Goods">
                <h3>주문상품</h3>
                <hr>
                <div class="g1">
                    <a class="g-1">상품정보</a>
                    <a class="g-2">수량</a>
                    <a class="g-3">가격</a>
                    <a class="g-4">총 상품 금액</a>
                    <a class="g-5">배송비</a>
                </div>
                <hr>
                <div class="si">
                    <div class="si-1">
                        <img src="resources/img/sungpum.png" alt="">
                        <div class="si-2">
                            <a>PLUCKITTY</a><br>
                            <a style="font-size: 3px;">Newborn</a><br>
                            <a style="font-size: 3px;">옵션 : Ivory</a>
                        </div>
                    </div>
                </div>
                <div class="si-3">
                    <a>1</a>
                </div>
                <div class="si-4">
                    <a>31,900</a>
                </div>
                <div class="si-5">
                    <a>31900원</a>
                </div>
                <div class="si-6">
                    <a>무료배송</a>
                </div>
                <hr>
            </div>
            <div class="sale">
                <div class="saletext">
                    <h3>할인 받기</h3>
                </div>
                <hr>
                <div class="sale-1">
                    <a>결제 예정금액</a>
                    <a class="sale-2">31,900</a>
                </div>
                <hr>
                <div class="sale-3">
                    <a>할인쿠폰</a>
                    <input type="text" name="" class="sale-4" size="10" id="text"> 원
                    <button id="as">쿠폰 적용</button>
                    <a style="font-size: 1px;">사용 가능 쿠폰 1장 |</a>
                    <a style="font-size: 1px;">보유 쿠폰 12장</a>
                </div>
                <hr>
                <div class="sale-3">
                    <a>W.POINT</a>
                    <input type="text" class="sale-4" id="text"> P <a style="font-size: 1px;"> 잔액 0P</a>
                </div>
                <hr>
            </div>
            <div class="payment">
                <div class="paytext">
                    <h3>결제 수단</h3>
                </div>
                <div class="paysel">
                    <input type="radio" id="radio3">
                    <label for="radio3">지금 선택한 결제수단을 다음에도 사용</label>
                </div>
                <hr>
                <div class="paysel-1">
                    <input type="radio" id="radio4">
                    <label for="radio4"> W.페이</label>
                </div>
                <div class="regis">
                    <a class="cardr"><a style="font-size: 30px;">+<br></a>카드 등록<br>
                        <a style="font-size: 1px;">자주 사용하는 카드를 등록하고<br>
                            더욱 빠르게 결제하세요.</a></a>
                </div>
                <hr>
                <div>
                    <div class="normal">
                        <input type="radio" id="radio5" name="radios" value=0>
                        <label for="radio5">일반 결제</label>
                    </div>
                </div>
                <div class="cardbuy">
                    <button id="as">신용카드</button>
                </div>
                <div class="cardbuy-1">
                    <button id="as">간편결제</button>
                </div>
                <div class="cardbuy-1">
                    <button id="as">현금결제</button>
                </div>
                <div class="cardbuy-1">
                    <button id="as">휴대폰결제</button>
                </div>
                <div class="cardbuy-1">
                    <button id="as">International Payments</button>
                </div>
                <hr>
            </div>
        </div>
        <div class="rightontainer">
            <h4 class="pricetext">최종결제금액</h4>
            <div class="l-1">
                <hr>
            </div>
            <div class="p-1">
                총 상품 금액<br><br>
                배송비<br><br>
                할인쿠폰<br><br>
                POINT
            </div>
            <div class="p-2">
                31,900원<br><br>
                0원<br><br>
                0원<br><br>
                0원
            </div>
            <div class="l-2">
                <hr>
            </div>
            <div class="p-3">
                최종결제금액<br><br>
                적립예정 포인트
            </div>
            <div class="p-4">
                31,900원<br><br>
                319원
            </div>
            <div class="buy-btn">
                <button class="btn-1" id="btn-1">결제하기</button>
            </div>
        </div>
    </div>
    <div id="footer">

    </div>
</body>

</html>