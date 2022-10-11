<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Thêm sản phẩm</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Thêm sản phẩm </h1>
        <ol class="breadcrumb">
            <a href="product">
                <li class="active"><i class="fa fa-tag"></i>Sản phẩm
            </a></li>
            <li class="active">Thêm sản phẩm</li>
        </ol>
    </section>

    <!-- Main content -->
    <!-- <section class="content">
     <div >
         <-- Horizontal Form -->
    <div class="box box-info">
        <div class="box-header ">
            <h3 class="box-title">Thêm sản phẩm mới</h3>
        </div><!-- /.box-header -->
        <!-- form start -->
        <%--          <form class="form-horizontal" action="addProduct" method="post" onsubmit="return validation()">--%>
        <form id="form" class="form-horizontal form" action="addProduct" method="post">
            <div class="box-body">
                <h3 class="box-title box-noti">${message}</h3>
                <h3 class="box-title box-noti1">${message1}</h3>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Mã sản phẩm</label>
                    <div class="col-sm-10 ">
                        <input id="idproduct" name="idProduct" type="text" class="form-control"
                               placeholder="Nhập mã sản phẩm" value="${product.idPro}">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label ">Mã loại sản phẩm</label>
                    <div class="col-sm-10 ">
                        <input id="idproductType" name="idProductType" type="text" class="form-control"
                               placeholder="Nhập mã loại sản phẩm" value="${product.idProType}">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Tên sản phẩm</label>
                    <div class="col-sm-10">
                        <input id="nameproduct" name="nameProduct" type="text" class="form-control"
                               placeholder="Nhập tên sản phẩm" value="${product.namePro}">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Link hình ảnh</label>
                    <div class="col-sm-10">
                        <input id="linkimg" name="imgProduct" type="text" class="form-control"
                               placeholder="Link hình ảnh" value="${product.productDetails.linkImg}">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Mô tả ngắn</label>
                    <div class="col-sm-10">
                        <input id="description" name="descriptionProduct" type="text" class="form-control"
                               placeholder="Viết mô tả cho bánh" value="${product.productDetails.describe}">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Giá</label>
                    <div class="col-sm-10">
                        <input id="price" name="priceProduct" type="number" class="form-control"
                               placeholder="Nhập giá sản phẩm" value="${product.productDetails.price}">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
            </div><!-- /.box-body -->
            <div class="box-footer">
                <button type="button" class="btn btn-default" onclick="history.back()">Hủy</button>
                <button type="submit" id="btnAdd" class="btn btn-info pull-right">Thêm</button>
            </div><!-- /.box-footer -->
        </form>
    </div><!-- /.box -->
</div>
<!--/.col (right) -->
</section>
<script>
    const idProduct = document.getElementById('idproduct');
    const idProductType = document.getElementById('idproductType');
    const nameproduct = document.getElementById('nameproduct');
    const linkimg = document.getElementById('linkimg');
    const description = document.getElementById('description');
    const price = document.getElementById('price');
    const btnAdd = document.getElementById('btnAdd');

    idProduct.addEventListener('input', (e) => {
        const idProductValue = idProduct.value.trim();
        if (idProductValue === '') {
            setErrorFor(idProduct, 'Mã sản phẩm không được bỏ trống!');
        } else {
            setSuccessFor(idProduct);
        }
    });
    idProductType.addEventListener('input', (e) => {
        const idProductTypeValue = idProductType.value.trim();
        if (idProductTypeValue === '') {
            setErrorFor(idProductType, 'Mã loại sản phẩm không được bỏ trống!');
        } else {
            setSuccessFor(idProductType);
        }
    });
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
        btnAdd.style.display = 'none'
    }

    function setSuccessFor(input) {
        const formControl = input.parentElement;
        formControl.className = 'form-group success';
        check()
    }
    function check() {
        const idProductValue = idProduct.value.trim();
        const idProductTypeValue = idProductType.value.trim();
        const nameproductValue = nameproduct.value.trim();
        const linkimgValue = linkimg.value.trim();
        const descriptionValue = description.value.trim();
        const priceValue = price.value.trim();
        if (idProductValue != '' && idProductTypeValue != '' && nameproductValue != '' && linkimgValue != '' && descriptionValue != '' && priceValue != '') {
            btnAdd.style.display = 'block'
        }
    }

</script>
<style>
    #btnAdd {
        display: none;
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

</style>
</div>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>
