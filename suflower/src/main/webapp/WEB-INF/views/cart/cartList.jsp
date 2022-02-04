<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>장바구니</title>
	<link rel="stylesheet" type="text/css" href="../resources/css/cartStyle.css">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,900" rel="stylesheet">
</head>
<body>
   <div class="CartContainer">
   	   <div class="Header">
		
   	   	<h3 class="Heading">Sue Flower 장바구니</h3>
   	   	<h5 class="Action">전체 삭제</h5>
   	   </div>

   	   <div class="Cart-Items">
   	   	  <div class="image-box">
   	   	  	<img src="images/apple.png" style={{ height="120px" }} />
   	   	  </div>
   	   	  <div class="about">
   	   	  	<h2 class="title">Apple Juice</h2>
   	   	  </div>
   	   	  <div class="counter">
   	   	  	<span>수량: <input type="number" name="quantity" value="1"></input><span>
   	   	  </div>
   	   	  <div class="prices">
   	   	  	<div class="amount">$2.99</div>
   	   	  	<div class="remove"><u>삭제</u></div>
   	   	  </div>
   	   </div>


   	 <hr> 
   	 <div class="checkout">
   	 <div class="total">
   	 	<div>
   	 		<div class="Subtotal">총 주문 금액</div>
   	 		<div class="items">2 items</div>
   	 	</div>
   	 	<div class="total-amount">$6.18</div>
   	 </div>
   	 <button class="button">결제하러 가기</button></div>
   </div>
</body>
</html>