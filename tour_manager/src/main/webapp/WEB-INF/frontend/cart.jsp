<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/20/2023
  Time: 8:45 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css"
          integrity="sha512-t4GWSVZO1eC8BM339Xd7Uphw5s17a86tIZIj8qRxhnKub6WoyhnrxeCIMeAqBPgdZGlCcG2PrZjMc+Wr78+5Xg=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
          integrity="sha384-r4NyP46KrjDleawBgD5tp8Y7UzmLA05oM1iAEQ17CSuDqnUK2+k9luXQOfXJCJ4I" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
          integrity="sha512-PgQMlq+nqFLV4ylk1gwUOgm6CtIIXkKwaIHp/PAIWHzig/lKZSEGKEysh0TCVbHJXCLN7WetD8TFecIky75ZfQ=="
          crossorigin="anonymous" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Noto+Serif:wght@400;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Noto Serif', sans-serif;
        }

        :root {
            --text-clr: #4f4f4f;
        }

        p {
            color: #6c757d;
        }

        a {
            text-decoration: none;
            color: var(--text-clr);
        }

        a:hover {
            text-decoration: none;
            color: var(--text-clr);
        }

        h2 {
            color: var(--text-clr);
            font-size: 1.5rem;
        }

        .main_cart {
            background: #fff;
        }

        .card {
            border: none;
        }

        .product_img img {
            min-width: 200px;
            max-height: 200px;
        }

        .product_name {
            color: black;
            font-size: 1.4rem;
            text-transform: capitalize;
            font-weight: 500;
        }

        .card-title p {
            font-size: 0.9rem;
            font-weight: 500;
        }

        .remove-and-wish p {
            font-size: 0.8rem;
            margin-bottom: 0;
        }

        .price-money h3 {
            font-size: 1rem;
            font-weight: 600;
        }

        .set_quantity {
            position: relative;
        }

        .set_quantity::after {

            width: auto;
            height: auto;
            text-align: center;
            position: absolute;
            bottom: -20px;
            right: 1.5rem;
            font-size: 0.8rem;
        }

        .page-link {
            line-height: 16px;
            width: 45px;
            font-size: 1rem;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #495057;
        }

        .page-item input {
            line-height: 22px;
            padding: 3px;
            font-size: 15px;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .page-link:hover {
            text-decoration: none;
            color: #495057;
            outline: none !important;
        }

        .page-link:focus {
            box-shadow: none;
        }

        .price_indiv p {
            font-size: 1.1rem;
        }

        .fa-heart:hover {
            color: red;
        }
    </style>




    <link rel="stylesheet" href="/frontend/assets/style.css">
    <link rel="stylesheet" href="/frontend/assets/cart.css">
</head>

<body>

<!-- Nav Start -->
<%--<nav class="navbar navbar-expand-lg" id="navbar">--%>
<%--    <div class="container">--%>
<%--        <a class="navbar-brand" href="index.html" id="logo"><span>T</span>ravel</a>--%>
<%--        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#mynavbar">--%>
<%--            <span><i class="fa-solid fa-bars"></i></span>--%>
<%--        </button>--%>


<%--    </div>--%>
<%--</nav>--%>

<%--<div class="home">--%>
<%--    <div class="content">--%>
<%--        <h5>Trải nghiệm kỳ nghỉ tuyệt vời </h5>--%>
<%--        <h1>Điểm đến <span class="changecontent"></span></h1>--%>
<%--        <p>Combo khách sạn - tour du lịch - đưa đón tận tình với giá tốt nhất</p>--%>
<%--        <a href="#book">Book Tour</a>--%>
<%--    </div>--%>
<%--</div>--%>




<body class="bg-light">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-10 col-11 mx-auto">
            <div class="row mt-5 gx-3">
                <!-- left side div -->
                <div class="col-md-12 col-lg-8 col-11 mx-auto main_cart mb-lg-0 mb-5 shadow">
                    <div class="card p-4">

                        <!-- 1 -->
                        <h2 class="py-4 font-weight-bold">Giỏ hàng của bạn</h2>

                        <!-- 2nd cart product -->
                        <c:forEach items="${requestScope.cart.getCartItems()}" var="cartItem">

                            <div class="row">
                                <!-- cart images div -->
                                <div
                                        class="col-md-5 col-11 mx-auto bg-light d-flex justify-content-center align-items-center shadow product_img">
                                    <img src="${cartItem.tour.img}" class="img-fluid" alt="cart img">
                                </div>
                                <!-- cart product details -->
                                <div class="col-md-7 col-11 mx-auto px-4 mt-2">
                                    <div class="row">
                                        <!-- product name  -->
                                        <div class="col-6 card-title">
                                            <h3>${cartItem.tour.destination}</h3>
                                            <p class="mb-4 product_name">Lịch trình: <span>${cartItem.tour.route}</span></p>
                                            <p class="mb-2">Ngày khởi hành: <span>${cartItem.tour.startDate}</span></p>
                                            <p class="mb-2">Ngày kết thúc: <span>${cartItem.tour.endDate}</span></p>

                                        </div>
                                        <!-- quantity inc dec -->
                                        <div class="col-6">
                                            <ul class="pagination justify-content-end set_quantity">

                                                <li class="page-item"><input onchange="handleQuantityChange(this,${cartItem.tour.id})" min="1" max="100"  type="number" value="${cartItem.quantity}" class="page-link" id="textbox">
                                                </li>

                                            </ul>
                                        </div>
                                    </div>
                                    <!-- //remover move and price -->
                                    <div class="row">
                                        <div class="col-8 d-flex justify-content-between remove_wish">
                                            <p><a href="javascript:void(0)" onclick="handleDeleteClick(${p.getId()})> <i class="fas fa-trash-alt"></i></a> Hủy</p>
                                        </div>
                                        <div class="col-4 d-flex justify-content-end price_money">
                                            <p><span id="itemval">${(String.format("%.0f", cartItem.price * cartItem.quantity))} </span>VNĐ</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <hr />
                        </c:forEach>
                        </div>
                </div>
                <!-- right side div -->

                <div class="col-md-12 col-lg-4 col-11 mx-auto mt-lg-0 mt-md-5">
                    <div class="right_side p-3 shadow bg-white">
                        <h2 class="product_name mb-5">Tổng tiền</h2>
                        <div class="price_indiv d-flex justify-content-between">
                            <p>Tổng tiền</p>
                            <p><span id="product_total_amt">${String.format("%.0f",cart.total)}</span> VNĐ</p>
                        </div>

                        <hr />

                        <button class="btn btn-primary text-uppercase">Thanh Toán</button>



                    </div>

                    <!-- discount code part -->

                </div>
            </div>
        </div>
    </div>
</div>
<!-- Optional JavaScript -->
<!-- Popper.js first, then Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/js/bootstrap.min.js"
        integrity="sha384-oesi62hOLfzrys4LxRF63OJCXdXDipiYWBnvTl9Y9/TRlw5xlKIEHpNyvvDShgf/"
        crossorigin="anonymous"></script>

<script type="text/javascript">

    // var product_total_amt = document.getElementById('product_total_amt');
    // var shipping_charge = document.getElementById('shipping_charge');
    // var total_cart_amt = document.getElementById('total_cart_amt');
    // var discountCode = document.getElementById('discount_code1');
    // const decreaseNumber = (incdec, itemprice) => {
    //     var itemval = document.getElementById(incdec);
    //     var itemprice = document.getElementById(itemprice);
    //     console.log(itemprice.innerHTML);
    //     // console.log(itemval.value);
    //     if (itemval.value <= 0) {
    //         itemval.value = 0;
    //         alert('Negative quantity not allowed');
    //     } else {
    //         itemval.value = parseInt(itemval.value) - 1;
    //         itemval.style.background = '#fff';
    //         itemval.style.color = '#000';
    //         itemprice.innerHTML = parseInt(itemprice.innerHTML) - 1500000;
    //         product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) - 1500000;
    //         total_cart_amt.innerHTML = parseInt(product_total_amt.innerHTML) + parseInt(shipping_charge.innerHTML);
    //     }
    // }
    // const increaseNumber = (incdec, itemprice) => {
    //     var itemval = document.getElementById(incdec);
    //     var itemprice = document.getElementById(itemprice);
    //     // console.log(itemval.value);
    //     if (itemval.value >= 5) {
    //         itemval.value = 5;
    //         alert('max 5 allowed');
    //         itemval.style.background = 'red';
    //         itemval.style.color = '#fff';
    //     } else {
    //         itemval.value = parseInt(itemval.value) + 1;
    //         itemprice.innerHTML = parseInt(itemprice.innerHTML) + 1500000;
    //         product_total_amt.innerHTML = parseInt(product_total_amt.innerHTML) + 1500000;
    //         total_cart_amt.innerHTML = parseInt(product_total_amt.innerHTML) + parseInt(shipping_charge.innerHTML);
    //     }
    // }

    // const discount_code = () => {
    //     let totalamtcurr = parseInt(total_cart_amt.innerHTML);
    //     let error_trw = document.getElementById('error_trw');
    //     if (discountCode.value === 'thapa') {
    //         let newtotalamt = totalamtcurr - 1500000;
    //         total_cart_amt.innerHTML = newtotalamt;
    //         error_trw.innerHTML = "Hurray! code is valid";
    //     } else {
    //         error_trw.innerHTML = "Try Again! Valid code is thapa";
    //     }
    // }
</script>
<script>
    function handleQuantityChange(eQuantity, idProduct){
        let url = `/cart?action=update&id=\${idProduct}&quantity=\${eQuantity.value}`;

        window.location.assign(url);
    }
</script>
<script>
    function handleDeleteClick(id){
        Swal.fire({
            title: 'Are you sure?',
            text: "Bạn có muốn xóa tour hay ko",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            console.log(result);
            if (result.isConfirmed) {
                // /customers?action=delete&id=
                location.assign("/tours?action=delete&id=" + id);
            }
        })
    }
</script>

</body>
</body>
</html>'

