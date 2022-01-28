<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="utf-8">
  <title>Sue Flower</title>
  <link rel="stylesheet" href="resources/css/bootstrap.css">
  <link rel="stylesheet" href="resources/css/animate.css">
  <link rel="stylesheet" href="resources/css/font-awesome.min.css">
  <link rel="stylesheet" href="resources/css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
</head>
<body>
<header>
  <div class="header-menu">
    <div class="container">
      <div class="row">
        <div class="col-sm-2">
          <div class="logo">
            <a href="/">
              <img src="resources/img/logo.png" alt="">
            </a>
          </div>
        </div>
        <div class="col-sm-8">
          <nav class="navbar">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed button-toggle" data-toggle="collapse" data-target="#main-menu">
                    <span class="sr-only">Toggle navigation</span>
                    <span></span>
                    <span></span>
                    <span></span>
                </button>
            </div>
            <div class="main-menu collapse navbar-collapse" id="main-menu">
              <ul class="nav navbar-nav">
                <li class="active"><a href="/">Home</a></li>
                <li><a href="product/products.html">꽃다발</a></li>
                <li><a href="#">소품샵</a></li>
                <li><a href="board/blist">커뮤니티 게시판</a></li>
                <li><a href="#">카카오 문의</a></li>
              </ul>
            </div>
          </nav>
        </div>
        <div class="col-2 text-right">
          <ul class="service-inform">
            <li>
              <a href="#">
                <i class="fa fa-search" aria-hidden="true"></i>
              </a>
            </li>
            <li><a href="member/login"><i class="fa fa-user-o  fa-2x" aria-hidden="true"></i></a></li>
            <li class="basket"><a href="#"><i class="fa fa-shopping-bag  fa-2x" aria-hidden="true"></i><div class="basket-count">5</div></a></li>
            <li><a href="https://www.instagram.com/sueflower_/" target="_blank"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
          </ul>
        </div>
      </div> <!-- // row -->
    </div> <!-- //container -->
  </div> <!-- //header-menu -->
</header>

<div id="banner-carousel" class="banner-carousel carousel carousel-fade fade" data-ride="carousel" data-interval="10000">

  <ol class="carousel-indicators">
    <li class="active" data-slide-to="0" data-target="#banner-carousel"></li>
    <li data-slide-to="1" data-target="#banner-carousel"></li>
    <li data-slide-to="2" data-target="#banner-carousel"></li>
  </ol> <!-- //Indicators -->


  <!-- Wrapper for slides -->
  <div class="carousel-inner">

    <div class="item item-1 active">
      <div class="container">
        <div class="banner-contain">
          <h1>꽃 Flowers</h1>
          <p class="combo-kit">마음을 선물하세요</p>
          <p class="description"></p>
          <div class="combo-order">
            가격 : 3000원 ~
            <a href="#">
              <i class="fa fa-shopping-bag" aria-hidden="true"></i> 보러가기
            </a>
          </div>
        </div>
      </div>
    </div><!--//item-->

    <div class="item item-2">
      <div class="container">
        <div class="banner-contain">
          <h1>꽃다발 Bouquets</h1>
          <p class="combo-kit">특별한 날, 꽃으로</p>
          <p class="description">임명식, 졸업식, 입학식, 생일, 기념일 </p>
          <div class="combo-order">
            가격 : 10000원 ~
            <a href="#">
              <i class="fa fa-shopping-bag" aria-hidden="true"></i> Order now
            </a>
          </div>
        </div>
      </div>
    </div><!--//item-->

   <div class="item item-3">
      <div class="container">
        <div class="banner-contain">
          <h1>소품 Props</h1>
          <p class="combo-kit"></p>
          <p class="description"></p>
          <div class="combo-order">
            Price : 3000원 ~
            <a href="#">
              <i class="fa fa-shopping-bag" aria-hidden="true"></i> Order now
            </a>
          </div>
        </div>
      </div>
    </div><!--//item-->
  </div><!--//carousel-inner-->
</div><!--//carousel-->

