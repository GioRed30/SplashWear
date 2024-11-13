<%@ page import="dao.CarrelloDAO" %>
<%@ page import="Entity.Carrello" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/CaricaNegozio"/>
<html>
<head>
  <title>Admin</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Admin.css">
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
        <input type="text" id="nome" name="nome" value="${logged_user.nome}"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="cognome">Cognome:</label>
        <input type="text" id="cognome" name="cognome" value="${logged_user.cognome}"><br><br>
      </div>
    </div>
    <div class = "divisione_content">
      <div class="div-divcontent">
        <label for="nome_utente">User_Name:</label>
        <input type="text" id="nome_utente" name="nomeutente" value="${logged_user.nomeUtente}"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="password">Password:</label>
        <input type="text" id="password" name="password" value="${logged_user.passwordUtente}"><br><br>
      </div>
    </div>
    <div class = "divisione_content">
      <div class="div-divcontent">
        <label for="via">Via:</label>
        <input type="text" id="via" name="via" value="${logged_user.via}"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="civico">Civico:</label>
        <input type="text" id="civico" name="civico" value="${logged_user.civico}"><br><br>
      </div>
    </div>
    <div class = "divisione_content">
      <div class="div-divcontent">
        <label for="Cap">Cap:</label>
        <input type="text" id="cap" name="cap" value="${logged_user.cap}"><br><br>
      </div>
      <div class="div-divcontent">
        <label for="cellulare">Cellulare:</label>
        <input type="text" id="cellulare" name="cellulare" value="${logged_user.telefono}"><br><br>
      </div>
    </div>
    <div class="divisione_content">
      <a href="${pageContext.request.contextPath}/LogOutServlet" class="logout">Esci</a>
    </div>
  </form>
</div>

<div class="aggiungi_prodotto">
  <img src = "${pageContext.request.contextPath}/Image/icons8-scatola-64.png">
  <h3>Aggiungi Prodotto</h3>
  <form action="${pageContext.request.contextPath}/AggiungiProdottoServlet" method="post">
    <div class = "divisione_content">
      <div class="div-divcontent">
        <label for="nome">Nome:</label>
        <input type="text" id="name" name="prodottoNome" placeholder="Nome Prodotto"><br><br>
        </div>
      <div class="div-divcontent">
        <label for="nome">Prezzo:</label>
        <input type="text" id="prezzo" name="prezzo" placeholder="Prezzo Prodotto"><br><br>
        </div>
    </div>
        <div class = divisione_content>
          <div class = "div-divcontent">
        <label for="nome">Tipo:</label>
        <input type="text" id="tipo" name="tipo" placeholder="Tipo Prodotto"><br><br>
        </div>
          <div class="div-divcontent">
            <label for="nome">Immagine:</label>
            <input type="text" id="img" name="immagine" placeholder="Link Immagine"><br><br>
          </div>
      </div>
<div class="div-divcontent">
  <label for="nome">Descrizione:</label>
  <textarea class="text_box" id="descrizione" name="Descrizione" placeholder="Descrizione Prodotto..."></textarea><br><br>
</div>
    <input class="button" type="submit" id="submit" value="CONFERMA"><br><br>
  </form>
</div>

<div class = "catalogo">
  <img src="${pageContext.request.contextPath}/Image/lista_catalogo50.png">
  <h3>Catalogo</h3>

  <ul>
      <c:forEach items="${Negozio}" var="prodottos">
        <form class="display">
        <li><p> Nome Prodotto: ${prodottos.nome} - Prezzo: ${prodottos.prezzo}€ </p>
          <a class="button"
             onclick="window.open('ModificaProdotti.jsp?codice=' + '${prodottos.codice}', 'PopupWindow', 'width=600,height=400,left=400,top=250');">
            Modifica</a>
        </li>
        </form>
      </c:forEach>

  </ul>

</div>
<script>
  window.onload = function() {
    if (window.opener) {
      window.opener.location.reload();
      window.close();
    }
  };
</script>

<div class = "catalogo">
  <img src="${pageContext.request.contextPath}/Image/icons8-clipboard-50.png">
  <h3>Ordini Spediti Utenti</h3>

  <ul>
    <%
      CarrelloDAO cdao = new CarrelloDAO();
      ArrayList<Carrello> ordini = (ArrayList<Carrello>) cdao.doRetrieveAll();
      for(int i=0; i<ordini.size();i++){
    %>
    <li><p> Id Acquisto:<%= ordini.get(i).getId()%> - Totale ordine: <%= ordini.get(i).getTotale()%>€ - CodUtente: <%= ordini.get(i).getCodiceUtente() %></p></li>
    <% }%>
  </ul>
</div>

</body>
</html>

