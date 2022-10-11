<%@ page import="com.gdhsweetcakejavafinal.dao.client.impl.ContactDao" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.StoreBranch" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Liên hệ </title>
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
    <!-- Css Styles -->
    <link rel="stylesheet" href="view/client/css/style.css" type="text/css">
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
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->

<!-- Contact Section Begin -->
<section class="contact spad">
    <div class="container">
        <div class="map">
            <div class="map__iframe">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3919.2071575199593!2d106.70067514937817!3d10.795439961759058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x317528b689fa7ded
                    %3A0x22b79762b9bc6a91!2zMTAwIMSQaeG7h24gQmnDqm4gUGjhu6csIFBoxrDhu51uZyAxNywgQsOsbmggVGjhuqFuaCwgVGjDoG5oIHBo4buRIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1635959011292!5m2!1svi!2s"   width= "100%"  height="400" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>

        <div class="contact__address">
            <div class="row">
                <%ContactDao contactDao = new ContactDao();%>
                <% for(StoreBranch sb: contactDao.getListStoreBranch()){%>
                <div class="col-lg-4 col-md-6 col-sm-6">
                    <div class="contact__address__item">
                        <h6><%=sb.getDistrictName()%></h6>
                        <ul>
                            <li>
                                <span class="icon_pin_alt"></span>
                                <p><%=sb.getAddress()%></p>
                            </li>
                            <li><span class="icon_headphones"></span>
                                <p><%=sb.getSDT()%></p>
                            </li>
                            <li><span class="icon_mail_alt"></span>
                                <p><%=sb.getEmail()%></p>
                            </li>
                        </ul>
                    </div>
                </div>
                <%}%>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="contact__text">
                        <h3>Liên hệ với chúng tôi</h3>
                        <ul>
                            <li>Thời gian:</li>
                            <li>Thứ hai-Thứ sáu: 5:00am to 9:00pm</li>
                            <li>Thứ bảy-CN: 6:00am to 9:00pm</li>
                        </ul>
                        <img src="img/cake-piece.png" alt="">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="contact__form">
                        <form action="comment" method="post" id ="form">
                            <div class="row">
                                <div class="col-lg-6">
                                    <input name="nameComment"  type="text" placeholder="Họ và tên ">
                                </div>
                                <div class="col-lg-6">
                                    <input name="emailComment" type="email" onfocusout="formValidate()" placeholder="Email" class="email" >
                                    <p id="email_error" style="display: none"> Vui lòng nhập email</p>
                                </div>
                                <div class="col-lg-12">
                                    <textarea placeholder="Lời góp ý" name="txtComments"></textarea>
                                    <button type="submit" class="site-btn" >Gửi</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- Contact Section End -->

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


<script type="text/javascript">
    function checkEmail() {
        var email = document.getElementById('emailComment');
        var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        if (!filter.test(email.value)) {
            alert('Hay nhap dia chi email hop le.\nExample@gmail.com');
            email.focus;
            return false;
        }
        else
        {
            alert('Email nay hop le.');
        }
    }

    function formValidate(){
        var regExp = /^[A-Za-z][\w$.]+@[\w]+\.\w+$/;
        var email = document.getElementById("emailComment").value;
        if (regExp.test(email))
            alert('Email hợp lệ!');
        else
            alert('email không hợp lệ!');
    }
</script>
<script src="${url}js/main.js"></script>
</body>
</html>