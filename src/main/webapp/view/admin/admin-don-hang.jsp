<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Đơn hàng</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Quản lý đơn hàng</h1>
        <ol class="breadcrumb">
            <li class="active">Đơn hàng</li>
        </ol>
    </section>

    <!--content-->
    <section class="content">

        <!-- Table row -->

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Đơn hàng</h3>

                    </div><!-- /.box-header -->
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Mã đơn hàng</th>
                                <th>Mã khách hàng</th>
                                <th>Ngày đặt hàng</th>
                                <th>Thành tiền</th>
                                <th>Ghi chú đơn hàng</th>
                                <th>Tác vụ</th>
                            </tr>
                            </thead>
                            <tbody id="content"  style="cursor: pointer">
                            <c:forEach items="${orderList}" var="order">
                                <tr>
                                    <td>${order.idOrder}</td>
                                    <td>${order.idCus}</td>
                                    <td>${order.orderDate}</td>
                                    <td><fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${order.intoMoney-order.discounted}" type="currency" /></td>
                                    <td>${order.orderNotes}</td>
                                    <td><a href="order-detail?idOrder=${order.idOrder}"><i class="fa fa-file-text-o"
                                                                                  style="cursor: pointer; color: #0d6aad ; margin-left: 10px;"
                                                                                  aria-hidden="true"></i></a></td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>
    </section>
    <script>


    </script>
</div>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>
