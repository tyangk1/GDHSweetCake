<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--Header--%>
<header>
    <title>Hộp thư | GDH </title>
</header>
<jsp:include page="Header.jsp" flush="true"/>
<%--end Header--%>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>  Hộp thư </h1>
            <ol class="breadcrumb">
                <li class="active">Hộp thư</li>
            </ol>
        </section>


             <!-- Main content -->
             <section class="content">
                <div class="row">
                  <div class="col-md-3">
                    <a href="#" class="btn btn-primary btn-block margin-bottom">Soạn thư</a>
                    <div class="box box-solid">
                      <div class="box-header with-border">
                        <h3 class="box-title">Danh mục</h3>
                        <div class="box-tools">
                          <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                      </div>
                      <div class="box-body no-padding">
                        <ul class="nav nav-pills nav-stacked">
                          <li class="active"><a href="#"><i class="fa fa-inbox"></i> Hộp thư đến <span class="label label-primary pull-right">8</span></a></li>
                          <li><a href="#"><i class="fa fa-envelope-o"></i> Thư đã gửi</a></li>
                          <li><a href="#"><i class="fa fa-file-text-o"></i> Thư nháp</a></li>
                          <li><a href="#"><i class="fa fa-trash-o"></i> Thư rác</a></li>
                        </ul>
                      </div><!-- /.box-body -->
                    </div><!-- /. box -->
                    
                  </div><!-- /.col -->
                  <div class="col-md-9">
                    <div class="box box-primary">
                      <div class="box-header with-border">
                        <h3 class="box-title">Hộp thư đến</h3>
                        <div class="box-tools pull-right">
                          <div class="has-feedback">
                            <input type="text" class="form-control input-sm" placeholder="Tìm kiếm thư" />
                            <span class="glyphicon glyphicon-search form-control-feedback"></span>
                          </div>
                        </div><!-- /.box-tools -->
                      </div><!-- /.box-header -->
                      <div class="box-body no-padding">
                        <div class="mailbox-controls">
                          <!-- Check all button -->
                          <button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i></button>
                          <div class="btn-group">
                            <button class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                            <button class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                            <button class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                          </div><!-- /.btn-group -->
                          <button class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                          <div class="pull-right">
                            1-50/200
                            <div class="btn-group">
                              <button class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                              <button class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                            </div><!-- /.btn-group -->
                          </div><!-- /.pull-right -->
                        </div>
                        <div class="table-responsive mailbox-messages">
                          <table class="table table-hover table-striped">
                            <tbody>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                              <tr>
                                <td><input type="checkbox" /></td>
                                <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                                <td class="mailbox-name"><a href="#">Thành Hải</a></td>
                                <td class="mailbox-subject"><b>AdminGDH</b> - Những chiếc bánh mang đầy ý nghĩa giúp tôi có những phút ...</td>
                                <td class="mailbox-attachment"></td>
                                <td class="mailbox-date">5 phút trước</td>
                              </tr>
                               
                            </tbody>
                          </table><!-- /.table -->
                        </div><!-- /.mail-box-messages -->
                      </div><!-- /.box-body -->
                      <div class="box-footer no-padding">
                        <div class="mailbox-controls">
                          <!-- Check all button -->
                          <button class="btn btn-default btn-sm checkbox-toggle"><i class="fa fa-square-o"></i></button>
                          <div class="btn-group">
                            <button class="btn btn-default btn-sm"><i class="fa fa-trash-o"></i></button>
                            <button class="btn btn-default btn-sm"><i class="fa fa-reply"></i></button>
                            <button class="btn btn-default btn-sm"><i class="fa fa-share"></i></button>
                          </div><!-- /.btn-group -->
                          <button class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
                          <div class="pull-right">
                            1-50/200
                            <div class="btn-group">
                              <button class="btn btn-default btn-sm"><i class="fa fa-chevron-left"></i></button>
                              <button class="btn btn-default btn-sm"><i class="fa fa-chevron-right"></i></button>
                            </div><!-- /.btn-group -->
                          </div><!-- /.pull-right -->
                        </div>
                      </div>
                    </div><!-- /. box -->
                  </div><!-- /.col -->
                </div><!-- /.row -->
              </section><!-- /.content -->


    </div>
<%--footer--%>
<jsp:include page="footer.jsp" flush="true"/>
<%--end footer--%>

