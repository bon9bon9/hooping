<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="header.jsp"></jsp:include>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EShopper - Bootstrap Shop Template</title>
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
    <link href="/ping/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/ping/resources/css/style.css" rel="stylesheet">
    <link href="/ping/resources/css/consulting.css" rel="stylesheet">
    

      <!-- JavaScript Libraries -->
      <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
      <script src="/ping/resources/lib/easing/easing.min.js"></script>
      <script src="/ping/resources/lib/owlcarousel/owl.carousel.min.js"></script>
  
      <!-- Contact Javascript File -->
      <script src="/ping/resources/mail/jqBootstrapValidation.min.js"></script>
      <script src="/ping/resources/mail/contact.js"></script>
  
      <!-- Template Javascript -->
      <script src="/ping/resources/js/main.js"></script>

</head>

<body>
 
     <!-- 입점상담 시작 -->
    <div id="consulting" style="text-align: center;">
        
        <h1 style="text-align: center;">입점상담</h1>
        <hr>
        <table>
        <colgroup>
            <col width="315">
        </colgroup>
         <tr>
            <td>
               회사명 : <input type="text">
            </td>
         </tr>
         <tr>
            <td>
               브랜드명 : <input type="text">
            </td>
         </tr>
         <tr>
            <td>
               담당자명 : <input type="text">
            </td>
         </tr>
         <tr>
            <td>
               전화번호 : <input type="text">
            </td>
         </tr>
         <tr>
            <td>
               회사주소 : <input type="text">
            </td>
         </tr>
         <tr>
            <td>
               회사소개: <input type="text">
            </td>
         </tr>
         <tr>
            <td>
               브랜드 소개서: <input type="text">
            </td>
         </tr>
        </table>
        <button type="button">신청</button> <button type="button">취소</button>
    </div>
    <div id="footer">

    </div>
            
    <!-- Footer End -->
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>