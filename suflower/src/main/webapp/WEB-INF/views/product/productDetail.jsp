<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <title>Product show</title>
  <link rel="stylesheet" href="../resources/css/bootstrap.css">
  <link rel="stylesheet" href="../resources/css/animate.css">
  <link rel="stylesheet" href="../resources/css/font-awesome.min.css">
  <link rel="stylesheet" href="../resources/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="../resources/js/jquery.min.js"></script>
  <script src="../resources/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file ="../includes/header.jsp" %>

<div class="product-show">
  <div class="container">
    <div class="col-lg-5 col-md-5 col-sm-12">
      <div class="gallery-panel">
        <img id="largeImage" src="img/image_03_large.png">
      </div>
      <div id="thumbs" class="thumbs">
        <div class="thumb">
          <img src="img/image_01_thumb.png" alt="1st image description" />
        </div>
        <div class="thumb">
          <img src="img/image_02_thumb.png" alt="2nd image description" />
        </div>
        <div class="thumb active-thumb">
          <img src="img/image_03_thumb.png" alt="3rd image description" />
        </div>
      </div>
    </div> <!-- //col -->
    <div class="col-lg-7 col-md-7 col-sm-12">
      <h1>튤립</h1>
      
      <!-- <p class="description-full">
        Half Jacket + Skiny Trousers + Boot leather
      </p>
      <p class="product-about">
        Lorem Ipsum is simply dummy text of the printing and typesetting industry
Lorem Ipsum is simply dummy text of the printing
 and typesetting industry
      </p> -->
      <hr>
      <div class="choose">
        <div class="choose-size">
          희망 배송일
          <div class="choose-active">

            <input type="date"/>
            <input type="radio" id="s1" name="size" />
            <label for="s1" class="size">오전</label>
            or
            <input type="radio" id="s2" name="size" />
            <label for="s2" class="size">오후</label>
            
          </div>
        </div> <!-- //choose-size -->
        <div class="choose-separate"></div>
        <div class="choose-quanity">
          수량
          <div class="choose-active">
            <button class="plus">+</button>
            <input type="text" readonly name="count-items" id="count-items" value="1" class="count-items">
            <button class="minus">-</button>
          </div>
        </div> <!-- //chose-quanity -->
      </div> <!-- //choose -->
      <hr>
      <div class="choose">
        <div class="choose-price">
          Price : <input type="text" readonly id="total" class="total" name="total" value="0">$
        </div>
        <div class="choose-order">
          <i class="fa fa-cart-plus" aria-hidden="true"></i>
          <i class="fa fa-heart-o" aria-hidden="true"></i>
          <input type="submit" class="submit-order" name="submit-order" value="주문하기" onclick="location.href='/checkout.html';">
        </div>
      </div><!-- //chose -->
    </div> <!-- //col -->
  </div> <!-- //container -->
</div> <!-- //product-show -->



<%@ include file ="../includes/footer.jsp" %>
<script src="../resources/js/custom.js"></script>
</body>
</html>