<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<title>Loại sản phẩm</title>
<%--Header--%>
<jsp:include page="Header.jsp" flush="true"/>
<script src="<%=request.getContextPath()%>/view/admin/dist/js/sweetalert.min.js"></script>
<%--end Header--%>
<style>

    .modal.open {
        display: flex;
    }

    .modal {
        display: flex;
        align-items: center;
        justify-content: center;
        position: fixed;
        top: 0;
        right: 0;
        left: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.4);
        display: none;

    }

    .modal-container {
        position: relative;
        background-color: #fff;
        width: 900px;
        /* co lại cos chifu ngang tối đa  */
        max-width: calc(100% - 32px);
        min-height: 200px;
        animation: modalFadeIn ease 0.6s;

    }

    .modal-header {
        background-color: #0d6aad;
        height: 130px;
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 30px;
        color: #fff;
    }

    .modal-heading-icon {
        margin-right: 16px;
    }

    .modal-container-close {
        position: absolute;
        right: 0;
        top: 0;
        color: #fff;
        padding: 12px;
        cursor: pointer;
        opacity: 0.8;
    }

    .modal-container-close:hover {
        opacity: 1;
    }

    .modal-body {
        padding: 16px;
    }

    .modal-label {
        display: block;
        font-size: 15px;
        margin-bottom: 12px;
    }

    .modal-input {
        border: 1px solid #ccc;
        width: 100%;
        padding: 10px;
        font-size: 15px;
        margin-bottom: 24px;
    }

    .buy-tickets {
        background-color: #0d6aad;
        border: none;
        color: #fff;
        width: 100%;
        font-size: 15px;
        text-transform: uppercase;
        padding: 18px;
        cursor: pointer;
    }

    .buy-tickets:hover {
        opacity: 0.9;
        background-color: #ccc;
        color: #000;
    }

    .modal-footer {
        padding: 16px;
        text-align: right;
    }

    .modal-footer a {
        color: #2196F3;
    }

    @keyframes modalFadeIn {
        from {
            opacity: 0;
            transform: translateY(-140px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }

    }

    .flaticon-029-cupcake-3:before {
        content: "\f11c";
    }

</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Loại sản phẩm </h1>
        <ol class="breadcrumb">
            <li class="active"><i class="fa fa-tag"></i>Loại sản phẩm</li>
        </ol>
    </section>

    <!--content-->
    <section class="content">

        <a href="addProductType" class="btn btn-primary pull-right js-add-procduts">+Thêm loại sản phẩm</a>
        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Mã loại sản phẩm</th>
                        <th>Tên loại sản phẩm</th>
                        <th>Tác vụ</th>
                    </tr>
                    </thead>
                    <tbody style="cursor: pointer;">
                    <c:forEach items="${productTypes}" var="product">
                        <tr id="${product.idTypePro}">
                            <td>${product.idTypePro}</td>
                            <td>${product.nameTypePro}</td>
                            <td><a href="updateProductType?ptypeid=${product.idTypePro}"><i class="fa fa-pencil-square-o"
                                                                               style="cursor: pointer; color: #0d6aad"
                                                                               aria-hidden="true"></i></a>
<%--                                <a href="deleteProductType?ptid=${product.idTypePro}"><i--%>
<%--                                    class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer"--%>
<%--                                    aria-hidden="true"></i></a></td>--%>
                                <i onclick="ConfirmDelete('${product.idTypePro}','Bạn chắc chắn muốn xóa?')" class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer" aria-hidden="true"></i>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div><!-- /.col -->
        </div><!-- /.row -->

    </section>
</div>
<script>
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
                        url: "deleteProductType",
                        type: "POST",
                        data: {
                            ptid:id
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
