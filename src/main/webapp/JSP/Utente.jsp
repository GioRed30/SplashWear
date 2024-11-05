<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Utente.css">
    <style>
        body {
            background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
        }
    </style>
</head>
<body>
<div class="form">
    <img src = "${pageContext.request.contextPath}/Image/user.png">
    <form action="#">
      <div class = "divisione_content">
          <div class="div-divcontent">
              <label for="nome">Nome:</label>
              <input type="text" id="nome" name="nome" value="Giovanni"><br><br>
          </div>
          <div class="div-divcontent">
              <label for="cognome">Cognome:</label>
              <input type="text" id="cognome" name="cognome" value="Russo"><br><br>
          </div>
      </div>
        <div class = "divisione_content">
            <div class="div-divcontent">
                <label for="nome_utente">User_Name:</label>
                <input type="text" id="nome_utente" name="nomeutente" value="giovanni_red"><br><br>
            </div>
            <div class="div-divcontent">
                <label for="password">Password:</label>
                <input type="text" id="password" name="password" value="ciao"><br><br>
            </div>
        </div>
        <div class = "divisione_content">
            <div class="div-divcontent">
                <label for="via">Via:</label>
                <input type="text" id="via" name="via" value="Marco Polo"><br><br>
            </div>
            <div class="div-divcontent">
                <label for="civico">Civico:</label>
                <input type="text" id="civico" name="civico" value="25"><br><br>
            </div>
        </div>
        <div class = "divisione_content">
            <div class="div-divcontent">
                <label for="Cap">Cap:</label>
                <input type="text" id="cap" name="cap" value="84084"><br><br>
            </div>
            <div class="div-divcontent">
                <label for="cellulare">Cellulare:</label>
                <input type="text" id="cellulare" name="cellulare" value="3245832345"><br><br>
            </div>
        </div>

    </form>
</div>

<div class = "ordini">
    <img src="${pageContext.request.contextPath}/Image/shopper.png">
    <h3>Riepilogo Ordini</h3>
    <ul>
        <li><p> Id Acquisto: 204980148 - PrezzoTotale: 24$ - CodProdotto: 4253</p></li>
        <li><p> Id Acquisto: 204980148 - PrezzoTotale: 24$ - CodProdotto: 4253</p></li>
        <li><p> Id Acquisto: 204980148 - PrezzoTotale: 24$ - CodProdotto: 4253</p></li>
    </ul>
</div>
</body>
</html>
