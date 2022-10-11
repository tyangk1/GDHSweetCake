<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Chi tiết khách hàng</title>
</header>
<jsp:include page="Header.jsp" flush="true"/>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1> Quản lý khách hàng </h1>
        <ol class="breadcrumb">
            <li><a href="customer"> <i class="fa fa-users"></i>Quản lý khách hàng</a></li>
            <li class="active">Thông tin khách hàng</li>
        </ol>
    </section>


    <!-- Main content -->
    <section class="content">
        <div>
            <!-- Horizontal Form -->
            <div class="box box-info">
                <div class="box-header with-border">
                    <h3 class="box-title">Cập nhật thông tin khách hàng</h3>
                </div><!-- /.box-header -->
                <!-- form start -->
                <form class="form-horizontal" action="updateCustomer" method="post">
                    <div class="box-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Mã khách hàng</label>
                            <div class="col-sm-10">
                                <input name="idCustomer" type="text" class="form-control" id="inputIDCus"
                                       value="${c.idCus}" readonly>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Tên khách hàng</label>
                            <div class="col-sm-10">
                                <input  name="nameCustomer" type="text" class="form-control" id="inputNameCus"
                                       value="${c.nameCus}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-10">
                                <input name="emailCustomer" type="email" class="form-control" id="inputEmail"
                                       value="${c.emailCus}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Giới tính</label>
                            <div class="col-sm-10" style="margin-top:6px">
                                <select name="genderCustomer">
                                    <option value="${c.gender}">${c.gender}</option>
                                    <c:if test="${c.gender.equalsIgnoreCase('nam')}">
                                        <option value="Nữ">Nữ</option>
                                    </c:if>
                                    <c:if test="${c.gender.equalsIgnoreCase('nữ')}">
                                        <option value="Nam">Nam</option>
                                    </c:if>
                                </select>
                            </div>
                        </div>
                        <%--                      <div class="form-group">--%>
                        <%--                        <label for="inputPassword3" class="col-sm-2 control-label">Mật khẩu</label>--%>
                        <%--                        <div class="col-sm-10">--%>
                        <%--                          <input name="passCustomer" type="password" class="form-control" id="inputPassword3" value="${c.password}">--%>
                        <%--                          <!-- <input id="showpassword" onclick="myFunction1()" type="checkbox" > Hiện mật khẩu -->--%>
                        <%--                        </div>--%>
                        <%--                      </div>--%>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Số điện thoại</label>
                            <div class="col-sm-10">
                                <input name="numberphoneCustomer" type="number" class="form-control" id="inputPhone"
                                       value="${c.numPhone}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Địa chỉ</label>
                            <div class="col-sm-10">
                                <input name="addressCustomer" type="text" class="form-control" id="inputAddress"
                                       value="${c.address}">
                                <small>Không hợp lệ</small>
                            </div>
                        </div>

                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <button type="button" class="btn btn-default"><a href="customer">Hủy</a></button>
                        <button type="submit" id="btnChange" class="btn btn-info pull-right">Thay đổi</button>
                    </div><!-- /.box-footer -->
                </form>
            </div><!-- /.box -->
        </div><!--/.col (right) -->
    </section>
    <script>
        const nameCustomer = document.getElementById('inputNameCus');
        const email = document.getElementById('inputEmail');
        const numberphone = document.getElementById('inputPhone');
        const address = document.getElementById('inputAddress');
        const btnChange = document.getElementById('btnChange');

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
            const nameCustomerValue = nameCustomer.value.trim();
            const emailValue = email.value.trim();
            const numberphoneValue = numberphone.value.trim();
            const addressValue = address.value.trim();
            if ( nameCustomerValue != '' && emailValue != ''  && numberphoneValue != '' && addressValue != '') {
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


