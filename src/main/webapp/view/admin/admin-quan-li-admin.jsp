<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<title>Quản lý admin</title>
<%--Header--%>
<jsp:include page="Header.jsp" flush="true"/>
<script src="<%=request.getContextPath()%>/view/admin/dist/js/sweetalert.min.js"></script>
<%--end Header--%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Quản lý admin </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-user"></i> Cấu hình admin</a></li>
            <li class="active">Quản lý admin</li>
        </ol>
    </section>


    <!--content-->
    <section class="content">
        <a href="addAccountAdmin" class="btn btn-primary pull-right js-add-procduts">+Thêm mới</a>
        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>Mã người dùng</th>
                        <th>Tên người dùng</th>
                        <th>Email</th>
                        <th>Hình ảnh</th>
                        <th>Quyền hạn</th>
                        <th>Tác vụ</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${author}" var="author">
                        <tr id="${author.id}">
                            <td>${author.id}</td>
                            <td>${author.username}</td>
                            <td>${author.email}</td>
                            <td>
                                <c:if test="${author.img.indexOf('http') != -1}">
                                    <img style=" width: 60px;height: 30px; object-fit: scale-down;border: 1px solid #fff;"
                                         src="${author.img}" alt="product image">
                                </c:if>
                                <c:if test="${author.img.indexOf('http') == -1}">
                                    <img style=" width: 60px;height: 30px; object-fit: scale-down;border: 1px solid #fff;"
                                         src="<%=request.getContextPath()%>/${author.img}" alt="product image">
                                </c:if>
                            </td>
                            <td>${author.permission}</td>
                            <td><a href="updateAuthor?uid=${author.id}"><i class="fa fa-pencil-square-o"
                                                                           style="cursor: pointer; color: #0d6aad"
                                                                           aria-hidden="true"></i></a>
                                <i onclick="ConfirmDelete('${author.id}','Bạn chắc chắn muốn xóa?')" class="fa fa-times"
                                   style="color: red; margin-left: 10px; cursor: pointer" aria-hidden="true"></i>
                                    <%--                                <a href="deleteAccountAdmin?ucid=${author.id}"><i--%>
                                    <%--                                    class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer"--%>
                                    <%--                                    aria-hidden="true"></i></a></td>--%>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div><!-- /.col -->
        </div><!-- /.row -->

    </section>

</div>
<script>
    function ConfirmDelete(id, value) {
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
                if (isConfirm == true) {
                    $.ajax({
                        url: "deleteAccountAdmin",
                        type: "POST",
                        data: {
                            ucid: id
                        },
                        success: function (data) {
                            if (data == 'true') document.getElementById(id).style.display = "none";
                            // consle.log(data)
                            console.log(data, 'ok')

                        },
                        error: function (xhr) {
                            console.log(xhr, 'sai')
                        }
                    })
                } else {

                }
            });
    }

</script>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>