<!-- <div class="new-arrivals">
  <h2><span>꽃</span> 구경</h2>
  <p class="description">Sue flower Products</p>
  <div class="products">
    <div class="container">
      <div class="row center-block">
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
          <div class="product">
            <img src="resources/img/ceremony (1).png" alt=""><br>
            
          </div> //product
        </div> //col
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
          <div class="product">
            <img src="resources/img/product2.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="resources/img/product2.png" alt=""><br>
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="size">
                size : &nbsp;
                <input type="radio" id="sizeS2" name="size" />
                <label for="sizeS2"><span>s</span></label>
                <input type="radio" id="sizeM2" name="size" />
                <label for="sizeM2"><span>m</span></label>
                <input type="radio" id="sizeL2" name="size" />
                <label for="sizeL2"><span>l</span></label>
                <input type="radio" id="sizeXL2" name="size" />
                <label for="sizeXL2"><span>xl</span></label>
              </div> //size
              <div class="color">
                <input type="radio" id="color21" name="color" />
                <label for="color21">
                  <span class="circle circle1"></span>
                </label>
                <input type="radio" id="color22" name="color" />
                <label for="color22">
                  <span class="circle circle2"></span>
                </label>
                <input type="radio" id="color23" name="color" />
                <label for="color23">
                  <span  class="circle circle3"></span>
                </label>
                <input type="radio" id="color24" name="color" />
                <label for="color24">
                  <span class="circle circle4"></span>
                </label>
              </div> //color
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> //product-buttons
            </div> //product-hover
          </div> //product
        </div> //col
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
          <div class="product">
            <img src="resources/img/product3.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="resources/img/product3.png" alt=""><br>
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="size">
                size : &nbsp;
                <input type="radio" id="sizeS3" name="size" />
                <label for="sizeS3"><span>s</span></label>
                <input type="radio" id="sizeM3" name="size" />
                <label for="sizeM3"><span>m</span></label>
                <input type="radio" id="sizeL3" name="size" />
                <label for="sizeL3"><span>l</span></label>
                <input type="radio" id="sizeXL3" name="size" />
                <label for="sizeXL3"><span>xl</span></label>
              </div> //size
              <div class="color">
                <input type="radio" id="color31" name="color" />
                <label for="color31">
                  <span class="circle circle1"></span>
                </label>
                <input type="radio" id="color32" name="color" />
                <label for="color32">
                  <span class="circle circle2"></span>
                </label>
                <input type="radio" id="color33" name="color" />
                <label for="color33">
                  <span  class="circle circle3"></span>
                </label>
                <input type="radio" id="color34" name="color" />
                <label for="color34">
                  <span class="circle circle4"></span>
                </label>
              </div> //color
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> //product-buttons
            </div> //product-hover
          </div> //product
        </div> //col
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 center-block">
          <div class="product">
            <img src="resources/img/product1.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="resources/img/product1.png" alt=""><br>
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="size">
                size : &nbsp;
                <input type="radio" id="sizeS4" name="size" />
                <label for="sizeS4"><span>s</span></label>
                <input type="radio" id="sizeM4" name="size" />
                <label for="sizeM4"><span>m</span></label>
                <input type="radio" id="sizeL4" name="size" />
                <label for="sizeL4"><span>l</span></label>
                <input type="radio" id="sizeXL4" name="size" />
                <label for="sizeXL4"><span>xl</span></label>
              </div> //size
              <div class="color">
                <input type="radio" id="color41" name="color" />
                <label for="color41">
                  <span class="circle circle1"></span>
                </label>
                <input type="radio" id="color42" name="color" />
                <label for="color42">
                  <span class="circle circle2"></span>
                </label>
                <input type="radio" id="color43" name="color" />
                <label for="color43">
                  <span  class="circle circle3"></span>
                </label>
                <input type="radio" id="color44" name="color" />
                <label for="color44">
                  <span class="circle circle4"></span>
                </label>
              </div> //color
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> //product-buttons
            </div> //product-hover
          </div> //product
        </div> //col
        <a href="#" class="btn load-more">
          <span></span>
          <span></span>
          <span></span>
        </a>
      </div> //row
    </div> //container
  </div> //products
