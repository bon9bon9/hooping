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
     <link href="resources/css/serviceBoard.css" rel="stylesheet">
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
     <div id="serviceTap">

     </div> 
        
   
    <div class="board-search-div">
        <div>
            <div class="card-body">
                <form>
                        <div class="input-group mb-0">
                            <input type="text" class="form-control" placeholder="Search" aria-describedby="project-search-addon" />
                            <div class="input-group-append">
                                <button class="btn btn-info" type="button" id="project-search-addon"><i class="fa fa-search search-icon font-12"></i></button>
                            </div>
                        </div>
                </form>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <div class="table-responsive project-list">
                        <table class="table project-table table-centered table-nowrap">
                            <thead>
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">TITLE</th>
                                    <th scope="col">Start Date</th>
                                    <th scope="col">Status</th>
                                    <th scope="col">ID</th>
                                    <!-- <th scope="col">Action</th> -->
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td><a href="serviceArticle.jsp">환불은 어떻게 하나요?</a></td>
                                    <td>02/5/2019</td>
                                    <td>
                                        <span class="text-success font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> Completed</span>
                                    </td>
                                    <td>
                                        <div class="user-id">
                                           <span>kim1234</span>
                                        </div>
                                    </td>
                

                                 
                                </tr>

                                <tr>
                                    <th scope="row">2</th>
                                    <td>배송이 진행되지 않아요</td>
                                    <td>04/6/2019</td>
                                    <td>
                                        <span class="text-primary font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> Pending</span>
                                    </td>
                                    <td>
                                      
                                        <div class="user-id">
                                            <span>lee1234</span>
                                        </div>
                                        
                                    </td>

                                   
                                </tr>

                                <tr>
                                    <th scope="row">3</th>
                                    <td>사이즈를 교환하고 싶어요</td>
                                    <td>06/6/2019</td>
                                    <td>
                                        <span class="text-success font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> Completed</span>
                                    </td>
                                    <td>
                                        <div class="user-id">
                                            <span>park1234</span>
                                         </div>
                                    </td>
                                 
                                </tr>
                                <tr>
                                    <th scope="row">4</th>
                                    <td>포인트는 어떻게 사용하는 건가요?</td>
                                    <td>07/5/2019</td>
                                    <td>
                                        <span class="text-success font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i> Completed</span>
                                    </td>
                                    <td>
                                        <div class="user-id">
                                            <span>choi1234</span>
                                         </div>
                                    </td>
                                 
                                </tr>

                                
                            </tbody>
                        </table>
                    </div>
                    <!-- end project-list -->
                    <!-- start write-btn -->
                    <div>
                        <div class="board-input-div justify-content-end">
                            <a href="serviceWrite.jsp"><button class="btn btn-dark board-write-btn">글쓰기</button></a>
                        </div>

                    </div>

                    <div class="pt-3">
                        <ul class="pagination justify-content-center mb-0">
                            <li class="page-item disabled">
                                <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#">Next</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end row -->
</div>
        
<div id="footer">

</div> 
    
</body>
</html>