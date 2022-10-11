<%@ page import="com.gdhsweetcakejavafinal.dao.client.impl.ProductDao" %>
<%@ page import="java.text.NumberFormat" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:url value="/view/client/" var="url"></c:url>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Menu</title>
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
                    <h2>${pt} ${tenCa}</h2>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="breadcrumb__links">
                    <a href="welcome">Trang chủ</a>
                    <span>${pt} ${tenCa}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->


<!-- Shop Section Begin -->
<div class="content">
    <div class="container">
        <div class="content__search">
            <form action="search" method="post" >
            <input name="txt" type="text"  value="${txtS}" placeholder="Nhập vào đây">
            <button type="submit" id="search"><i class="fa fa-search"></i></button>
            </form>
        </div>
        <div class="sort__product">
            <select class="nice-select">
                <option value="">Xếp theo: Nổi bật</option>
                <option value="">Giá thấp đến cao</option>
                <option value="">Giá cao đến thấp</option>
            </select>
            <a href="#"><i class="fa fa-list"></i></a>
            <a href="#"><i class="fa fa-reorder"></i></a>
        </div>
        <div class="content__product" id="product">
            <c:forEach items="${listP}" var="o">
                <div class="content__product__item">
                    <a href="detail?maSP=${o.maSP}&maLoaiSP=${o.maLoaiSP}"><img src="${o.linkAnh}" alt=""></a>
                    <div class="product__item__text">
                        <h6 class="title">${o.tenSP}</h6>
                        <div class="price"><fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="${o.gia}" /> </div>
                        <div class="cart_add">
<%--                            <button idPro="${o.getMaSP()}" id="idpro-order" type="button" class="btn btn-info idpro-order">--%>
                            <a href="addToCart?maSP=${o.getMaSP()}">
                                <span>Thêm vào giỏ</span>
                            </a>
<%--                            </button>--%>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!--        <div class="no-result">Không có kết quả tìm kiếm</div>-->
        <div class="content__paging">
            <div class="page">
                <ul>
                    <div class="number-page" id="number-page">
                        <c:forEach begin="1" end="${endP}"  var="i">
                            <c:choose>
                                <c:when test="${maLoaiSP==null}">
                                    <li id="${i}"><a href="subcategory?maCategory=${maCategory}&index=${i}">${i}</a></li>
                                </c:when>
                                <c:otherwise>
                                    <li id="${i}"><a href="category?maLoaiSP=${maLoaiSP}&index=${i}">${i}</a></li>
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>
                    </div>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- Shop Section End -->

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

<script>
    document.getElementById('${index}').style.backgroundColor = "orange";
</script>

</body>

</html>