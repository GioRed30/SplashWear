<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Modifica</title>
  <title>Admin</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Pagamento.css">
  <style>
    body {
      background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
    }
  </style>
</head>
<body>
<div class="pagamento">
  <img src = "${pageContext.request.contextPath}/Image/icons8-wallet-50.png">
  <h3>Pagamento</h3>
  <form action="${pageContext.request.contextPath}/Pagamento" method="post">
    <div class = "divisione_content">
      <div class="div-divcontent">
        <%--@declare id="nome"--%>
          <label for="nome">Nome:</label>
        <input type="text" id="name" name="Nome" placeholder="Nome"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="nome">Cognome:</label>
        <input type="text" id="surname" name="Cognome" PLACEHOLDER="Cognome"><br><br>
      </div>
    </div>
    <div class = divisione_content>
      <div class = "div-divcontent">
        <label for="nome">Via:</label>
        <input type="text" id="street" name="Via" placeholder="Via"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="nome">Civico:</label>
        <input type="text" id="number" name="Numero" placeholder="Numero"><br><br>
      </div>
    </div>
    <div class = divisione_content>
      <div class = "div-divcontent">
        <label for="nome">Città:</label>
        <input type="text" id=city name="citta" placeholder="Città"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="nome">CAP:</label>
        <input type="text" id="postalcode" name="CAP" placeholder="CAP"><br><br>
      </div>
    </div>
    <div class = divisione_content>
      <div class = "div-divcontent">
        <label for="nome">Num. Carta:</label>
        <input type="text" id="card_details" name="carta" placeholder="Numero Di Carta"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="nome">CVV:</label>
        <input type="text" id="cvv" name="CVV" placeholder="CVV"><br><br>
      </div>
    </div>
    <input class="payment_button" type="submit" id="submit" value="CONFERMA & PAGA" onclick=""><br><br>
  </form>
</div>

</body>
</html>
