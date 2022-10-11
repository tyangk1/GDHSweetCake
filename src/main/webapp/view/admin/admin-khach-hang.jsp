<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<!DOCTYPE html>--%>

<%--Header--%>
<header>
    <title>Khách hàng</title>
    <script src="<%=request.getContextPath()%>/view/admin/dist/js/sweetalert.min.js"></script>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Quản lý khách hàng </h1>
        <ol class="breadcrumb">
            <li class="active"><i class="fa fa-users"></i> Khách hàng</li>
        </ol>
    </section>

    <!--content-->
    <section class="content">

        <!-- Table row -->

        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Danh sách khách hàng</h3>

                        <div class="box-tools">
                            <div class="input-group" style="width: 150px;">
                                <input oninput="searchByName(this)" value="${txtS}"  type="text" name="table_search" class="form-control input-sm pull-right"
                                       placeholder="Tìm kiếm"/>
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>

                    </div><!-- /.box-header -->
                    <div class="box-header">
                        <a href="addCustomer" class="btn btn-primary pull-right js-add-procduts">+Thêm
                            khách hàng</a>

                    </div>

                    <div  class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th>Mã khách hàng</th>
                                <th>Tên khách hàng</th>
                                <th>Số điện thoại</th>
                                <th>Địa chỉ</th>
                                <th>Tác vụ</th>
                            </tr>
                            </thead>
                            <tbody id="content" style="cursor: pointer">
                            <c:forEach items="${customers}" var="cus">
                                <tr id="${cus.idCus}">
                                    <td>${cus.idCus}</td>
                                    <td>${cus.nameCus}</td>
                                    <td>${cus.numPhone}</td>
                                    <td>${cus.address}</td>
                                    <td>
                                        <a href="updateCustomer?cusid=${cus.idCus}">
                                            <i class="fa fa-pencil-square-o" style="cursor: pointer; color: #0d6aad" aria-hidden="true"></i></a>
                                        <i onclick="ConfirmDelete('${cus.idCus}','Bạn chắc chắn muốn xóa?')" class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer" aria-hidden="true"></i>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>
<script>
    function showMess(idCus){
        var option= confirm('Bạn chắc chắn muốn xóa');
        if(option===true){
            window.location.href='deleteCustomer?cid=' + idCus;
        }

    }
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
                        url: "deleteCustomer",
                        type: "POST",
                        data: {
                            cid:id
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

    function searchByName(param){
        var txtSearch=param.value;
        $.ajax({
            url: "searchCustomer",
            type: "get",
            data: {
                table_search: txtSearch
            },
            success: function (data){
                var  content= document.getElementById("content");
                let row = ''
                for (const cus of data) {
                    console.log(cus)

                    row += "<tr>"
                    row += "<td>"+cus.idCus+"</td>"
                    row += "<td>"+cus.nameCus+"</td>"
                    row += "<td>"+cus.numPhone+"</td>"
                    row += "<td>"+cus.address+"</td>"
                    row += '<td>'

                    row+= '<a href="updateCustomer?cusid="'+cus.idCus+'>'
                    row += '<i class="fa fa-pencil-square-o" style="cursor: pointer; color: #0d6aad" aria-hidden="true"></i></a>'
                    row+= '<a href="deleteCustomer?cid="'+cus.idCus+'>'
                    row += '<i  class="fa fa-times" style="color: red; margin-left: 10px; cursor: pointer" aria-hidden="true"></i></a>'
                    row+='</td>'
                    row += "</tr> "
                }
                content.innerHTML = row
            },
            error: function (xhr){

            }
        })

    }
</script>


<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>
