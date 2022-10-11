
<%@ page import="java.util.List" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.CustomerCL" %>
<%@ page import="com.gdhsweetcakejavafinal.model.Order" %>
<%@ page import="com.gdhsweetcakejavafinal.model.OrderDetails" %>
<%@ page import="com.gdhsweetcakejavafinal.model.client.CartDetail" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<style>
    .header__menu ul li a.active {
        background: #000;
    }
</style>
<meta charset="UTF-8">
<meta name="description" content="Cake Template">
<meta name="keywords" content="Cake, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

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
<link rel="stylesheet" href="${url}css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="${url}css/cart.css" type="text/css">

<header class="header">
  <div class="header__top">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="header__top__inner">

            <%
              if(session.getAttribute("accountLogin") != null){
                CustomerCL acc = (CustomerCL) session.getAttribute("accountLogin");
            %>
            <div class="header__top__left">
              <ul>
                <li><a href="#" >
                    <div class="avt" style="width: 35px;height: 35px;border-radius: 50%">
                    <img src="https://www.shareicon.net/data/512x512/2017/01/06/868320_people_512x512.png" alt="">
                    </div></a>
                    <ul class="dropdown" style="width: 130px; margin-top: 15px">
                        <li><a href="" style="color: white; font-size: 13px">Thông tin</a></li>
                        <li><a href="logout" style="color: white; font-size: 13px">Đăng xuất</a></li>
                    </ul>
                </li>
                <li><a href="#">Xin chào <%=acc.getTenKH()%></a></li>
              </ul>
            </div>
              <%
              }else{
              %>
              <div class="header__top__left">
                <ul>
                  <li><a href="#"><i class="fa fa-user"></i></a></li>
                  <li><a href="${pageContext.request.contextPath}/login">Đăng nhập</a></li>
                </ul>
              </div>
              <%
                }
              %>
            <div class="header__logo">
              <a href="${pageContext.request.contextPath}/welcome"><img src="view/client/img/logo1.jpg" alt=""></a>
            </div>
            <div class="header__top__right">
              <div class="header__top__right__links">
                <a href="#" class="search-switch"><i class="fa fa-search"></i></a>
              </div>

              <%
                if(session.getAttribute("listCart") != null){
                  List<CartDetail> listItem = (List<CartDetail>) session.getAttribute("listCart");
                  if(listItem.size() > 0){
              %>

              <div class="header__top__right__cart">
                <a href="cart"><i class="fa fa-shopping-basket"></i>
                  <%
//                    int total = 0;
                     int totalFinal = 0;
                    for( CartDetail quantity : listItem){

                      if(quantity!=null){
                        totalFinal++;
                      }
                  %>
                  <span><%=totalFinal%></span>
                  <%
                    }
                  %>
                </a>
                <div class="mini_cart">
                  <%
                    for(CartDetail item : listItem){
                      double tong = 0;
                      int quantity = item.getQuantity();
                      double price = item.getPrice();
                      tong = quantity * price;
                  %>
                  <div class="cart_item">
                    <div class="cart_img">
                      <a href="#"><img src="<%=item.getLinkAnh()%>" alt=""></a>
                    </div>
                    <div class="cart_info">
                        <a href="#"><%=item.getNameSP()%></a>
<%--                      <span>1 x 90.00</span>--%>
                      <span>Số lượng: <%=item.getQuantity()%></span>
                      <span>Giá: <fmt:setLocale value="vi_VN"/>
                            <fmt:formatNumber value="<%=item.getPrice()%>"></fmt:formatNumber> </span>
                    </div>
                    <div class="cart_remove">
                      <a href="<%=request.getContextPath()%>/deletedSPCart?maSPCart=<%=item.getMaSP()%>"><img src="https://img.icons8.com/fluency-systems-filled/48/000000/x.png"/></a>
                    </div>
                  </div>
                  <%
                    }
                  %>
                  <div class="cart_button view_cart">
                    <a href="${pageContext.request.contextPath}/menu">Menu</a>
                  </div>

                  <div class=" cart_button Check_out">
                    <a href="${pageContext.request.contextPath}/pay-cart">Thanh toán</a>
                  </div>
                  <%
                      }
                    }
                  %>

                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="canvas__open"><i class="fa fa-bars"></i></div>
    </div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="header__menu mobile-menu">
          <ul>
            <li><a href="welcome">Trang chủ</a></li>
            <li><a href="about">Giới thiệu</a></li>
            <li><a href="menu">Menu</a>
              <ul class="dropdown">
                <c:forEach items="${listT}" var="o">
                  <li><a href="category?maLoaiSP=${o.maLoaiSP}&index=${1}">${o.tenLoaiSP}</a>
                    <ul class="subnav">
                      <c:forEach items="${listC}" var="c">
                        <c:if test="${o.maLoaiSP==c.maLoaiSP}">
                          <li><a href="subcategory?maCategory=${c.maCategory}&index=${1}">${c.tenCategory}</a></li>
                        </c:if>
                      </c:forEach>
                    </ul>
                  </li>
                </c:forEach>
              </ul>
            </li>
            <li><a href="#">Pages</a>
              <ul class="dropdown">
<%--                <li><a href="./wisslist.jsp">SP yêu thích </a></li>--%>
                <li><a href="cart">Giỏ hàng</a></li>
                <li><a href="${pageContext.request.contextPath}/pay-cart">Thanh toán</a></li>
              </ul>
            </li>
            <li><a href="blog">Blog</a></li>
            <li><a href="contact">Liên hệ</a></li>
          </ul>

            <script type="text/javascript">
                const currentLocation = location.href;
                const menuItem = document.querySelectorAll('a');
                const menuLength = menuItem.length;
                for(let i=0; i< menuLength;i++){
                    if(menuItem[i].href === currentLocation){
                        menuItem[i].className="active";
                    }
                }
             </script>
        </div>
      </div>
    </div>
  </div>
</header>
<!-- Header Section End -->

<script src="${url}js/jquery-3.3.1.min.js"></script>
<script src="${url}js/bootstrap.min.js"></script>
<script src="${url}js/jquery.nice-select.min.js"></script>
<script src="${url}js/jquery.barfiller.js"></script>
<script src="${url}js/jquery.magnific-popup.min.js"></script>
<script src="${url}js/jquery.slicknav.js"></script>
<script src="${url}js/jquery.nicescroll.min.js"></script>
<script src="${url}js/main.js"></script>