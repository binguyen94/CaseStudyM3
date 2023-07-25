<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 19/07/2023
  Time: 4:27 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.12/sweetalert2.css"
          integrity="sha512-K0TEY7Pji02TnO4NY04f+IU66vsp8z3ecHoID7y0FSVRJHdlaLp/TkhS5WDL3OygMkVns4bz0/ah4j8M3GgguA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.7.12/sweetalert2.min.js"
            integrity="sha512-JbRQ4jMeFl9Iem8w6WYJDcWQYNCEHP/LpOA11LaqnbJgDV6Y8oNB9Fx5Ekc5O37SwhgnNJdmnasdwiEdvMjW2Q=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel="stylesheet" href="/dashboard/assets/admin.css"/>
    <title>Customer</title>
</head>

<body>
<div class="d-flex" id="wrapper">
    <!-- Sidebar -->
    <div class="bg-white" id="sidebar-wrapper">
        <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
                class="fas fa-user-secret me-2"></i>${sessionScope.user.getUsername()}</div>
        <div class="list-group list-group-flush my-3">
            <a href="/user" class="list-group-item list-group-item-action bg-transparent second-text active"><i
                    class="fas fa-user"></i> Tài Khoản</a>

            <%--            <a href="#"--%>
            <%--               class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i--%>
            <%--                    class="fas fa-project-diagram me-2"> Đặt chỗ của tôi</i>--%>
            <%--            </a>--%>
            <a href="/order"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                    class="fas fa-receipt"></i> Hóa Đơn </a>
            <a href="/home"
               class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
                    class="	fas fa-suitcase-rolling"></i> Travel</a>

            <a href="/logout"
               class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
                    class="fas fa-power-off me-2"></i>Đăng Xuất</a>
        </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">
        <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">


            <%--            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"--%>
            <%--                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"--%>
            <%--                    aria-expanded="false" aria-label="Toggle navigation">--%>
            <%--                <span class="navbar-toggler-icon"></span>--%>
            <%--            </button>--%>

        </nav>

        <div class="container-fluid px-4">
            <div class="row my-5">
                <h3 class="fs-4 mb-3">Hồ Sơ Của Tôi</h3>
                <div class="col">
                    <table class="table bg-white rounded shadow-sm  table-hover">
                        <c:if test="${requestScope.messageEditnew !=null}">
                            <script>
                                window.onload = () => {
                                    Swal.fire({
                                        position: 'top-end',
                                        icon: 'success',
                                        title: 'Sửa thành công',
                                        showConfirmButton: false,
                                        timer: 1500
                                    })
                                }
                            </script>
                            <%--                            <% session.setAttribute("messageEdit", null);%>--%>
                        </c:if>
                        <c:if test="${sessionScope.messageEditPass != null}">
                            <script>
                                window.onload = () => {
                                    Swal.fire({
                                        position: 'top-end',
                                        icon: 'success',
                                        title: 'Sửa thành công',
                                        showConfirmButton: false,
                                        timer: 1500
                                    })
                                }
                            </script>
                                                        <% session.setAttribute("messageEditPass", null);%>
                        </c:if>
                        <form>

                            <div class="col-md-6 mb-3">
                                <label class="small mb-1" for="inputUsername">Tài khoản:</label>
                                <input class="form-control" id="inputUsername" type="text"
                                       value="${sessionScope.user.getUsername()}" readonly>
                                <%--                <input class="form-control" id="inputUsername" type="text" value= "${requestScope.user.getUsername()}" readonly>--%>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label class="small mb-1" for="inputUsername">Họ và Tên:</label>
                                <input class="form-control" id="inputUsername" type="text"
                                       value="${sessionScope.user.getFullname()}" readonly>
                                <%--                <input class="form-control" id="inputUsername" type="text" value= "${requestScope.user.getFullname()}" readonly>--%>
                            </div>
                            <!-- Form Group (email address)-->
                            <div class="col-md-6 mb-3">
                                <label class="small mb-1" for="inputEmailAddress">Email:</label>
                                <input class="form-control" id="inputEmailAddress" type="email"
                                       value="${sessionScope.user.getEmail()}" readonly>
                                <%--                <input class="form-control" id="inputEmailAddress" type="email" value="${requestScope.user.getEmail()}" readonly>--%>
                            </div>

                            <!-- Form Row-->

                            <!-- Form Group (phone number)-->
                            <div class="col-md-6 mb-3">
                                <label class="small mb-1" for="inputPhone">Số điện thoại:</label>
                                <input class="form-control" id="inputPhone" type="tel"
                                       value="${sessionScope.user.getPhone()}" readonly>
                                <%--                  <input class="form-control" id="inputPhone" type="tel" value="${requestScope.user.getPhone()}" readonly>--%>
                            </div>
                            <!-- Form Group (birthday)-->
                            <%--                <div class="col-md-6">--%>
                            <%--                  <label class="small mb-1" for="inputBirthday">Địa Chỉ</label>--%>
                            <%--                  <input class="form-control" id="inputBirthday" type="text" name="Địa chỉ" placeholder="Nhập địa chỉ.." value="Huế" readonly>--%>
                            <%--                </div>--%>

                            <!-- Save changes button-->


                            <a href="/user?action=edit&id=${sessionScope.user.getId()}">
                                <button class="btn btn-primary" type="button">Sửa thông tin</button>
                            </a>
                            <a href="/password?action=edit&id=${sessionScope.user.getId()}">
                                <button class="btn btn-primary m-5" type="button">Đổi mật khẩu</button>
                            </a>
                        </form>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>
</div>
<!-- /#page-content-wrapper -->
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"></script>

</body>

</html>