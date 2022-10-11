<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Thêm Khách hàng</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Thêm khách hàng</h1>
        <ol class="breadcrumb">
            <a href="admin-khach-hang.jsp">
                <li class="active"><i class="fa fa-tag"></i>Khách hàng
            </a></li>
            <li class="active">Thêm khách hàng</li>
        </ol>
    </section>

    <!-- Main content -->
    <!-- <section class="content">
     <div >
         <-- Horizontal Form -->
    <div class="box box-info">
        <div class="box-header with-border">
            <h3 class="box-title">Thêm khách hàng mới</h3>
        </div><!-- /.box-header -->
        <!-- form start -->
        <form class="form-horizontal" action="addCustomer" method="post">
            <div class="box-body">
                <div class="form-group">
                    <label class="col-sm-2 control-label">Mã khách hàng</label>
                    <div class="col-sm-10">
                        <input name="idCustomer" type="text" class="form-control" id="inputId"
                               placeholder="Nhập mã khách hàng">
                        <small>Không hợp lệ</small>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label">Tên khách hàng</label>
                    <div class="col-sm-10">
                        <input name="nameCustomer" type="text" class="form-control" id="inputName"
                               placeholder="Nhập tên khách hàng">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Địa chỉ email</label>
                    <div class="col-sm-10">
                        <input name="emailCustomer" type="email" class="form-control" id="inputEmail"
                               placeholder="Nhập email khách hàng">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <%--                <div class="form-group">--%>
                <%--                    <label for="inputEmail3" class="col-sm-2 control-label">Ngày sinh</label>--%>
                <%--                    <div class="col-sm-10">--%>
                <%--                        <input name="birthdayCustomer" type="text" class="form-control" id="inputbirthday" placeholder="Nhập ngày sinh">--%>
                <%--                    </div>--%>
                <%--                </div>--%>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Giới tính</label>
                    <div class="col-sm-10" style="margin-top:16px">
                        <select name="genderCustomer">
                            <option value="Nam">Nam</option>
                            <option value="Nữ">Nữ</option>
                        </select>
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Mật khẩu</label>
                    <div class="col-sm-10">
                        <input name="passCustomer" type="password" class="form-control" id="inputpass"
                               placeholder="Nhập Mật khẩu">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Số điện thoại</label>
                    <div class="col-sm-10">
                        <input name="numberphoneCustomer" type="number" class="form-control" id="inputnumberPhone"
                               placeholder="Nhập số điện thoại">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label">Địa chỉ</label>
                    <div class="col-sm-10">
                        <input name="addressCustomer" type="text" class="form-control" id="inputAddress"
                               placeholder="Nhập địa chỉ">
                        <small>Không hợp lệ</small>
                    </div>
                </div>
            </div><!-- /.box-body -->
            <div class="box-footer">
                <button class="btn btn-default"><a href="customer">Hủy</a></button>
                <button type="submit" id="btnAdd" class="btn btn-info pull-right">Thêm</button>
            </div><!-- /.box-footer -->
        </form>
    </div><!-- /.box -->
</div>
<!--/.col (right) -->
</section>

<script>
    const idCustomer = document.getElementById('inputId');
    const nameCustomer = document.getElementById('inputName');
    const email = document.getElementById('inputEmail');
    const pass = document.getElementById('inputpass');
    const numberphone = document.getElementById('inputnumberPhone');
    const address = document.getElementById('inputAddress');
    const btnAdd = document.getElementById('btnAdd');

    idCustomer.addEventListener('input', (e) => {
        const idCustomerValue = idCustomer.value.trim();
        if (idCustomerValue === '') {
            setErrorFor(idCustomer, 'Mã khách hàng không được bỏ trống!');
        } else {
            setSuccessFor(idCustomer);
        }
    });
    nameCustomer.addEventListener('input', (e) => {
        const nameCustomerValue = nameCustomer.value.trim();
        if (nameCustomerValue === '') {
            setErrorFor(nameCustomer, 'Tên khách hàng không được bỏ trống!');
        } else {
            setSuccessFor(nameCustomer);
        }
    });
    email.addEventListener('input', (e) => {
        const emailValue = email.value.trim();
        if (emailValue === '') {
            setErrorFor(email, 'Email không được bỏ trống!');
        } else if (!isEmail(emailValue)) {
            setErrorFor(email, 'Email không hợp lệ');
        } else {
            setSuccessFor(email);
        }
    });
    pass.addEventListener('input', (e) => {
        const passValue = pass.value.trim();
        if (passValue === '') {
            setErrorFor(pass, 'Password không được bỏ trống!');
        } else {
            setSuccessFor(pass);
        }
    });
    numberphone.addEventListener('input', (e) => {
        const numberphoneValue = numberphone.value.trim();
        if (numberphoneValue === '') {
            setErrorFor(numberphone, 'Số điện thoại không được bỏ trống!');
        } else {
            setSuccessFor(numberphone);
        }
    });
    address.addEventListener('input', (e) => {
        const addressValue = address.value.trim();
        if (addressValue === '') {
            setErrorFor(address, 'Địa chỉ không được bỏ trống!');
        } else {
            setSuccessFor(address);
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
        const idCustomerValue = idCustomer.value.trim();
        const nameCustomerValue = nameCustomer.value.trim();
        const emailValue = email.value.trim();
        const passValue = pass.value.trim();
        const numberphoneValue = numberphone.value.trim();
        const addressValue = address.value.trim();
        if (idCustomerValue != '' && nameCustomerValue != '' && emailValue != '' && passValue != '' && numberphoneValue != '' && addressValue != '') {
            btnAdd.style.display = 'block'
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
