<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%--<html>--%>
<head>
    <meta charset="UTF-8">
    <!-- Tell the browser to be responsive to screen width -->

    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.4 -->
    <link href="<%=request.getContextPath()%>/view/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- FontAwesome 4.3.0 -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <!--    font themify-icon-->
    <link rel="stylesheet"
          href="<%=request.getContextPath()%>/view/admin/bootstrap/fonts/themify-icons-font/themify-icons/themify-icons.css">
    <!-- Ionicons 2.0.0 -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <!-- Theme style -->
    <link href="<%=request.getContextPath()%>/view/admin/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="<%=request.getContextPath()%>/view/admin/dist/css/skins/_all-skins.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- iCheck -->
    <link href="<%=request.getContextPath()%>/view/admin/plugins/iCheck/flat/blue.css" rel="stylesheet"
          type="text/css"/>
    <!-- Morris chart -->
    <link href="<%=request.getContextPath()%>/view/admin/plugins/morris/morris.css" rel="stylesheet" type="text/css"/>
    <!-- jvectormap -->
    <link href="<%=request.getContextPath()%>/view/admin/plugins/jvectormap/jquery-jvectormap-1.2.2.css"
          rel="stylesheet" type="text/css"/>
    <!-- Date Picker -->
    <link href="<%=request.getContextPath()%>/view/admin/plugins/datepicker/datepicker3.css" rel="stylesheet"
          type="text/css"/>
    <!-- Daterange picker -->
    <link href="<%=request.getContextPath()%>/view/admin/plugins/daterangepicker/daterangepicker-bs3.css"
          rel="stylesheet" type="text/css"/>
    <!-- bootstrap wysihtml5 - text editor -->
    <link href="<%=request.getContextPath()%>/view/admin/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css"
          rel="stylesheet" type="text/css"/>
    <link href="<%=request.getContextPath()%>/view/admin/dist/css/sweetalert.css" rel="stylesheet"
          type="text/css"/>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="<%=request.getContextPath()%>/view/admin/dist/js/sweetalert.min.js"></script>

    <![endif]-->
</head>
<body class="skin-blue sidebar-mini">
<body class="wrapper">

