<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
  <meta charset="utf-8">
  <title>Product show</title>
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/font-awesome.min.css">
  <link rel="stylesheet" href="css/style.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<header>
  <div class="header-contact">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
          <div class="header-contact-inform">
            <i class="fa fa-envelope-o" aria-hidden="true"></i> &nbsp;info@shopy.com
          </div>
          <div class="header-contact-inform">
            <i class="fa fa-mobile" aria-hidden="true"></i> &nbsp;996 - 5553 - 453
          </div>
        </div> <!-- //col -->
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 text-right">
          <ul>
            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
          </ul>
        </div> <!-- //col -->
      </div> <!-- //row -->
    </div> <!-- //container -->
  </div> <!-- //header-contact -->
  <div class="header-menu">
    <div class="container">
      <div class="row">
        <div class="col-sm-2">
          <div class="logo">
            <a href="index.html">
              <img src="img/logo.png" alt="">
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
                <li><a href="index.html">Home</a></li>
                <li class="active"><a href="products.html">Products</a></li>
                <li><a href="#">Hot deals</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
              </ul>
            </div>
          </nav>
        </div>
        <div class="col-sm-2 text-right">
          <ul class="service-inform">
            <li>
              <a href="#">
                <i class="fa fa-search" aria-hidden="true"></i>
              </a>
            </li>
            <li><a href="#"><i class="fa fa-user-o" aria-hidden="true"></i></a></li>
            <li class="basket"><a href="#"><i class="fa fa-shopping-bag" aria-hidden="true"></i><div class="basket-count">5</div></a></li>
          </ul>
        </div>
      </div> <!-- // row -->
    </div> <!-- //container -->
  </div> <!-- //header-menu -->
</header>


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
      <h1>Full winter kit</h1>
      <p class="description-full">
        Half Jacket + Skiny Trousers + Boot leather
      </p>
      <p class="product-about">
        Lorem Ipsum is simply dummy text of the printing and typesetting industry
Lorem Ipsum is simply dummy text of the printing
 and typesetting industry
      </p>
      <hr>
      <div class="choose">
        <div class="choose-size">
          Choose Size
          <div class="choose-active">
            <input type="radio" id="s1" name="size" />
            <label for="s1" class="size">S</label>
            -
            <input type="radio" id="s2" name="size" />
            <label for="s2" class="size">M</label>
            -
            <input type="radio" id="s3" name="size" />
            <label for="s3" class="size">L</label>
            -
            <input type="radio" id="s4" name="size" />
            <label for="s4" class="size">XL</label>
          </div>
        </div> <!-- //choose-size -->
        <div class="choose-separate"></div>
        <div class="choose-quanity">
          Choose Quanity
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
          Price : <input type="text" readonly id="total" class="total" name="total" value="120">$
        </div>
        <div class="choose-order">
          <i class="fa fa-globe" aria-hidden="true"></i>
          <i class="fa fa-cart-plus" aria-hidden="true"></i>
          <i class="fa fa-heart-o" aria-hidden="true"></i>
          <input type="submit" class="submit-order" name="submit-order" value="Order Now">
        </div>
      </div><!-- //chose -->
    </div> <!-- //col -->
  </div> <!-- //container -->
</div> <!-- //product-show -->

<div class="related-products">
  <div class="container text-center">
    <h3><span>Related</span> products</h3>
    <p class="product-about">
      Lorem Ipsum is simply dummy text of the printing and typesetting industry
    </p>
    <div class="products">
      <div class="row center-block">
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
          <div class="product">
            <img src="img/product1.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product1.png" alt=""><br>
              <a href="product_show.html">Reebok Track Jacket</a>
              <div class="size">
                size : &nbsp;
                <input type="radio" id="sizeS1" name="size" />
                <label for="size1S"><span>s</span></label>
                <input type="radio" id="sizeM1" name="size" />
                <label for="sizeM1"><span>m</span></label>
                <input type="radio" id="sizeL1" name="size" />
                <label for="sizeL1"><span>l</span></label>
                <input type="radio" id="sizeXL1" name="size" />
                <label for="sizeXL1"><span>xl</span></label>
              </div> <!-- //size -->
              <div class="color">
                <input type="radio" id="color11" name="color" />
                <label for="color11">
                  <span class="circle circle1"></span>
                </label>
                <input type="radio" id="color12" name="color" />
                <label for="color12">
                  <span class="circle circle2"></span>
                </label>
                <input type="radio" id="color13" name="color" />
                <label for="color13">
                  <span class="circle circle3"></span>
                </label>
                <input type="radio" id="color14" name="color" />
                <label for="color14">
                  <span class="circle circle4"></span>
                </label>
              </div> <!-- //color -->
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> <!-- //product-buttons -->
            </div> <!-- //product-hover -->
          </div> <!-- //product -->
        </div> <!-- //col -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
          <div class="product">
            <img src="img/product2.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product2.png" alt=""><br>
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
              </div> <!-- //size -->
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
              </div> <!-- //color -->
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> <!-- //product-buttons -->
            </div> <!-- //product-hover -->
          </div> <!-- //product -->
        </div> <!-- //col -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
          <div class="product">
            <img src="img/product3.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product3.png" alt=""><br>
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
              </div> <!-- //size -->
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
              </div> <!-- //color -->
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> <!-- //product-buttons -->
            </div> <!-- //product-hover -->
          </div> <!-- //product -->
        </div> <!-- //col -->
        <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 center-block">
          <div class="product">
            <img src="img/product1.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product1.png" alt=""><br>
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
              </div> <!-- //size -->
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
              </div> <!-- //color -->
              <div class="underline center-block"></div>
              <div class="product-buttons">
                <a href="#" class="btn"><i class="fa fa-globe" aria-hidden="true"></i></a>
                <a href="#" class="btn basket"><i class="fa fa-cart-plus" aria-hidden="true"></i></a>
                <a href="#" class="btn"><i class="fa fa-heart-o" aria-hidden="true"></i></a>
              </div> <!-- //product-buttons -->
            </div> <!-- //product-hover -->
          </div> <!-- //product -->
        </div> <!-- //col -->
      </div> <!-- //row -->
    </div> <!-- //products -->
  </div>
</div>

<div class="container">
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
</div>

<footer>
  <div class="container">
    <div class="row">
      <div class="col-lg-3 col-md-3 col-sm-3">
        <a href="#"><img src="img/logo.png" alt=""></a>
        <p class="copyright">
          shopy c 2015 . your copy right here
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
        <img src="img/payment.png" alt="">
      </div>
    </div>
  </div>
</footer>
<script src="js/custom.js"></script>
</body>
</html>