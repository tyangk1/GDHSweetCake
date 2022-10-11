<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Chỉnh sửa sản phẩm</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
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

</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Chỉnh sửa sản phẩm </h1>
        <ol class="breadcrumb">
            <a href="product">
                <li class="active"><i class="fa fa-tag"></i> Sản phẩm
            </a></li>
            <li class="active"> Chỉnh sửa sản phẩm</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div>
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Cập nhật thông tin sản phẩm</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal" action="updateProduct" method="post">
                    <div class="box-body">
                        <h3 class="box-title box-noti">${message}</h3>
                        <h3 class="box-title box-noti1">${message1}</h3>
                        <div class="form-group">
                            <label for="inputIdProduct" class="col-sm-2 control-label">Mã sản phẩm</label>
                            <div class="col-sm-10">
                                <input name="idProduct" type="text" class="form-control" id="inputIdProduct"
                                       value="${p.idPro}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputIdProductType" class="col-sm-2 control-label">Mã loại sản phẩm</label>
                            <div class="col-sm-10">
                                <input name="idProductType" type="text" class="form-control" id="inputIdProductType"
                                       value="${p.idProType}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputNameProduct" class="col-sm-2 control-label">Tên sản phẩm</label>
                            <div class="col-sm-10">
                                <input name="nameProduct" type="text" class="form-control" id="inputNameProduct"
                                       value="${p.namePro}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Link hình ảnh</label>
                            <div class="col-sm-10">
                                <input id="linkimg" name="imgProduct" type="text" class="form-control"
                                       value="${p.productDetails.linkImg}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Mô tả ngắn</label>
                            <div class="col-sm-10">
                                <input id="description" name="descriptionProduct" type="text" class="form-control"
                                       value="${p.productDetails.describe}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Giá bán</label>
                            <div class="col-sm-10">
                                <input id="price" name="priceProduct" type="text" class="form-control"
                                       value="${p.productDetails.price}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="button" class="btn btn-default" onclick="history.back()">Hủy</button>
                        <button type="submit" id="btnChange" class="btn btn-info pull-right">Thay đổi</button>
                    </div><!-- /.box-footer -->
                </form>
            </div><!-- /.box -->
        </div><!--/.col (right) -->

    </section>
    <script>
        const nameproduct = document.getElementById('inputNameProduct');
        const linkimg = document.getElementById('linkimg');
        const description = document.getElementById('description');
        const price = document.getElementById('price');
        const btnChange = document.getElementById('btnChange');

        nameproduct.addEventListener('input', (e) => {
            const nameproductValue = nameproduct.value.trim();
            if (nameproductValue === '') {
                setErrorFor(nameproduct, 'Tên sản phẩm không được bỏ trống!');
            } else {
                setSuccessFor(nameproduct);
            }
        });
        linkimg.addEventListener('input', (e) => {
            const linkimgValue = linkimg.value.trim();
            if (linkimgValue === '') {
                setErrorFor(linkimg, 'Link hình ảnh sản phẩm không được bỏ trống!');
            } else {
                setSuccessFor(linkimg);
            }
        });
        description.addEventListener('input', (e) => {
            const descriptionValue = description.value.trim();
            if (descriptionValue === '') {
                setErrorFor(description, 'Mô tả sản phẩm không được bỏ trống!');
            } else {
                setSuccessFor(description);
            }
        });
        price.addEventListener('input', (e) => {
            const priceValue = price.value.trim();
            if (priceValue === '') {
                setErrorFor(price, 'Giá sản phẩm không được bỏ trống!');
            } else {
                setSuccessFor(price);
            }
        });

        function setErrorFor(input, message) {
            const formControl = input.parentElement;
            const small = formControl.querySelector('small');
            formControl.className = 'form-group error';
            small.innerText = message;
            btnChange.style.display = 'none'
        }

        function setSuccessFor(input) {
            const formControl = input.parentElement;
            formControl.className = 'form-group success';
            check()
        }

        function check() {
            const nameproductValue = nameproduct.value.trim();
            const linkimgValue = linkimg.value.trim();
            const descriptionValue = description.value.trim();
            const priceValue = price.value.trim();
            if (nameproductValue != '' && linkimgValue != '' && descriptionValue != '' && priceValue != '') {
                btnChange.style.display = 'block'
            }
        }

    </script>
    <style>
        #btnChange {
            display: none;
        }

        .form-horizontal .form-group {
            margin-right: 6px;
            margin-left: 6px;
        }

        .form-horizontal .control-label {
            margin-left: -25px;
        }

        .form-group.success input {
            border-color: #2ecc71;
            width: 81%;
            position: relative;
            left: 14px;
        }

        .form-group.error input {
            border-color: #e74c3c;
            width: 81%;
            left: 14px;
            position: relative;
        }

        .form-group small {
            color: #e74c3c;
            position: absolute;
            bottom: -16px;
            left: 26px;
            visibility: hidden;
        }

        .form-group.error small {
            visibility: visible;
            position: revert;
            margin-left: 160px;
        }

        .box-noti {
            text-align: center;
            margin-top: -25px;
            margin-bottom: 30px;
            font-weight: bold;
            color: red;
        }

        .box-noti1 {
            text-align: center;
            margin-top: -25px;
            margin-bottom: 30px;
            font-weight: bold;
            color: green;
        }

        .box-header.with-border {
            border-bottom: 0px #f4f4f4;
        }

    </style>
</div>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>