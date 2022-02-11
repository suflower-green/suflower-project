<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>주문 정보</title>
	<link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/checkout/">
    

    <!-- Bootstrap core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="../resources/css/form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
      
      <h2>주문/결제</h2>
      
    </div>

    <div class="row g-5">
      <div class="col-md-5 col-lg-4 order-md-last">
        <h4 class="d-flex justify-content-between align-items-center mb-3">
          <span class="text-primary">주문내역</span>
          <span class="badge bg-primary rounded-pill">1</span>
        </h4>
        <hr>
        ${cart}
       
			
      </div>

      
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">발신인 정보</h4>
        <hr>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-6">
              <label for="firstName" class="form-label">발신인 이름</label>
              <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
              <div class="invalid-feedback">
                이름을 다시 입력해주세요.
              </div>
            </div>
            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="consent-information" required="required">개인정보수집 동의(필수)
              </div>

            <br>

            <h4>받는분 정보</h4>
            <hr>
            <div class="col-12">
              <label for="address" class="form-label">수신인 주소지</label>
              <input type="text" class="form-control" id="address" placeholder="경기도 용인시 기흥구" required>
              <div class="invalid-feedback">
                
              </div>
            </div>
            

            <div class="col-12">
              <label for="address2" class="form-label">수신인 주소지 2 <span class="text-muted">(선택사항)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="000동000호">
            </div>

            <div class="col-sm-6">
                <label for="firstName" class="form-label">받는분 이름</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="" required>
                <div class="invalid-feedback">
                  이름을 다시 입력해주세요.
                </div>
            </div>

            <div class="col-sm-6">
                <label for="phoneNumber" class="form-label">받는분 연락처</label>
                <input type="text" class="form-control" id="phoneNumber" placeholder="010-0000-0000" value="" required>
                <div class="invalid-feedback">
                  연락처을 다시 입력해주세요.
                </div>
            </div>



            <div class="form-check">
                <input type="checkbox" class="form-check-input" id="consent-information" required="required">개인정보수집 동의(필수)
              </div>
          

          <!-- <div class="form-check">
            <input type="checkbox" class="form-check-input" id="same-address">
            <label class="form-check-label" for="same-address">Shipping address is the same as my billing address</label>
          </div> -->

          <!-- <div class="form-check">
            <input type="checkbox" class="form-check-input" id="save-info">
            <label class="form-check-label" for="save-info">Save this information for next time</label>
          </div> -->

          <hr class="my-4">

          <h4 class="mb-3">결제 수단</h4>

          

          <div class="row gy-3">
            <div class="col-md-6">
              <label for="cc-name" class="form-label">Name on card</label>
              <input type="text" class="form-control" id="cc-name" placeholder="" required>
              <small class="text-muted">Full name as displayed on card</small>
              <div class="invalid-feedback">
                Name on card is required
              </div>
            </div>

            <div class="col-md-6">
              <label for="cc-number" class="form-label">Credit card number</label>
              <input type="text" class="form-control" id="cc-number" placeholder="" required>
              <div class="invalid-feedback">
                Credit card number is required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-expiration" class="form-label">Expiration</label>
              <input type="text" class="form-control" id="cc-expiration" placeholder="" required>
              <div class="invalid-feedback">
                Expiration date required
              </div>
            </div>

            <div class="col-md-3">
              <label for="cc-cvv" class="form-label">CVV</label>
              <input type="text" class="form-control" id="cc-cvv" placeholder="" required>
              <div class="invalid-feedback">
                Security code required
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button class="w-100 btn btn-primary btn-lg" type="submit">결제 하기</button>
        </form>
      </div>
    </div>
  </main>

  
</div>


    

      <script src="../resources/js/form-validation.js"></script>
  </body>
</html>