<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>장바구니</title>
<link rel="stylesheet" type="text/css"
	href="../resources/css/cart.css">

<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,900"
	rel="stylesheet">
</head>
<body>

	<div id="wrap">
        <header>
            <div class="logo">
                <a href="/">메인페이지로 가기</a>
            </div>
        </header>
        <section id="contents-cart" class="contents-cart async-content">
            <section class="cart-title">
                <h1 class="sr-only">Sue Flower 장바구니</h1><br>
                
            
                <hr><br><br>
            </section>

            <table class="cartTable" summary="장바구니 상품명, 제품가격, 선택한수량, 총결제비용 정보 및 결제 상품으로 선택,해제 및 수량변경, 삭제 기능 제공표">
                
                <thead>
	                <colgroup>
	                    <col width="80" />
	                    <col width="180" />
	                    <col width="*" />
	                    <col width="180" />
	                    <col width="90" />
	                </colgroup>
	                <tr class="head">
	                    <th scope="col" class="all-select-event"><label><input title="모든 상품을 결제상품으로 설정" type="checkbox"
	                                class="all-deal-select" /><span>&nbsp;&nbsp;전체선택</span></label></th>
	                    <th scope="colgroup" id="th-product-box" colspan="2">
	                        &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;상품정보
	                    </th>
	                    <th scope="col" id="th-unit-total-price">상품금액
	                    </th>
	                    <th scope="col" id="th-delivery-fee">배송비</th>
	                </tr>
                </thead>
				
				
				<c:forEach var="list" items="${cartList}">
                <tbody id="cartTable-sku">                       
                    <tr class="cart-deal-item ">
                        <td class="product-select-event">
                            <input type="checkbox" class="dealSelectChk" />
                        </td>
                        <td class="cart-deal-item__image ">
                            &emsp;&emsp;&emsp;&emsp;
                                <img src="../resources/uploadImage/${list.uploadfile }"
                                    width="78" height="78" class="product-img img" alt="${list.productName }"/>
                            
                        </td>
                        <td class="product-box">
                            <div class="product-name-part">
                                <a href="/product/productDetail?productId=${list.productId}"
                                    class="product-name moveProduct">${list.productName}</a>
                            </div>

                            <div>
                            
                                <div class="option-price-part">

                                    <span class="unit-cost" >
                                        <fmt:formatNumber value="${list.productPrice }" pattern="#,###,###"/></span>
                                    <span class="select-select">
                                        <select class="quantity-select">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                        </select>
                                    </span>
                                </div>
                            </div>
                        </td>
                        <td class="unit-total-price">
                            <div class="unit-total-sale-price">&emsp;&emsp;&emsp;&emsp;
                                 <fmt:formatNumber value="${list.totalPrice}" pattern="#,###,###"/>원</div>
                        </td>
                        </c:forEach>
            </table>
            <br><br><br><br>

            <!-- 총 주문 금액 -->
            <div class="cart-total-price" data-total-price="0">
                <div class="price-area">
                    총 주문금액
                    <em class="final-order-price" data-final-order-price=0>
                        <span id="totalPrice"><fmt:formatNumber value="${sumTotalPrice}" pattern="#,###,###"/></span>원
                    </em>
                </div>
            </div>

</body>
</html>