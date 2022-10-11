<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Chỉnh sửa account</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Chỉnh sửa admin</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-user"></i> Cấu hình admin</a></li>
            <li><a href="author">Quản lý admin</a></li>
            <li class="active">Chỉnh sửa admin</li>
        </ol>
    </section>


    <!-- Main content -->
    <section class="content">
        <div>
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Cập nhật admin</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal" action="updateAuthor" method="post">
                    <div class="box-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Mã người dùng</label>
                            <div class="col-sm-10">
                                <input name="idUser" type="text" class="form-control" value="${a.id}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input id="inputEmail" name="emailUser" type="Email" class="form-control" value="${a.email}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tên người dùng</label>
                            <div class="col-sm-10">
                                <input id="inputUser" name="nameUser" type="text" class="form-control" value="${a.username}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Quyền hạn</label>
                            <div class="col-sm-10">
                                <input name="qUser" type="text" class="form-control" value="${a.permission}" readonly>
                            </div>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="button" class="btn btn-default"><a href="author">Hủy</a></button>
                        <button type="submit" id="btnChange" class="btn btn-info pull-right">Thay đổi</button>
                    </div><!-- /.box-footer -->
                </form>
            </div><!-- /.box -->
        </div><!--/.col (right) -->
    </section>
    <script>
        const inputUser = document.getElementById('inputUser');
        const inputEmail = document.getElementById('inputEmail');
        const btnChange = document.getElementById('btnChange');

        inputUser.addEventListener('input', (e) => {
            const inputUserValue = inputUser.value.trim();
            if (inputUserValue === '') {
                setErrorFor(inputUser, 'Tên người dùng không được bỏ trống!');
            } else {
                setSuccessFor(inputUser);
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
            btnChange.style.display = 'none'
        }

        function setSuccessFor(input) {
            const formControl = input.parentElement;
            formControl.className = 'form-group success';
            check()
        }
        function check() {
            const inputUserValue = inputUser.value.trim();
            const emailValue = inputEmail.value.trim();
            if (inputUserValue != '' && emailValue != '') {
                btnChange.style.display = 'block'
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

