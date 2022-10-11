<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Thêm account admin</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Thêm admin mới </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-user"></i> Cấu hình admin</a></li>
            <li><a href="author"></i> Quản lý admin</a></li>
            <li class="active">Thêm admin</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div>
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Thêm mới</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal" action="addAccountAdmin" method="post">
                    <div class="box-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Mã người dùng</label>
                            <div class="col-sm-10">
                                <input id="inputId" name="id" type="text" class="form-control" placeholder="Nhập mã người dùng">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-2 control-label">Họ và Tên  </label>
                            <div class="col-sm-10">
                                <input id="inputName" name="nameAccount" type="text" class="form-control" placeholder="Nhập tên người dùng">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tên người dùng</label>
                            <div class="col-sm-10">
                                <input id="inputUser" name="name"  type="text" class="form-control" placeholder="Nhập tên">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Link hình ảnh</label>
                            <div class="col-sm-10">
                                <input id="inputLinkImg" name="linkImg" type="text" class="form-control" placeholder="Nhập link hình ảnh">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-sm-2 control-label">Mật khẩu</label>
                            <div class="col-sm-10">
                                <input id="inputPass" name="pass" type="password" class="form-control" placeholder="Nhập mật khẩu">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>

                        <div class="form-group">
                            <label  class="col-sm-2 control-label">Quyền hạn</label>
                            <div class="col-sm-10">
                                <select name="permission">
                                    <option value="Administrator">Administrator</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Email </label>
                            <div class="col-sm-10">
                                <input id="inputEmail" name="email" type="email" class="form-control" placeholder="Nhập email người dùng">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>

                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="button" class="btn btn-default"><a href="author">Hủy</a></button>
                        <button type="submit" id="btnAdd" class="btn btn-info pull-right">Thêm</button>
                    </div><!-- /.box-footer -->
                </form>
            </div><!-- /.box -->
        </div><!--/.col (right) -->

    </section>
    <script>
        const inputId = document.getElementById('inputId');
        const inputName = document.getElementById('inputName');
        const inputUser = document.getElementById('inputUser');
        const inputLinkImg = document.getElementById('inputLinkImg');
        const inputpass = document.getElementById('inputPass');
        const inputEmail = document.getElementById('inputEmail');
        const btnAdd = document.getElementById('btnAdd');

        inputId.addEventListener('input', (e) => {
            const inputIdValue = inputId.value.trim();
            if (inputIdValue === '') {
                setErrorFor(inputId, 'Mã người dùng không được bỏ trống!');
            } else {
                setSuccessFor(inputId);
            }
        });
        inputName.addEventListener('input', (e) => {
            const inputNameValue = inputName.value.trim();
            if (inputNameValue === '') {
                setErrorFor(inputName, 'Họ và tên không được bỏ trống!');
            } else {
                setSuccessFor(inputName);
            }
        });
        inputUser.addEventListener('input', (e) => {
            const inputUserValue = inputUser.value.trim();
            if (inputUserValue === '') {
                setErrorFor(inputUser, 'Tên người dùng không được bỏ trống!');
            } else {
                setSuccessFor(inputUser);
            }
        });
        inputLinkImg.addEventListener('input', (e) => {
            const inputLinkImgValue = inputLinkImg.value.trim();
            if (inputLinkImgValue === '') {
                setErrorFor(inputLinkImg, 'Link hình ảnh không được bỏ trống!');
            } else {
                setSuccessFor(inputLinkImg);
            }
        });
        inputpass.addEventListener('input', (e) => {
            const inputpassValue = inputpass.value.trim();
            if (inputpassValue === '') {
                setErrorFor(inputpass, 'Mật khẩu không được bỏ trống!');
            } else {
                setSuccessFor(inputpass);
            }
        });
        inputEmail.addEventListener('input', (e) => {
            const emailValue = inputEmail.value.trim();
            if (emailValue === '') {
                setErrorFor(inputEmail, 'Email không được bỏ trống!');
            } else if (!isEmail(emailValue)) {
                setErrorFor(inputEmail, 'Email không hợp lệ');
            } else {
                setSuccessFor(inputEmail);
            }
        });
        function isEmail(email) {
            return /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(email);
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
        function check() {
            const inputIdValue = inputId.value.trim();
            const inputNameValue = inputName.value.trim();
            const inputUserValue = inputUser.value.trim();
            const inputLinkImgValue = inputLinkImg.value.trim();
            const inputpassValue = inputpass.value.trim();
            const emailValue = inputEmail.value.trim();
            if (inputIdValue != '' && inputNameValue != '' && inputUserValue != '' && inputLinkImgValue != '' && inputpassValue != '' && emailValue != '') {
                btnAdd.style.display = 'block'
            }
        }

        function myFunction1() {
            var x = document.getElementById("inputPassword3");
            if (x.type === "password") {
                x.type = "text";
            } else {
                x.type = "password";
            }
        }
    </script>
    <style>
        #btnAdd {
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



