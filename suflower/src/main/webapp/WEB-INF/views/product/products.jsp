<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Products</title>
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
                <li class="active"><a href="#">Products</a></li>
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

<main>
<div class="container">
  <div class="row">
    <div class="col-lg-3 col-md-4 col-xs-12">
      <div class="filter filter-category">
        <h4>Categories</h4>
        <ul>
          <li><a href="#">Man</a></li>
          <li><a href="#">Women</a></li>
          <li><a href="#">Childrens</a></li>
          <li><a href="#">Hot Deals</a></li>
        </ul>
      </div> <!-- //filter-category -->
      <div class="filter filter-price">
        <h4>Price Filter</h4>
        <div class="easy-basket-filter">

          <div class="easy-basket-filter-info">
            <p class="iLower"><input type="text" class="easy-basket-lower" value="0" min="0" max="5000" maxlength=6/>$</p>
            <p class="iUpper"><input type="text" class="easy-basket-upper" value="5000" min="0" max="5000" maxlength=6/>$</p>
          </div>

          <div class="easy-basket-filter-range">
            <input type="range" class="lower range" step="any" min="0" max="5000" value="0"/>
            <input type="range" class="upper range" step="any" min="0" max="5000" value="5000"/>
            <div class="fill"></div>
          </div>
        </div> <!-- //easy-basket-filter -->
      </div> <!-- //filter-price -->
      <div class="filter filter-sizes">
        <h4>Sizes</h4>
        <ul>
          <li>
            <input type="checkbox" id="check-size1" name="check-size1">
            <label for="check-size1"  class="check">Small</label>
          </li>
          <li>
            <input type="checkbox" id="check-size2" name="check-size2">
            <label for="check-size2"  class="check">Medium</label>
          </li>
          <li>
            <input type="checkbox" id="check-size3" name="check-size3">
            <label for="check-size3"  class="check">Larg</label>
          </li>
          <li>
            <input type="checkbox" id="check-size4" name="check-size4">
            <label for="check-size4"  class="check">X-Larg</label>
          </li>
        </ul>
      </div> <!-- //filter-sizes -->
      <div class="filter filter-brands">
        <h4>Brands</h4>
        <ul>
          <li>
            <input type="checkbox" id="check-brand1" name="check-brand1">
            <label for="check-brand1"  class="check">Reebok</label>
          </li>
          <li>
            <input type="checkbox" id="check-brand2" name="check-brand2">
            <label for="check-brand2"  class="check">Addidas</label>
          </li>
          <li>
            <input type="checkbox" id="check-brand3" name="check-brand3">
            <label for="check-brand3"  class="check">Nike</label>
          </li>
          <li>
            <input type="checkbox" id="check-brand4" name="check-brand4">
            <label for="check-brand4"  class="check">Active</label>
          </li>
        </ul>
      </div>
    </div> <!-- //col -->
    <div class="col-lg-9 col-md-8 col-xs-12">
      <div class="row center-block">
        <div class="col-lg-4 col-md-6 col-xs-12">
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
        <div class="col-lg-4 col-md-6 col-xs-12">
          <div class="product">
            <img src="img/product2.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product2.png" alt=""><br>
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
        <div class="col-lg-4 col-md-6 col-xs-12">
          <div class="product">
            <img src="img/product3.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product3.png" alt=""><br>
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
        <div class="col-lg-4 col-md-6 col-xs-12">
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
        <div class="col-lg-4 col-md-6 col-xs-12">
          <div class="product">
            <img src="img/product2.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product2.png" alt=""><br>
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
        <div class="col-lg-4 col-md-6 col-xs-12">
          <div class="product">
            <img src="img/product3.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product3.png" alt=""><br>
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
        <div class="col-lg-4 col-md-6 col-xs-12">
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
        <div class="col-lg-4 col-md-6 col-xs-12">
          <div class="product">
            <img src="img/product2.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product2.png" alt=""><br>
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
        <div class="col-lg-4 col-md-6 col-xs-12">
          <div class="product">
            <img src="img/product3.png" alt=""><br>
            <a href="product_show.html">Reebok Track Jacket</a>
            <p class="price">100$</p>
            <div class="product-hover">
              <img src="img/product3.png" alt=""><br>
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
        <a href="#" class="btn load-more-products">
          <span></span>
          <span></span>
          <span></span>
        </a>
      </div> <!-- //row products -->
    </div> <!-- //col -->
  </div> <!-- //row -->
</div> <!-- //container -->
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
</main>

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
