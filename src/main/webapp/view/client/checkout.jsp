<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<c:url value="/view/client/" var="url"></c:url>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thanh toán</title>

    <!-- Css Styles -->
    <link rel="stylesheet" href="${url}css/style.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
</head>

<body>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- Offcanvas Menu Begin -->
<div class="offcanvas-menu-overlay"></div>
<div class="offcanvas-menu-wrapper">
    <div class="offcanvas__cart">
        <div class="offcanvas__cart__links">
            <a href="#" class="search-switch"><i class="fa fa-search"></i></a>
            <a href="wisslist.jsp"><i class="fa fa-heart-o"></i></a>
        </div>
        <div class="offcanvas__cart__item">
            <a href="#"><i class="fa fa-shopping-basket"></i><span>3</span></a>
        </div>
    </div>
    <div class="offcanvas__logo">
        <a href="index.jsp"><img src="img/logo1.jpg" alt=""></a>
    </div>
    <div id="mobile-menu-wrap"></div>
    <div class="offcanvas__option">
        <ul>
            <li><a href="#"><i class="fa fa-user"></i></a></li>
            <li><a href="login.jsp">Đăng nhập</a></li>
        </ul>
    </div>
</div>
<!-- Offcanvas Menu End -->

<!-- Header Section Begin -->
<jsp:include page="header.jsp"/>
<!-- Header Section End -->

<!-- Breadcrumb Begin -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__text">
                    <h2>Thanh toán </h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="index.jsp">Trang chủ</a>
                    <span>Thanh toán</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
        <div class="checkout__form">
            <form action="<%=request.getContextPath()%>/payment-bills?sale=${cartSale}&moneyPay=${sumCartSale}"
                  method="post">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <h6 class="checkout__title">Chi tiết hóa đơn</h6>
                        <div class="checkout__input">
                            <p>Họ và Tên</p>
                            <input name="name-customer" value="${nameCustomer}" type="text">

                        </div>
                        <div class="checkout__input">
                            <p>Địa chỉ</p>
                            <input name="address-customer" value="${addressCustomer}"
                                   type="text" placeholder="Số nhà, khu phố, xã / phường">
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Số điện thoại</p>
                                    <input name="phone-customer" value="${phoneCustomer}" type="text">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Email</p>
                                    <input name="email-customer" value="${emailCustomer}" type="text">
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input">
                            <p>Ghi chú</p>
                            <input type="text" name="note-delivery"
                                   placeholder="Ví dụ giao hàng để ý bánh ">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="checkout__order">
                            <h6 class="order__title">Giỏ hàng</h6>
                            <div class="checkout__order__products">Sản phẩm  <span> Số lượng &emsp;  &emsp; &emsp; &emsp;Giá</span></div>
                            <ul class="checkout__total__products">
                                <%int i = 1;%>
                                <c:forEach items="${listCart}" var="cartDetail">
                                    <li><samp>0<%=i++%>. </samp>${cartDetail.nameSP} <span>${cartDetail.quantity} &emsp;&emsp; &emsp;<fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${cartDetail.price}" type="currency"/></span></li>
                                </c:forEach>

                            </ul>
                            <ul class="checkout__total__all">
                                <li>Mã giảm<span>${salePrice}</span></li>
                                <li>Tạm tính<span><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${sumCart}" type="currency"/></span></li>
                                <li>Số tiền giảm<span><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${cartSale}" type="currency"/></span></li>
                                <li>Tổng tiền<span><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${sumCartSale}" type="currency"/></span></li>
                            </ul>

                            <button type="submit" class="site-btn">
                                Thanh
                                toán
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Search Begin -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch">+</div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Nhập ở đây.....">
            <button type="button"><i class="fa fa-search"></i></button>
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

</body>

</html>