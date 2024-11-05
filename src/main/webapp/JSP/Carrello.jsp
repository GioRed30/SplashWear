<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Carrello.css">
  <style>
    body {
      background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
    }
  </style>
</head>
<body>
<div class = "carrello">
  <img src="${pageContext.request.contextPath}/Image/shopper.png" class="shopper">
  <img src="${pageContext.request.contextPath}/Image/donna3.png" class="prodotto">
  <div class="prod-info">
    <p class="nome-prod">
      Bikini Donna
    </p>
    <p class="prezzo-prod">€23</p>
  </div>


</div>
</body>
</html>
