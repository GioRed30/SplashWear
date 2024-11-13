<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<nav class="nav">
  <div>
    <img src="${pageContext.request.contextPath}/Image/shopper.png" class="shopper">
  </div>
  <p class="nav-input">Totale: ${prezzo}€</p>
  <button class="nav-button" type="button" onclick="openPopup()">Paga</button>
</nav>
<div class="carrello">
  <c:forEach items="${carrello}" var="prodotto">
    <div class="prodotto">
      <img src="${pageContext.request.contextPath}/Image/${prodotto.link_immagine}" class="prodotto">
      <div class="prod-info">
        <p class="nome-prod">
            ${prodotto.nome}
        </p>
        <p class="prezzo-prod">${prodotto.prezzo}</p>
        <a href="${pageContext.request.contextPath}/CancellaProdottoCarrello?codice=${prodotto.codice}" class="elimina-prod">Elimina Prodotto</a>
      </div>
    </div>
  </c:forEach>
</div>
<script>
  function openPopup() {
    window.open("Pagamento.jsp", "PopupWindow", "width=600,height=400, left= 400, top= 250");
  }
</script>

</body>
</html>
