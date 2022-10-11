<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Chi tiết sản phẩm</title>

    <!-- Css Styles -->
    <link rel="stylesheet" href="view/client/css/style.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
<body>
    <!-- Page Preloder -->
     <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <jsp:include page="header.jsp"/>
    <!-- Header Section End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__text">
                        <h2> Chi tiết sản phẩm</h2>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="breadcrumb__links">
                        <a href="welcome">Trang chủ</a>
                        <a href="menu">Menu</a>
                        <span>Chi tiết sản phẩm</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Details Section Begin -->

    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="product__details__img">
                        <div class="product__details__big__img">
                            <img class="big_img" src="${detail.linkAnh}" alt="">
                        </div>
                      
                    </div>
                </div>
                <div class="col-lg-6">
<%--                    <form action="${pageContext.request.contextPath}/addToCart?maSP=${detail.maSP}" method="post">--%>
                        <form action="<%=request.getContextPath()%>/addToCart?maSP=${detail.maSP}" method="post">
                    <div class="product__details__text">
                        <h3>${detail.tenSP}</h3>
                        <hr  width="600px" size="7px"  color="black" />
                        <h3><fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${detail.gia}"></fmt:formatNumber></h3>
                        <hr  width="600px" size="7px"  color="black" />
                        <div class="primary-box">
                            <ul><b>Mô tả ngắn</b></ul>
                            <li>${detail.moTa}</li>
                        </div>

                        <div class="product__details__option">
                            <p>Số lượng:</p>

                            <div class=" row quantity">
                                <div class="pro-qty">
                                    <input name="quantity-cart" min="1" type="text" value="1">
                                </div>
                            </div>

                        </div>
                        <div class="row product__details__option">
                            <div class="primary ">
<%--                                <button type="submit" class="primary-btn">--%>
<%--                                    Thêm vào giỏ hàng--%>
<%--                                </button>--%>
<%--                                <a href="addToCart?maSP=${detail.maSP}" class="primary-btn">Thêm vào giỏ hàng</a>--%>
                                <input type="submit" class="primary-btn" value="Thêm vào giỏ hàng">
                            </div>
                            <div class="heart__btn"><a class="heart__btn"><span class="icon_heart_alt"></span></a></div>
                        </div>
                    </div>
                    </form>
                </div>

                </div>
            </div>

            
        </div>
    </section>
    <!-- Shop Details Section End -->

    <!-- Related Products Section Begin -->
    <section class="related-products spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2>Sản phẩm liên quan </h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="related__products__slider owl-carousel">
                    <c:forEach items="${listP}" var="p">
                    <div class="col-lg-3">
                        <div class="product__item">
                                <div class="product__item__pic set-bg" data-setbg="${p.linkAnh}">
                                 </div>
                            <div class="product__item__text">
                                <h6><a href="detail?maSP=${p.maSP}&maLoaiSP=${p.maLoaiSP}">${p.tenSP}</a></h6>
                                <div class="product__item__price"><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${p.gia}" type="currency"/></div>
                                <div class="cart_add">
                                    <a href="<%=request.getContextPath()%>/addToCart?maSP=${p.maSP}">Thêm vào giỏ</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </section>
    <!-- Related Products Section End -->

    <div style="text-align: center">
        <div class="fb-comments" data-href="http://localhost:8080/" data-width="900" data-numposts="2"></div>
    </div>
    <!-- Footer Section Begin -->
    <jsp:include page="footer.jsp"></jsp:include>
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

<!-- Js Plugins -->
    <div id="fb-root"></div>
    <script async defer
            crossorigin="anonymous"
            src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0&appId=1069764480601301&autoLogAppEvents=1"
            nonce="paawnNsO"></script>
</body>

</html>