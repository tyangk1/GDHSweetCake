<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Cake Template">
    <meta name="keywords" content="Cake, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Đăng nhập</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <!-- Css Styles -->
    <link rel="stylesheet" href="view/client/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/flaticon.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/barfiller.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="view/client/css/style_1.css" type="text/css">

    <link rel="shortcut icon" type="image/png" href="${url}/img/logo.png"/>
</head>

<body>
<!-- Page Preloder -->
<%--<div id="preloder">--%>
<%--    <div class="loader"></div>--%>
<%--</div>--%>

    <%
    String user_name_err="", user_email_err="",user_pass_err="";
    if(request.getAttribute("user_name_err")!=null){
        user_name_err =(String) request.getAttribute("user_name_err");
    }
    if(request.getAttribute("user_email_err")!=null){
        user_email_err =(String) request.getAttribute("user_email_err");
    }
    if(request.getAttribute("user_pass_err")!=null) {
        user_pass_err = (String) request.getAttribute("user_pass_err");
    }
        String user_name="", user_email="",user_pass="";
        if(request.getAttribute("user_name")!=null){
            user_name =(String) request.getAttribute("user_name");
        }
        if(request.getAttribute("user_email")!=null){
            user_email =(String) request.getAttribute("user_email");
        }
        if(request.getAttribute("user_pass")!=null){
            user_pass =(String) request.getAttribute("user_pass");
        }

    %>
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
<jsp:include page="header.jsp"></jsp:include>
<!-- Header Section End -->
<!-- Form Section Begin-->
<section class="left-section">
    <div id="left-cover" class="cover cover-hide">
        <img src="view/client/img/cover.jpg" alt="">
        <h1>Welcome !</h1>
        <h3>Bạn đã có tài khoản ?</h3>
        <button type="button" class="switch-btn" onclick="location.reload()">Đăng nhập</button>
    </div>
    <div id="left-form" class="form fade-in-element">
        <h1>Đăng nhập</h1>
        <form name="loginform" action="login" method="post">
            <input type="text" value="${useremail}" name="user-email" class="input-box" placeholder="Email" required>
            <input type="password" value="${userpass}" name="user-pass" class="input-box" placeholder="Mật khẩu" required>

            <p style="color:red; display:block; margin-left: 20px">
                ${errorMsg}
            </p>
            <input type="submit" name="login-btn" class="btn" value="Đăng nhập">
        </form>
        <a href="forgotPassword">Quên mật khẩu ?</a>

        <%
            String stt = request.getParameter("status");
            if(stt != null) {
        %>
        <p style="color: red; display: block"><%=stt%></p>
        <%
            }
            %>
        <div class="other-login">
            <h3>Hoặc</h3>
            <div class="icon">
                <fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
                </fb:login-button>
                <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
            </div>
        </div>
    </div>

</section>


<section class="right-section">
    <div id="right-cover" class="cover fade-in-element">
        <img src="view/client/img/cover.jpg" alt="">
        <h1>Welcome !</h1>
        <h3>Bạn chưa có tài khoản ?</h3>
        <button type="button" class="switch-btn" onclick="switchSignup()">Đăng ký</button>
    </div>
    <div id="right-form" class="form form-hide">
        <h1>Đăng ký</h1>
        <form action="register" method="post">
            <p style="color: red; margin-left: 20px"><%=user_name_err%></p>
            <input type="text" name="user-name" class="input-box" placeholder="Tên người dùng" value="<%=user_name%>">
            <p style="color: red; margin-left: 20px"><%=user_email_err%> </p>
            <input type="email" name="user-email" class="input-box" placeholder="Email" value="<%=user_email%>">
            <p style="color: red; margin-left: 20px"><%=user_pass_err%> </p>
            <input type="password" name="user-pass" class="input-box" placeholder="Mật khẩu" value="<%=user_pass%>">
            <input type="submit" name="signup-btn" class="btn" value="Đăng ký">
        </form>
    </div>
</section>
<!-- Form Section End-->
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

<div class="call">
    <a href="Tel: 0342499381"><i class="fas fa-phone-alt"></i></a>
</div>
<!-- Js Plugins -->
<script src="view/client/js/jquery-3.3.1.min.js"></script>
<script src="view/client/js/bootstrap.min.js"></script>
<script src="view/client/js/jquery.nice-select.min.js"></script>
<script src="view/client/js/jquery.barfiller.js"></script>
<script src="view/client/js/jquery.magnific-popup.min.js"></script>
<script src="view/client/js/jquery.slicknav.js"></script>
<script src="view/client/js/owl.carousel.min.js"></script>
<script src="view/client/js/jquery.nicescroll.min.js"></script>
<script src="view/client/js/main.js"></script>

<script>
    function statusChangeCallback(response) {
        console.log('statusChangeCallback');
        console.log(response);
        if (response.status === 'connected') {
            testAPI();
        } else {
            document.getElementById('status').innerHTML = 'Please log ' +
                'into this app.';
        }
    }

    function checkLoginState() {
        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });
        FB.api('/me',{fields: ' name, email'}, function(response) {
            console.log(response);
            window.location.href = 'Login?action=Face&name='+response.name+'&email='+response.email+'&id='+response.id;
        });
    }

    window.fbAsyncInit = function() {
        FB.init({
            appId      : '1069764480601301',
            cookie     : true,
            xfbml      : true,
            version    : 'v14.0'
        });


        FB.getLoginStatus(function(response) {
            statusChangeCallback(response);
        });

    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/en_US/sdk.js";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

    function testAPI() {
        console.log('Welcome!  Fetching your information.... ');
        FB.api('/me', function(response) {
            console.log('Successful login for: ' + response.name);
            document.getElementById('status').innerHTML =
                'Thanks for logging in, ' + response.name + '!';
        });
    }
</script>

<script>
    function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
    }
</script>
</body>
</html>
