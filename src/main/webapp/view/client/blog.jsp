<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.gdhsweetcakejavafinal.dao.client.impl.BlogDao" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.Blog" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/view/client/" var="url"></c:url>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Blog</title>
    <!-- Css Styles -->
    <link rel="stylesheet" href="${url}css/style.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Header Section Begin -->
<jsp:include page="header.jsp"></jsp:include>

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Blog</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="welcome">Trang chủ</a>
                    <span>Blog</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Blog Section Begin -->
<section class="blog spad">
    <div class="container">
        <div class="row">

            <div class="col-lg-8 read-more-container">
                                <c:forEach items="${listB}" var="x">
                                ${x.content}
                                </c:forEach>
            </div>

            <div class="col-lg-4">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__item">
                        <h5>Theo dõi</h5>
                        <div class="blog__sidebar__social">
                            <a href="#"><i class="fab fa-facebook-f"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-youtube-play"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                    <div class="blog__sidebar__item">
                        <h5>Bài viết nổi bật </h5>

                        <div class="blog__sidebar__recent">
                            <a href="blog-tintuc-1.jsp" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="view/client/img/blog/br-1.jpg" width="150px">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h4>Thưởng thức trà bánh_thú vui tao nhã</h4>
                                    <span>13 Nov 2020</span>
                                </div>
                            </a>
                            <a href="blog-tintuc-2.jsp" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="view/client/img/blog/blog2.jpg" width="150px">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h4>Tiramisu và Câu chuyện về chiếc bánh tình yêu</h4>
                                    <span>1 March 2021</span>
                                </div>
                            </a>
                            <a href="blog-tintuc-3.jsp" class="blog__sidebar__recent__item">
                                <div class="blog__sidebar__recent__item__pic">
                                    <img src="view/client/img/blog/br3.jpg" width="150px">
                                </div>
                                <div class="blog__sidebar__recent__item__text">
                                    <h4>Chiếc bánh nhỏ xinh_đơn giản</h4>
                                    <span>13 February 2020</span>
                                </div>
                            </a>

                        </div>
                    </div>

                    <div class="blog__sidebar__item">
                        <h5>Tin Thư</h5>
                        <p>Đăng ký email của bạn để nhận các cập nhật mới nhất của chúng tôi ngay trong hộp thư đến của
                            bạn.</p>
                        <form action="#">
                            <!-- <input type="text" placeholder="Email"> -->
                            <div class="form-group">
                                <input pattern="^[_A-Za-z0-9-]+(\.[_A-Za-z0-9-]+)*(\+[_A-Za-z0-9-]+)?@[\w-]+(\.[\w-]+)*(\.[\w]{2,})$"
                                       id="Email" name="Email" placeholder="Email" type="text">

                            </div>
                            <!-- <label for="agg">
                                Tôi đồng ý với các Điều khoản & Điều kiện
                                <input type="checkbox" id="agg">
                                <span class="checkmark"></span>
                            </label> -->
                            <button type="submit" class="site-btn">Gửi</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

<!-- Footer Section Begin -->
<jsp:include page="/view/client/footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form action="search" method="post" class="search-model-form">
            <input  name="txt" value="${txtS}" type="text" id="search-input" placeholder="Nhập ở đây.....">
            <button type="submit"><i class="fa fa-search"></i></button>
        </form>
    </div>
</div>

<!-- Search End -->

<!-- Backtop Begin -->
<div class="backtop">
    <i class="fa fa-angle-up"></i>
</div>
<div class="call">
    <a href="Tel: 0342499381"><i class="fas fa-phone-alt"></i></a>
</div>
<!-- Backtop End -->
<!-- Js Plugins -->
<script src="${url}js/jquery-3.3.1.min.js"></script>
<script src="${url}js/bootstrap.min.js"></script>
<script src="${url}js/jquery.nice-select.min.js"></script>
<script src="${url}js/jquery.barfiller.js"></script>
<script src="${url}js/jquery.magnific-popup.min.js"></script>
<script src="${url}js/jquery.slicknav.js"></script>
<script src="${url}js/owl.carousel.min.js"></script>
<script src="${url}js/jquery.nicescroll.min.js"></script>
<script src="${url}js/main.js"></script>
<script src="${url}js/blog.js"></script>

</body>
</html>