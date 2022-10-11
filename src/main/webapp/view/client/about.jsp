<%@ page import="com.gdhsweetcakejavafinal.dao.client.impl.IndexDao" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.Chef" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"></c:url>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Giới thiệu</title>
    <!-- Css Styles -->
    <link rel="stylesheet" href="${url}css/style_1.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>


<!-- Header Section Begin -->
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Giới thiệu</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="welcome">Trang chủ</a>
                    <span>Giới thiệu</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- About Section Begin -->
<section class="about spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <video class="about__video set-bg" controls width="100%">
                    <source src="view/client/img/intro.mp4">
                </video>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6 col-md-6">
                <div class="about__text">
                    <div class="section-title">
                        <span>Giới thiệu Shop</span>
                        <h2>Không chỉ là bánh ngọt, đây là sự yêu thương !!!</h2>
                    </div>
                    <p>GDH khởi đầu là một cơ sở sản xuất bánh với qui mô gia đình vào đầu những năm 2019.
                        Trải qua gần 3 năm xây dựng và phát triển,
                        GDH đã xây dựng được được chuỗi hệ thống với 3 shop lớn nhỏ tại TP.HCM.</p>
                    <p>Là thương hiệu được biết đến với những sản phẩm chất lượng và ngon miệng từ các loại
                        bánh. Cùng với tinh thần học hỏi trách nhiệm,
                        tiệm bánh GDH đã đang và sẽ luôn mang đến cho khách hàng những chiếc bánh thơm ngon, dinh dưỡng
                        và hợp vệ sinh với giá cả phải chăng.</p>
                </div>
            </div>
            <div class="col-lg-6 col-md-6">
                <div class="about__bar">
                    <img src="view/client/img/welcome-right.png" alt="">
                </div>
            </div>
        </div>
    </div>
</section>
<!-- About Section End -->

<!-- Testimonial Section Begin -->
<section class="testimonial spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="section-title">
                    <span>Đánh giá</span>
                    <h2>Nhận xét của khách hàng</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="testimonial__slider owl-carousel">
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="view/client/img/testimonial/ta-1.jpg" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Thanh Thùy</h5>
                                <span>TP.HCM</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua viverra lacus vel facilisis.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="view/client/img/testimonial/ta-2.jpg" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Thu Phương</h5>
                                <span>Bình Dương</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua viverra lacus vel facilisis.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="view/client/img/testimonial/ta-1.jpg" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Yến Nhi</h5>
                                <span>TP.HCM</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua viverra lacus vel facilisis.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="view/client/img/testimonial/ta-2.jpg" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Kiều Oanh</h5>
                                <span>TP.HCM</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua viverra lacus vel facilisis.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="view/client/img/testimonial/ta-1.jpg" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Hồng Thư</h5>
                                <span>Bình Dương</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua viverra lacus vel facilisis.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="testimonial__item">
                        <div class="testimonial__author">
                            <div class="testimonial__author__pic">
                                <img src="view/client/img/testimonial/ta-2.jpg" alt="">
                            </div>
                            <div class="testimonial__author__text">
                                <h5>Thúy Hải</h5>
                                <span>Long An</span>
                            </div>
                        </div>
                        <div class="rating">
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star"></span>
                            <span class="icon_star-half_alt"></span>
                        </div>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
                            ut labore et dolore magna aliqua viverra lacus vel facilisis.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Testimonial Section End -->

<!-- Team Section Begin -->
<section class="team spad">
    <% IndexDao dauBepDao = new IndexDao();%>
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-7 col-sm-7">
                <div class="section-title">
                    <span>Đội ngũ</span>
                    <h2>Mỗi đầu bếp là 1 người nghệ sĩ</h2>
                </div>
            </div>
            <div class="col-lg-5 col-md-5 col-sm-5">
                <div class="team__btn">
                    <a href="#" class="primary-btn">Tham gia</a>
                </div>
            </div>
        </div>
        <div class="row">
            <% for (Chef db : dauBepDao.getListChef()) { %>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="team__item set-bg" data-setbg=<%=db.getImg()%>>
                    <div class="team__item__text">
                        <h6><%=db.getNameDB()%></h6>
                        <span><%=db.getPosition()%></span>
                        <div class="team__item__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
        </div>

    </div>
</section>
<!-- Team Section End -->

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

<script src="${url}js/main.js"></script>
</body>

</html>