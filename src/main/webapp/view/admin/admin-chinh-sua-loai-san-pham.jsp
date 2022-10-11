<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Chỉnh sửa loại sản phẩm</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>

<style>

        .modal.open{
            display: flex;
        }
        .modal{
            display: flex;
            align-items: center;
            justify-content: center;
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            background-color: rgba(0, 0,0,0.4);
            display: none;

        }
        .modal-container{
            position: relative;
            background-color: #fff;
            width: 900px;
            /* co lại cos chifu ngang tối đa  */
            max-width: calc(100% - 32px);
            min-height: 200px;
            animation: modalFadeIn ease 0.6s;

        }
        .modal-header{
            background-color: #0d6aad ;
            height: 130px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 30px;
            color: #fff;
        }
        .modal-heading-icon{
            margin-right: 16px;
        }
        .modal-container-close{
            position: absolute;
            right: 0;
            top: 0;
            color: #fff;
            padding: 12px;
            cursor: pointer;
            opacity: 0.8;
        }
        .modal-container-close:hover{
            opacity: 1;
        }
        .modal-body{
            padding: 16px;
        }
        .modal-label{
            display: block;
            font-size: 15px;
            margin-bottom: 12px;
        }
        .modal-input{
            border: 1px solid #ccc;
            width: 100%;
            padding: 10px;
            font-size: 15px;
            margin-bottom: 24px;
        }
        .buy-tickets{
            background-color: #0d6aad ;
            border: none;
            color: #fff;
            width: 100%;
            font-size: 15px;
            text-transform: uppercase;
            padding: 18px;
            cursor: pointer;
        }
        .buy-tickets:hover{
            opacity: 0.9;
            background-color: #ccc;
            color: #000;
        }
        .modal-footer{
            padding: 16px;
            text-align: right;
        }
        .modal-footer a{
            color: #2196F3;
        }
        @keyframes modalFadeIn {
            from{
                opacity: 0;
                transform: translateY(-140px);
            }
            to{
                opacity: 1;
                transform: translateY(0);
            }

        }

    </style>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1> Chỉnh sửa loại sản phẩm </h1>
            <ol class="breadcrumb">
               <a href="productType"> <li class="active"><i class="fa fa-tag"></i> Loại sản phẩm</a></li>
                <li class="active"> Chỉnh sửa loại sản phẩm</li>
            </ol>
        </section>

         <!-- Main content -->
         <section class="content">
            <div >
                <!-- Horizontal Form -->
                <div class="box box-info">
                  <div class="box-header with-border">
                    <h3 class="box-title">Cập nhật thông tin loại sản phẩm</h3>
                  </div><!-- /.box-header -->
                  <!-- form start -->
                  <form class="form-horizontal" action="updateProductType" method="post">
                    <div class="box-body">
                        <div class="form-group">
                            <label for="inputidProductType" class="col-sm-2 control-label">Mã loại sản phẩm</label>
                            <div class="col-sm-10">
                              <input name="idProductType" type="text" class="form-control" id="inputidProductType" value="${ptype.idTypePro}" readonly >
                            </div>
                          </div>
                        <div class="form-group">
                            <label for="inputnameProductType" class="col-sm-2 control-label">Tên loại sản phẩm</label>
                            <div class="col-sm-10">
                              <input name="nameProductType" type="text" class="form-control" id="inputnameProductType" value="${ptype.nameTypePro}" >
                                <small>Không hợp lệ</small>
                            </div>
                          </div>
                       </div><!-- /.box-body -->
                    <div class="box-footer">
                       <button type="button" class="btn btn-default"><a href="productType">Hủy</a></button>
                      <button type="submit" id="btnChange" class="btn btn-info pull-right">Thay đổi</button>
                    </div><!-- /.box-footer -->
                  </form>
                </div><!-- /.box -->
              </div><!--/.col (right) -->
        
                </section>
        <script>
            const inputnameProductType = document.getElementById('inputnameProductType');
            const btnChange = document.getElementById('btnChange');

            inputnameProductType.addEventListener('input', (e) => {
                const inputnameProductTypeValue = inputnameProductType.value.trim();
                if (inputnameProductTypeValue === '') {
                    setErrorFor(inputnameProductType, 'Tên loại sản phẩm không được bỏ trống!');
                } else {
                    setSuccessFor(inputnameProductType);
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
                btnChange.style.display = 'block'
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

        </style>
    </div>
    <%--footer--%>
    <jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>