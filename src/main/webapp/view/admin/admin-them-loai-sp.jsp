<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Thêm loại sản phẩm</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> Thêm loại sản phẩm </h1>
            <ol class="breadcrumb">
              <a href="productType" >  <li class="active"><i class="fa fa-tag"></i> Loại sản phẩm</a></li>
                <li class="active">Thêm loại sản phẩm</li>
            </ol>
        </section>

   <!-- Main content -->
   <section class="content">
    <div >
        <!-- Horizontal Form -->
        <div class="box box-info">
          <div class="box-header with-border">
            <h3 class="box-title">Thêm loại sản phẩm mới</h3>
          </div><!-- /.box-header -->
          <!-- form start -->
          <form class="form-horizontal" action="addProductType" method="post">
            <div class="box-body">
                <div class="form-group">
                    <label  class="col-sm-2 control-label">Mã loại sản phẩm</label>
                    <div class="col-sm-10">
                      <input id="idProtype" name="idProtype" type="text" class="form-control" placeholder="Nhập mã loại sản phẩm" >
                        <small>Không hợp lệ</small>
                    </div>
                  </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Tên loại sản phẩm</label>
                    <div class="col-sm-10">
                      <input id="nameProtype" name="nameProtype" type="text" class="form-control"  placeholder="Nhập tên loại sản phẩm" >
                        <small>Không hợp lệ</small>
                    </div>
                  </div>

            </div><!-- /.box-body -->
            <div class="box-footer">
               <button type="button" class="btn btn-default"><a href="productType">Hủy</a></button>
              <button type="submit" id="btnAdd" class="btn btn-info pull-right">Thêm</button>
            </div><!-- /.box-footer -->
          </form>
        </div><!-- /.box -->
      </div><!--/.col (right) -->
    </section>
    </div>
<script>
    const idProductType = document.getElementById('idProtype');
    const nameproducttype = document.getElementById('nameProtype');
    const btnAdd = document.getElementById('btnAdd');

    idProductType.addEventListener('input', (e) => {
        const idProductTypeValue = idProductType.value.trim();
        if (idProductTypeValue === '') {
            setErrorFor(idProductType, 'Mã loại sản phẩm không được bỏ trống!');

        } else {
            setSuccessFor(idProductType);
        }
    });
    nameproducttype.addEventListener('input', (e) => {
        const nameProductTypeValue = nameproducttype.value.trim();
        if (nameProductTypeValue === '') {
            setErrorFor(nameproducttype, 'Tên loại sản phẩm không được bỏ trống!');
        } else {
            setSuccessFor(nameproducttype);
        }
    });
    function check() {
        const idProductTypeValue = idProductType.value.trim();
        const nameProductTypeValue = nameproducttype.value.trim();
        if (idProductTypeValue != '' && nameProductTypeValue != '') {
            btnAdd.style.display = 'block'
        }
    }
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
</script>
<style>
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
    #btnAdd{
        display: none;
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
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>
