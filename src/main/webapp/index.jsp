<%@page import="model.KhachHang"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>PetsShop</title>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
	integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">

</head>
<body>
	<!-- navbar -->
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Home</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="https://www.facebook.com/hieutran.98.01">Who we are</a></li>
					<li class="nav-item"><a class="nav-link" href="https://www.facebook.com/xuzengg">Fanpage</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false">Tài khoản</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Giỏ hàng</a></li>
							<li><a class="dropdown-item" href="#">Đơn hàng đã mua</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled">Disabled</a>
					</li>
				</ul>
				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
					<%
						Object obj = session.getAttribute("khachHang");
						KhachHang khachHang = null;
						if(obj != null)
							khachHang = (KhachHang) obj;
						if(khachHang == null){
					%>
					<a class="btn btn-primary" style="white-space:nowrap;" href="dangnhap.jsp">Đăng nhập</a>
					<%} else{ %>
					
						<div class="row text-center" style="margin-left: 0.25em">
							<div class="row"><b><%=khachHang.getTenDangNhap() %></b></div>
							<div class="row"><a style="white-space: nowrap;" href="dang-xuat">
								Đăng xuất
							</a>
							</div>
						</div>
					<%} %>
				</form>
			</div>
		</div>
	</nav>
	<!-- endnavbar -->
	<!--  Page content-->
	<div class="container">
		<div class="row">
			<!-- menu left -->
			<div class="col-lg-3">
				<div class="list-group">
					<a href="#" class="list-group-item list-group-item-action active"
						aria-current="true">Thức ăn cho pets </a> <a href="#"
						class="list-group-item list-group-item-action">Dịch vụ</a>
					<a href="#" class="list-group-item list-group-item-action">
						Thực phẩm chức năng</a>
						<a href="#" class="list-group-item list-group-item-action">
						Hỗ trợ tư vấn</a>
				</div>
			</div>
			<!-- end menu left -->

			<!-- slider and Products -->

			<div class="col-lg-9 bg-warning">
				<div id="carouselExample" class="carousel slide">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="img/slider/background.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="img/slider/background.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="img/slider/background.png" class="d-block w-100" alt="...">
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExample" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExample" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<!-- end slider and Products -->
			<!-- Products -->
			<!-- End Products -->


		</div>

	</div>
	<!--  end page content -->
	<!--  footer -->
	<footer class="py-3 my-4">
		<ul class="nav justify-content-center border-bottom pb-3 mb-3">
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Home</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Features</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">Pricing</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">FAQs</a></li>
			<li class="nav-item"><a href="#"
				class="nav-link px-2 text-muted">About</a></li>
		</ul>
		<p class="text-center text-muted">© 2022 Company, Inc</p>
	</footer>
	<!-- end footer -->
</body>
</html>