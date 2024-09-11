<!DOCTYPE html>
<html>
<head>
  <title>Bambini</title>
  <link rel="stylesheet" href="../Styles/Bimbi.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    <%@include file="../Styles/Fragment.css" %>
    <%@include file="../Styles/Footer.css" %>
  </style>
  <script src="https://kit.fontawesome.com/9f21a37842.js"crossorigin="anonymous"></script>
<body>
<%@include file="Fragment.jsp" %>

<section class="section-products">
  <div class="container">
    <div class="row justify-content-center text-center">
      <div class="col-md-8 col-lg-6">
        <div class="header">
          <h3>Costumi Bambini</h3>
        </div>
      </div>
    </div>
    <div class="row">
      <!-- Single Product -->
      <div class="col-md-6 col-lg-4 col-xl-3">
        <div id="product-1" class="single-product">
          <div class="part-1">
            <ul>

              <li><a href="Carrello.jsp"><i class="fas fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="part-2">
            <h3 class="product-title">Costume 1</h3>
            <h4 class="product-price">$49.99</h4>
          </div>
        </div>
      </div>
      <!-- Single Product -->
      <div class="col-md-6 col-lg-4 col-xl-3">
        <div id="product-2" class="single-product">
          <div class="part-1">

            <ul>

              <li><a href="Carrello.jsp"><i class="fas fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="part-2">
            <h3 class="product-title">Costume 2</h3>
            <h4 class="product-price">$49.99</h4>
          </div>
        </div>
      </div>
      <!-- Single Product -->
      <div class="col-md-6 col-lg-4 col-xl-3">
        <div id="product-3" class="single-product">
          <div class="part-1">
            <ul>

              <li><a href="Carrello.jsp"><i class="fas fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="part-2">
            <h3 class="product-title">Costume 3</h3>
            <h4 class="product-price">$49.99</h4>
          </div>
        </div>
      </div>
      <!-- Single Product -->
      <div class="col-md-6 col-lg-4 col-xl-3">
        <div id="product-4" class="single-product">
          <div class="part-1">
            <span class="new">new</span>
            <ul>

              <li><a href="Carrello.jsp"><i class="fas fa-shopping-cart"></i></a></li>
            </ul>
          </div>
          <div class="part-2">
            <h3 class="product-title">Costume 4</h3>
            <h4 class="product-price">$49.99</h4>
          </div>
        </div>
      </div>



    </div>
  </div>
  </div>
</section>
<%@include file="Footer.jsp" %>

</body>
</head>
</html>

