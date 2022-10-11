<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%--Header--%>
<header>
    <title>Chi tiết đơn hàng</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>  CHI TIẾT ĐƠN HÀNG </h1>
            <ol class="breadcrumb">
               <li><a href="order-list"><i class="fa fa-list-alt"></i>Quản lý đơn hàng</a></li>
                <li class="active">Chi tiết đơn hàng</li>
            </ol>
        </section>

         <!--content-->
         <section class="content">

            <!-- Table row -->

            <div class="row">
                <div class="col-xs-12">
                    <div class="box">
                        <div class="box-header">
                            <h3 class="box-title">Đơn hàng ${idOrder}</h3>

                        </div><!-- /.box-header -->
                      
                        <div class="box-body table-responsive no-padding">
                            <table class="table table-hover" >
                                <thead>
                                <tr>
                                    <th>Mã sản phẩm</th>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Giá tiền SP</th>
<%--                                    <th>Tác vụ</th>--%>
                                </tr>
                                </thead>
                                <tbody style="cursor: pointer" >
                                <c:forEach items="${orderList}" var="details">
                                    <tr>
                                        <td>${details.idProduct}</td>
                                        <td>${details.products.namePro}</td>
                                        <td>${details.quantity}</td>
<%--                                        <td>${details.products.productDetails.price}--%>
                                        <td><fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber type = "currency"  value = "${details.products.productDetails.price}" /></td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div><!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" class="btn btn-default"><a href="order-list">Hủy</a></button>
                        </div><!-- /.box-footer -->
                    </div><!-- /.box -->
                </div>
            </div>
         </section>
    </div>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>
