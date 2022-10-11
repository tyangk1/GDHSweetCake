<%@ page import="com.gdhsweetcakejavafinal.dao.client.impl.FooterDao" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.OperateTime" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.Store" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url value="/view/client/" var="url"></c:url>
<html>
<head>
    <title>Footer</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${url}css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${url}css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="${url}css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="${url}css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="${url}css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${url}css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${url}css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${url}css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${url}css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${url}css/style_1.css" type="text/css">
    <link rel="stylesheet" href="${url}css/cart.css" type="text/css">
    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
</head>
<body>
<footer class="footer set-bg" data-setbg="${url}img/footer-bg.jpg">
    <div class="container">
        <%FooterDao footerDao = new FooterDao();%>
        <div class="row">
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__widget">
                    <h6>GIỜ LÀM VIỆC</h6>
                    <% for (OperateTime fot : footerDao.getListTime()) {%>
                    <ul>
                        <li> <%=fot.getContent()%></li>

                    </ul>
                    <%}%>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__logo">
                        <a href="#"><img src="${url}img/footer-logo.png" alt=""></a>
                    </div>
                    <% for (Store s : footerDao.getListStore()) {%>
                    <p><%=s.getContent()%></p>
                    <%}%>
                    <div class="footer__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-youtube-play"></i></a>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6">
                <div class="footer__newslatter">
                    <h6>Subscribe</h6>
                    <p>Nhận các bản cập nhật và ưu đãi mới nhất.</p>
                    <form action="#">
                        <input type="text" placeholder="Email">
                        <button type="submit"><i class="fa fa-send-o"></i></button>
                    </form>
                    <div class="fb-page" style="margin-top: 20px" data-href="https://www.facebook.com/gdhsweetcake" data-tabs="timeline" data-width="360" data-height="120" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/gdhsweetcake" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/gdhsweetcake">GDH Sweet Cake</a></blockquote></div>
                </div>
            </div>
            <!-- Messenger Plugin chat Code -->
            <div id="fb-root1"></div>

            <!-- Your Plugin chat code -->
            <div id="fb-customer-chat" class="fb-customerchat">
            </div>

            <script>
                var chatbox = document.getElementById('fb-customer-chat');
                chatbox.setAttribute("page_id", "103802949114642");
                chatbox.setAttribute("attribution", "biz_inbox");
            </script>

            <!-- Your SDK code -->
            <script>
                window.fbAsyncInit = function() {
                    FB.init({
                        xfbml            : true,
                        version          : 'v14.0'
                    });
                };

                (function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script>
        </div>
    </div>
    <div class="copyright">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <p class="copyright__text text-white">
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> GDH. All rights reserved
                    </p>
                </div>
                <div class="col-lg-5">
                    <div class="copyright__widget">
                        <ul>
                            <li><a href="#">Chính sách bảo mật</a></li>
                            <li><a href="#">Điều khoản dịch vụ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div id="fb-root"></div>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v14.0&appId=1069764480601301&autoLogAppEvents=1" nonce="UCxUkOsG"></script>
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
