<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/15/2023
  Time: 2:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
  <link rel="stylesheet" href="/dashboard/assets/admin.css" />
  <title>Admin</title>
</head>

<body>
<div class="d-flex" id="wrapper">
  <!-- Sidebar -->
  <div class="bg-white" id="sidebar-wrapper">
    <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom"><i
            class="fas fa-user-secret me-2"></i>Admin</div>
    <div class="list-group list-group-flush my-3">
      <a href="admin.html" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
              class="fas fa-user"></i> Tài Khoản</a>
      <a href="orderlist.html" class="list-group-item list-group-item-action bg-transparent second-text active"><i
              class="fas fa-project-diagram me-2">Quản lý Đơn</i>
      </a>
      <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
              class="fas fa-receipt"></i> Quản lý Tour</a>
      <a href="customerlist.html" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
              class="fas fa-users"></i> Khách hàng</a>

      <a href="#" class="list-group-item list-group-item-action bg-transparent second-text fw-bold"><i
              class="fas fa-receipt"></i> Doanh thu</a>

      <a href="signIn.html" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold"><i
              class="fas fa-power-off me-2"></i>Đăng Xuất</a>
    </div>
  </div>
  <!-- /#sidebar-wrapper -->

  <!-- Page Content -->
  <div id="page-content-wrapper">
    <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
      <div class="d-flex align-items-center">
        <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
        <h2 class="fs-2 m-0">Trang quản lý đơn đặt </h2>
      </div>

      <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
              aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

    </nav>

    <div class="container-fluid px-4">
      <div class="row my-5">
        <h3 class="fs-4 mb-3">Danh sách đơn</h3>
        <div class="col">
          <table class="table bg-white rounded shadow-sm  table-hover">

            <thead>
            <tr>
              <th scope="col" width="50">#</th>
              <th scope="col">Tên Tour</th>
              <th scope="col">Khách hàng</th>
              <th scope="col">Giá</th>
              <th scope="col">Trạng thái</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <th scope="row">1</th>
              <td>Tour</td>
              <td>Nhân</td>
              <td>2.000.000</td>
              <td>Chưa xử lý</td>
            </tr>
            <tr>
              <th scope="row">2</th>
              <td>Tour</td>
              <td>Nhân</td>
              <td>2.000.000</td>
              <td>Chưa xử lý</td>
            </tr>
            <tr>
              <th scope="row">3</th>
              <td>Tour</td>
              <td>Nhân</td>
              <td>2.000.000</td>
              <td>Đã xử lý</td>
            </tr>
            <tr>
              <th scope="row">4</th>
              <td>Tour</td>
              <td>Nhân</td>
              <td>2.000.000</td>
              <td>Đã xử lý</td>
            </tr>
            <tr>
              <th scope="row">5</th>
              <td>Tour</td>
              <td>Nhân</td>
              <td>2.000.000</td>
              <td>Chưa xử lý</td>
            </tr>

            </tbody>

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