<header class="main-header">
    <!-- Logo -->
    <a href="#" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>G</b>DH</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Admin</b>GDH</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only"></span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->
                <li class="dropdown messages-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-envelope-o"></i>
                        <span class="label label-success">4</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">B???n c?? 4 tin nh???n m???i</li>
                        <li>
                            <!-- inner menu: contains the actual data -->
                            <ul class="menu">
                                <li><!-- start message -->
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image"/>
                                        </div>
                                        <h4>
                                            Minh H???i
                                            <small><i class="fa fa-clock-o"></i> 5 ph??t tr?????c</small>
                                        </h4>
                                        <p style="color: #0c0c0c; font-size: 11px; font-weight: bold">M??nh ???? chuy???n
                                            kho???n tr?????c v?? chi???u nay 3 gi??? gh?? c???a h??ng l???y lu??n ???!!!</p>
                                    </a>
                                </li><!-- end message -->
                                <li>
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image"/>
                                        </div>
                                        <h4>
                                            C???m Ti??n
                                            <small><i class="fa fa-clock-o"></i> 15 ph??t tr?????c</small>
                                        </h4>
                                        <p style="color: #0c0c0c; font-size: 11px; font-weight: bold">C???m ??n r???t nhi???u
                                            ???!!!</p>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="dist/img/user4-128x128.jpg" class="img-circle" alt="User Image"/>
                                        </div>
                                        <h4>
                                            Ph??c Thi??n
                                            <small><i class="fa fa-clock-o"></i> 16 ph??t tr?????c</small>
                                        </h4>
                                        <p style="color: #0c0c0c; font-size: 11px; font-weight: bold">M??nh s??? gh?? c???a
                                            h??ng ????? l???y b??nh, xin c???m ??n. </p>

                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="dist/img/user3-128x128.jpg" class="img-circle" alt="User Image"/>
                                        </div>
                                        <h4>
                                            H??ng Qu??n
                                            <small><i class="fa fa-clock-o"></i> 30 ph??t tr?????c</small>
                                        </h4>
                                        <p style="color: #0c0c0c; font-size: 11px; font-weight: bold">Ch??u nh?? r???t
                                            th??ch, s??? ???ng h??? c???a h??ng n???a <3</p>

                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer"><a href="#">Xem t???t c???</a></li>
                    </ul>
                </li>
                <!-- Notifications: style can be found in dropdown.less -->
                <li class="dropdown notifications-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-warning">10</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">B???n c?? 10 th??ng b??o m???i</li>
                        <li>
                            <!-- inner menu: contains the actual data -->
                            <ul class="menu">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-users text-aqua"></i> 5 th??nh vi??n m???i
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-warning text-yellow"></i> C???nh b??o ????ng nh???p l???
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-users text-aqua"></i> 8 th??nh vi??n m???i
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-shopping-cart text-green"></i> 10 s???n ph???m m???i ???? th??m v??o gi???
                                        h??ng
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-user text-red"></i> B???n ???? x??a 1 th??nh vi??n
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer"><a href="#">Xem t???t c???</a></li>
                    </ul>
                </li>

                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <c:if test="${sessionScope.admin.img.indexOf('http') != -1}">
                            <img src="${sessionScope.admin.img}" class="user-image" alt="User Image"/>
                        </c:if>
                        <c:if test="${sessionScope.admin.img.indexOf('http') == -1}">
                            <img src="<%=request.getContextPath()%>/${sessionScope.admin.img}" class="user-image"
                                 alt="User Image"/>
                        </c:if>
                        <%--                            <img src="<%=request.getContextPath()%>/${sessionScope.admin.img}" class="user-image" alt="User Image" />--%>
                        <span class="hidden-xs">${sessionScope.admin.nameAccount}</span>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- User image -->
                        <li class="user-header">
                            <c:if test="${sessionScope.admin.img.indexOf('http') != -1}">
                                <img src="${sessionScope.admin.img}" class="img-circle" alt="User Image"/>
                            </c:if>
                            <c:if test="${sessionScope.admin.img.indexOf('http') == -1}">
                                <img src="<%=request.getContextPath()%>/${sessionScope.admin.img}" class="img-circle"
                                     alt="User Image"/>
                            </c:if>
                            <%--                                <img src="<%=request.getContextPath()%>/${sessionScope.admin.img}" class="img-circle" alt="User Image" />--%>
                            <p>
                                ${sessionScope.admin.nameAccount}
                                <small>Administrator</small>
                                <small>GDH - Sweet cake</small>
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat">H??? s?? th??ng tin</a>
                            </div>
                            <div class="pull-right">
                                <a href="logout" class="btn btn-default btn-flat">????ng xu???t</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel" style="height: 65px;">
            <div class="pull-left image">
                <img src="<%=request.getContextPath()%>/view/admin/dist/img/logo1.png"
                     style="border-radius: 0;padding-top: 15px; " class="img-circle" alt="User Image"/>
            </div>
            <div class="pull-left info">
                <p>GDH - Sweet cake</p>
                <a href="#"><i class="fa fa-circle text-success"></i> ??ang ho???t ?????ng</a>
            </div>
        </div>
        <!-- search form -->
        <%--            <form action="#" method="get" class="sidebar-form">--%>
        <%--                <div class="input-group">--%>
        <%--                    <input type="text" name="q" class="form-control" placeholder="T??m ki???m..." />--%>
        <%--                    <span class="input-group-btn">--%>
        <%--                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>--%>
        <%--              </span>--%>
        <%--                </div>--%>
        <%--            </form>--%>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">H??? TH???NG WEBSITE</li>
            <li class="active treeview">
                <a href="home">
                    <i class="fa fa-bar-chart"></i> <span>Th???ng k??</span>
                </a>
            </li>
            <li class="header">QU???N L?? H??? TH???NG</li>

            <li class="treeview">
                <a href="">
                    <i class="fa fa-tag"></i>
                    <span>S???n ph???m</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="productType"><i class="fa fa-circle-o"></i> Qu???n l?? lo???i s???n ph???m</a></li>
                    <li><a href="product?maLoai1=cup"><i class="fa fa-circle-o"></i> Cupcake</a></li>
                    <li><a href="product?maLoai1=fc&maLoai2=hfc"><i class="fa fa-circle-o"></i> B??nh B??ng Lan</a></li>
                    <li><a href="product?maLoai1=bm"><i class="fa fa-circle-o"></i> B??nh M??</a></li>
                    <li><a href="product?maLoai1=mouse&maLoai2=rv&maLoai3=treem"><i class="fa fa-circle-o"></i> B??nh Kem</a>
                    </li>
                    <li><a href="product?maLoai1=donut"><i class="fa fa-circle-o"></i> B??nh Donut</a></li>
                    <li><a href="product?maLoai1=bq"><i class="fa fa-circle-o"></i> B??nh Quy</a></li>
                </ul>
            </li>
            <li>
                <a href="order-list">
                    <i class="fa fa-list-alt"></i> <span> Qu???n l?? ????n h??ng</span>
                </a>
            </li>
            <li>
                <a href="customer">
                    <i class="fa fa-users"></i> <span>Qu???n l?? kh??ch h??ng</span>
                </a>
            </li>
            <li>
                <a href="mail">
                    <i class="fa fa-envelope"></i> <span>Qu???n l?? h???p th??</span>
                    <small class="label pull-right bg-yellow">8 th?? m???i</small>
                </a>
            </li>
            <li class="header">TH??NG TIN</li>
            <li class="treeview">
                <a href="">
                    <i class="fa fa-user"></i> <span>C???u h??nh admin</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="author"><i class="fa fa-circle-o"></i> Qu???n l?? admin</a></li>
                    <%--                        <li><a href="login"><i class="fa fa-circle-o"></i> ????ng nh???p</a></li>--%>
                    <%--                        <li><a href="404error.jsp"><i class="fa fa-circle-o"></i> 404 Error</a></li>--%>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
</body>