</div> //new arrivals
<div class="advert">
  <div class="container">
    <div class="row">
      <div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
        <div class="sale">
          <img src="resources/img/sale.png" alt="">
          <div class="sale-name">
            <h3>Full winter kit</h3>
            <p>Half Jacket + Skiny Trousers + Boot leather</p>
          </div>
          <a href="#">120<span>$</span></a>
        </div> //sale
      </div> //col
      <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
        <div class="advert-area">
          <p>adv <span>area</span></p>
          <p class="adv-size">470 x 100</p>
        </div>
      </div>
    </div> //row
  </div> //container
</div> //advert
<div class="best-sales">
  <h2><span>Best</span> sales</h2>
  <p class="description">Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
  <div class="container">
    <div class="sale-orders">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-xs-12">
          <div class="sale-order">
            <img src="resources/img/product-sale.png" alt="">
            <div class="sale-description">
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="order-mark">
                <div class="stars">
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                100$
                <div class="order-mark-hover">
                  <a href="#">
                    <i class="fa fa-cart-plus" aria-hidden="true"></i> add to cart
                  </a>
                </div>
              </div> //order-mark
            </div> //sale-description
          </div> //sale-order
        </div> //col
        <div class="col-lg-4 col-md-4 col-xs-12">
          <div class="sale-order">
            <img src="resources/img/product-sale.png" alt="">
            <div class="sale-description">
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="order-mark">
                <div class="stars">
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                100$
                <div class="order-mark-hover">
                  <a href="#">
                    <i class="fa fa-cart-plus" aria-hidden="true"></i> add to cart
                  </a>
                </div>
              </div> //order-mark
            </div> //sale-description
          </div> //sale-order
        </div> //col
        <div class="col-lg-4 col-md-4 col-xs-12">
          <div class="sale-order">
            <img src="resources/img/product-sale.png" alt="">
            <div class="sale-description">
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="order-mark">
                <div class="stars">
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star active" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </div>
                100$
                <div class="order-mark-hover">
                  <a href="#">
                    <i class="fa fa-cart-plus" aria-hidden="true"></i> add to cart
                  </a>
                </div>
              </div> //order-mark
            </div> //sale-description
          </div> //sale-order
        </div> //col
      </div> //row
    </div> //sale-orders
  </div> //container
</div> //best-sales -->


<!-- <div class="container">
  <div class="subscription">
    <div class="col-lg-6 col-md-6 col-xs-12">
      <h4>News letter</h4>
      <p>join us now to get all news and special offers</p>
    </div>
    <div class="col-lg-6 col-md-6 col-xs-12">
      <form class="subs" action="#" method="post">
        <label>
          <i class="fa fa-envelope-o" aria-hidden="true"></i>
          <input type="text" placeholder="type your email here">
        </label>
        <button class="join" type="button" name="button">join us</button>
      </form>
    </div>
  </div>
</div> -->

<footer>
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <a href="#"><img src="resources/img/logo.png" alt=""></a>
        <p class="copyright">
          shopy c 2022 . your copy right here
        </p>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2">
        <ul>
          <li><a href="#">about us</a></li>
          <li><a href="#">contact us</a></li>
          <li><a href="#">support</a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2">
        <ul  class="footer-col-min">
          <li><a href="#">our feed</a></li>
          <li><a href="#">terms and conditions</a></li>
          <li><a href="#">our privacy</a></li>
        </ul>
      </div>
      <div class="col-lg-2 col-md-2 col-sm-2">
        <ul>
          <li><a href="#">join us</a></li>
          <li><a href="#">live support</a></li>
        </ul>
      </div>
      <div class="col-lg-3 col-md-3 col-sm-2 text-right">
        <h5>Payment Methods</h5>
        <img src="resources/img/payment.png" alt="">
      </div>
    </div>
  </div>
</footer>

</body>
</html>