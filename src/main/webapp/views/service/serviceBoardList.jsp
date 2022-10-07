<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../main/header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Favicon -->
<link href="/ping/resources/img/favicon.ico" rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet">

<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="/ping/resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="/ping/resources/css/style.css" rel="stylesheet">
<link href="/ping/resources/css/serviceBoard.css" rel="stylesheet">
<link href="/ping/resources/css/serviceTap.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script>

	
	
	$(function() {

		$("#header").load("header.jsp");

		$("#footer").load("footer.jsp");

		$('#serviceTap').load("serviceTap.jsp");

	});
</script>

<title>Document</title>

</head>
<body>

	<div class="container">
		<%@include file="serviceTap.jsp"%>
		<div class="board-search-div">
			<div>
				<div class="card-body">
					<form action="serviceBoardList.do" method="post" >

						<select name="searchCondition">
							<option value='boardTitle'>제목</option>
							<option value='boardContent'>내용</option>
							<option value='memberId'>작성자</option>
						</select>
						<div class="input-group mb-0">
							
							<input name="searchKeyword" type="text" class="form-control" placeholder="Search" aria-describedby="project-search-addon" />
							<div class="input-group-append">
								<button class="btn btn-info" type="submit" id="project-search-addon">
									<i class="fa fa-search search-icon font-12"></i>
								</button>
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
										<th scope="col">Start Date</th>
										<th scope="col">Status</th>
										<th scope="col">ID</th>
										<!-- <th scope="col">Action</th> -->
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${boardList}" var="board">
										<tr>
											<th>${board.boardId }</th>
											<td align="left"><a href="serviceBoard.do?boardId=${board.boardId }"> ${board.boardTitle }</a></td>
											<td><fmt:formatDate value="${board.boardDate }" pattern="yyyy-MM-dd" /></td>
											<td><span class="text-success font-12"><i class="mdi mdi-checkbox-blank-circle mr-1"></i>${board.answerYN }</span></td>
											<td>
												<div class="user-id">
												<span>${board.memberId }</span>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<!-- end project-list -->
						<!-- start write-btn -->
						<div>
							<div class="board-input-div justify-content-end">
								<a href="serviceWrite.do"><button class="btn btn-dark board-write-btn">글쓰기</button></a>
							</div>

						</div>

						<div class="pt-3">
							<ul class="pagination justify-content-center mb-0">
								<li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
								<li class="page-item"><a class="page-link" href="#">1</a></li>
								<li class="page-item active"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end row -->
	</div>


</body>
<%@include file="../main/footer.jsp"%>
</html>