<%--<%@ page import="com.gdhsweetcakejavafinal.model.client.Order" %>--%>
<%--<%@ page import="com.gdhsweetcakejavafinal.model.client.Item" %>--%>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:url value="/view/client/" var="url"></c:url>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Giỏ hàng</title>

    <!-- Css Styles -->

    <link rel="stylesheet" href="${url}css/style.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>

</head>
<style>
    .number a {
        cursor: pointer;
    }


    .number .minus, .plus {
        width: 20px;
        height: 31px;
        background: #f2f2f2;
        border-radius: 4px;
        padding: 1px 5px 8px 5px;
        border: 1px solid #ddd;
        display: inline-block;
        vertical-align: middle;
        text-align: center;
    }

    .number input {
        height: 34px;
        width: 50px;
        text-align: center;
        font-size: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
        display: inline-block;
        vertical-align: middle;
        font-weight: bold;
    }</style>
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
                    <h2>Giỏ hàng</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="welcome">Trang chủ</a>
                    <span>Giỏ hàng</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->

<!-- Shopping Cart Section Begin -->
<section class="shopping-cart spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="shopping__cart__table">
                    <table id="mycart">
                        <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th>Số lượng</th>
                            <th>Giá</th>
                            <th></th>
                        </tr>
                        </thead>
                        <c:forEach items="${listCart}" var="cartDetail">
                            <tbody id="sp">
                            <tr>
                                <td class="product__cart__item">
                                    <div class="product__cart__item__pic">
                                        <img src="${cartDetail.linkAnh}" alt="">
                                    </div>
                                    <div class="product__cart__item__text">
                                        <h6>${cartDetail.nameSP}</h6>
                                    </div>
                                </td>
                                <td class="quantity__item">
                                    <div class="number">
                                        <a class="minus"
                                           href="<%=request.getContextPath()%>/removeToCart?maSP=${cartDetail.maSP}">-</a>
                                        <input type="text" value="${cartDetail.quantity}"/>
                                        <a class="plus"
                                           href="<%=request.getContextPath()%>/addToCart?maSP=${cartDetail.maSP}&quantity-cart=${1}">+</a>
                                    </div>
                                </td>
                                <td class="cart__price"><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${cartDetail.price}" type="currency"/></td>


                                <td class="cart__close">
                                    <a href="<%=request.getContextPath()%>/deletedSPCart?maSPCart=${cartDetail.maSP}">
                                        <span title="" class="icon_close del-order">
                                        </span>
                                    </a>

                                </td>

                            </tr>

                            </tbody>
                        </c:forEach>
                    </table>
                </div>
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn ">
                            <a href="<%=request.getContextPath()%>/menu">Tiếp tục mua hàng</a>
                        </div>
                    </div>
                    <!-- <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="continue__btn update__btn">
                            <a href="#"><i class="fa fa-spinner"></i> Update cart</a>
                        </div>
                    </div> -->
                </div>
            </div>
            <div class="col-lg-4">
                <div class="cart__discount">
                    <h6>Mã giảm giá</h6>

                    <div class="cart__discount_item">

                        <p> Với hóa đơn thanh toán trên 300.000 sẽ được giảm giá 5%</p>

                        <p> Với hóa đơn thanh toán trên 600.000 sẽ được giảm giá 10%</p>

                    </div>
                </div>
                <div class="cart__total">
                    <h6>Tổng giỏ hàng</h6>
                    <ul>
                        <li>Mã giảm<span>${salePrice}</span></li>
                        <li>Tạm tính<span><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${sumCart}" type="currency"/></span></li>
                        <li>Số tiền giảm<span><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${cartSale}" type="currency"/></span></li>
                        <li>Tổng tiền<span><fmt:setLocale value="vi_VN"/>
                                    <fmt:formatNumber value="${sumCartSale}" type="currency"/></span></li>
                    </ul>
                    <a href="<%=request.getContextPath()%>/pay-cart" class="primary-btn">Kiểm tra thanh toán </a>
                </div>
            </div>
        </div>
        <%--            <%--%>
        <%--                    }--%>
        <%--                }--%>
        <%--            %>--%>
    </div>
</section>
<!-- Shopping Cart Section End -->

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
<!-- Backtop Begin -->
<div class="backtop">
    <i class="fa fa-angle-up"></i>
</div>
<div class="call">
    <a href="Tel: 0342499381"><i class="fas fa-phone-alt"></i></a>
</div>
<!-- Backtop End -->
<!-- Js Plugins -->

<script>

    function loadCart() {
        location.reload();
    }

    $(document).ready(function () {
        $('.minus').click(function () {
            var $input = $(this).parent().find('input');
            var count = parseInt($input.val()) - 1;
            count = count < 1 ? 1 : count;
            $input.val(count);
            $input.change();
            return false;
        });
        $('.plus').click(function () {
            var $input = $(this).parent().find('input');
            $input.val(parseInt($input.val()) + 1);
            $input.change();
            return false;
        });
    });</script>
</body>
</html>