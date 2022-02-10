<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>장바구니</title>
<script src="../resources/js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="../resources/css/cart.css">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,900"
	rel="stylesheet">
</head>

<script>
$(function() {
	$("#btnDeleteAll").on("click", function() {
		if (confirm("장바구니를 비우시겠습니까?")) {
			location.href = "/cart/deleteAll";
		}
	});
	
	$("#keepShopping").on("click", function(){
		location.href = "/product/productList";
	})
});
</script>
<body>

	<div id="wrap">
		<header>
			<div class="logo">
				<a href="/">메인페이지로 가기</a>
			</div>
		</header>
		<section id="contents-cart" class="contents-cart async-content">
			<section class="cart-title">
				<h1 class="sr-only">Sue Flower 장바구니</h1>
				<br>


				<hr>
				<br>
				<br>
			</section>

			<table class="cartTable"
				summary="장바구니 상품명, 제품가격, 선택한수량, 총결제비용 정보 및 결제 상품으로 선택,해제 및 수량변경, 삭제 기능 제공표">

				<thead>
				<colgroup>
					<col width="80" />
					<col width="180" />
					<col width="*" />
					<col width="180" />
					<col width="90" />
				</colgroup>
				<tr class="head">
					<th scope="col" class="all-select-event"><label><input
							title="모든 상품을 결제상품으로 설정" type="checkbox" class="all-deal-select" /><span>&nbsp;&nbsp;전체선택</span></label></th>
					<th scope="colgroup" id="th-product-box" colspan="2">
						&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;상품정보
					</th>
					<th scope="col" id="th-unit-total-price">상품금액</th>
					<th scope="col" id="th-delivery-fee">배송비</th>
				</tr>

				<button type="button" id="btnDeleteAll">전체 삭제</button>
				
				<form id="cartUpdate" name="cartUpdate" method="post" action="/cart/update">
				</thead>
						<c:forEach var="list" items="${cartList}">
							<tbody id="cartTable-sku">
								<tr class="cart-deal-item ">
									<td class="product-select-event"><input type="checkbox"
										class="dealSelectChk" /> <a href="/cart/delete?cartId=${list.cartId }">삭제</a></td>
									<td class="cart-deal-item__image ">
										&emsp;&emsp;&emsp;&emsp; <img
										src="../resources/uploadImage/${list.uploadfile }" width="78"
										height="78" class="product-img img" alt="${list.productName }" />

									</td>
									<td class="product-box">
										<div class="product-name-part">
											<a href="/product/productDetail?productId=${list.productId}"
												class="product-name moveProduct">${list.productName}</a>
										</div>

										<div>

											<div class="option-price-part">

												<span class="unit-cost"> <fmt:formatNumber
														value="${list.productPrice }" pattern="#,###,###" /></span>&nbsp;
												<span class="select-select"> <input type="number" style="width:30px;" min="0" max="10" name="quantity"
												value="${list.quantity }" /><button id="updateQuantityBtn">완료</button>
												<input type="hidden" name="cartId" value="${list.cartId }"/>
												</span>
											</div>
										</div>
									</td>
									<td class="unit-total-price">
										<div class="unit-total-sale-price">
											&emsp;&emsp;&emsp;&emsp;
											<fmt:formatNumber value="${list.totalPrice}"
												pattern="#,###,###" />
											원
										</div>
									</td>
						</c:forEach>
			</table>
			<br>
			<br>
			<br>
			<br>
			</form>

			<!-- 총 주문 금액 -->
			<div class="cart-total-price">
				<div class="price-area">
					총 주문금액 <em class="final-order-price" data-final-order-price=0>
						<span id="totalPrice"><fmt:formatNumber
								value="${sumTotalPrice}" pattern="#,###,###" /></span>원
					</em>
				</div>
			</div>

			<button type="button" id="keepShopping">계속 쇼핑하기</button>
			&nbsp;&nbsp;
			<button type="button" id="orderSubmit">주문하기</button>
			
</body>
</html>