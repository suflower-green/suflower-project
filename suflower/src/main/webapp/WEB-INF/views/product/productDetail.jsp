<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <img id="largeImage" src="../resources/uploadImage/${productDetail.uploadfile }">
      </div>
      <!-- <div id="thumbs" class="thumbs">
        <div class="thumb">
          <img src="img/image_01_thumb.png" alt="1st image description" />
        </div>
        <div class="thumb">
          <img src="img/image_02_thumb.png" alt="2nd image description" />
        </div>
        <div class="thumb active-thumb">
          <img src="img/image_03_thumb.png" alt="3rd image description" />
        </div>
      </div> -->
    </div> <!-- //col -->
    <div class="col-lg-7 col-md-7 col-sm-12">
      <input type="hidden" name="productId" value="${productDetail.productId}"/>
      <h1><c:out value="${productDetail.productName}"/></h1>
      <div class="choose-price">
          ${productDetail.productPrice}원
        </div>
      <hr>
      <form action="/cart/insert" method="post">
      	<%-- <input type="hidden" name="productId" value="${cart.productId}"/> --%>
	      <div class="choose">
	        <div class="choose-size">
	          희망 수령일
	          <div class="choose-active">
	
	            <input type="date" name="reservationDate"/>
	            <!-- 
	            <input type="radio" id="s1" name="size" />
	            <label for="s1" class="size">오전</label>
	            or
	            <input type="radio" id="s2" name="size" />
	            <label for="s2" class="size">오후</label> -->
	            
	          </div>
	        </div> <!-- //choose-size -->
	        <div class="choose-separate"></div>
	        <div class="choose-quantity">
	          수량 <select name="quantity">
	          	<c:forEach begin="1" end="10" var="i">
	          		<option value="${i}">${i}</option>
	          	</c:forEach>
	          </select>
	        </div> <!-- //choose-quantity -->
	      </div> <!-- //choose -->
      
      	<hr>
      	<div class="choose">
        
        <div class="choose-order">
          <!-- <a class="btn_cart">장바구니 담기</a> -->
          <!--<a class="btn_buy">바로 구매하기</a> -->
          <!-- <i class="fa fa-cart-plus" aria-hidden="true"></i> -->
          <!-- <i class="fa fa-heart-o" aria-hidden="true"></i> -->
          <input type="submit" class="insert-cart" name="insert-cart" value="장바구니에 추가"> 
          <!-- <input type="submit" class="submit-order" name="submit-order" value="바로 구매하기">  -->
        </div>
        
      	</div><!-- //chose -->
      </form>
    </div> <!-- //col -->
  </div> <!-- //container -->
</div> <!-- //product-show -->




<%@ include file ="../includes/footer.jsp" %>




<script src="../resources/js/custom.js"></script>
</body>
</html>