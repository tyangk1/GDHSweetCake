<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title> Sản phẩm </title>
<%--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>--%>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<script src="<%=request.getContextPath()%>/view/admin/dist/js/sweetalert.min.js"></script>

<%--end Header--%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Cupcake </h1>
        <ol class="breadcrumb">
            <li><a href="productType"> <i class="fa fa-tag"></i>Loại sản phẩm</a></li>
            <li class="active">cupcake</li>
        </ol>
    </section>

    <!--content-->
    <section class="content">

        <a href="addProduct" class="btn btn-primary pull-right js-add-procduts">+Thêm sản phẩm</a>
        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Mã sản phẩm</th>
                        <th>Mã loại sản phẩm</th>
                        <th>Tên sản phẩm</th>
                        <th>Hình ảnh</th>
                        <th>Giá</th>
                        <th>Tác vụ</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${products}" var="product">
                        <tr id="${product.idPro}">
                            <td>${product.idPro}</td>
                            <td>${product.idProType}</td>
                            <td>${product.namePro}</td>
                            <td>
                                <c:if test="${product.productDetails.linkImg.indexOf('http') != -1}">
                                    <img style=" width: 60px;height: 30px; object-fit: scale-down;border: 1px solid #fff;" src="${product.productDetails.linkImg}"  alt="cupcake image">
                                </c:if>
                                <c:if test="${product.productDetails.linkImg.indexOf('http') == -1}">
                                    <img style=" width: 60px;height: 30px; object-fit: scale-down;border: 1px solid #fff;" src="<%=request.getContextPath()%>/${product.productDetails.linkImg}"  alt="cupcake image">
                                </c:if>
                            </td>
                            <td>${product.productDetails.price}</td>
                            <td>
                                <a href="updateProduct?pid=${product.idPro}"><i class="fa fa-pencil-square-o" style="cursor: pointer; color: #0d6aad" aria-hidden="true"></i></a>
<%--                                <i onclick="deleteProduct('${product.idPro}')" class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer" aria-hidden="true"></i>--%>
                                <i onclick="ConfirmDelete('${product.idPro}','Bạn chắc chắn muốn xóa?')" class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer" aria-hidden="true"/>
                            </td>

                        </tr>
                    </c:forEach>

                    </tbody>
                </table>
            </div><!-- /.col -->
        </div><!-- /.row -->
<%--        <div class="pull-right">--%>
<%--            1-10--%>
<%--            <div class="btn-group">--%>
<%--                <button class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>--%>
<%--                <button class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>--%>
<%--            </div><!-- /.btn-group -->--%>
<%--        </div><!-- /.pull-right -->--%>
    </section>

</div>

<script>
    // function deleteProduct(id){
    //     console.log("function delete")
    //
    //     $.ajax({
    //         url: "deleteProduct",
    //         type: "POST",
    //         data: {
    //             pid:id
    //         },
    //         success: function (data){
    //             if (data == 'true') document.getElementById(id).style.display = "none";
    //             // consle.log(data)
    //             console.log(data,'ok')
    //         },
    //         error: function (xhr){
    //             console.log(xhr,'sai')
    //         }
    //     })
    function ConfirmDelete(id, value)
    {
        swal({
                title: "Cảnh báo!",
                text: value,
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#f32424",
                confirmButtonText: "Xóa",
                cancelButtonText: "Hủy",
                closeOnConfirm: true,
                closeOnCancel: true,
                charset: 'utf8'

            },

            function (isConfirm) {
                if (isConfirm==true) {
                    $.ajax({
                        url: "deleteProduct",
                        type: "POST",
                        data: {
                            pid:id
                        },
                        success: function (data){
                            if (data == 'true') document.getElementById(id).style.display = "none";
                            // consle.log(data)
                            console.log(data,'ok')

                        },
                        error: function (xhr){
                            console.log(xhr,'sai')
                        }
                    })
                }else{

                }
            });
    }


</script>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>