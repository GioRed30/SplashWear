<%@ page import="dao.ProdottoDao" %>
<%@ page import="Entity.Prodotto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Modifica</title>
    <title>Admin</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Admin.css">
    <style>
      body {
        background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
      }
    </style>
  </head>
  <body>
  <% ProdottoDao prodottoDao = new ProdottoDao();
    Prodotto p = prodottoDao.doRetrieveById(request.getParameter("codice"));%>
  <div class="aggiungi_prodotto">
    <img src = "${pageContext.request.contextPath}/Image/icons8-scatola-64.png">
    <h3>Modifica Prodotto</h3>
    <form action="${pageContext.request.contextPath}/ModificaProdotto" method="post">
      <input type="hidden" name="codice" value="<%=p.getCodice()%>">
      <div class = "divisione_content">
        <div class="div-divcontent">
          <%--@declare id="nome"--%><label for="nome">Nome:</label>
          <input type="text" id="name" name="prodottoNome" value="<%= p.getNome() %>"><br><br>
        </div>
        <div class="div-divcontent">
          <label for="nome">Prezzo:</label>
          <input type="text" id="prezzo" name="prezzo" value="<%= p.getPrezzo() %>"><br><br>
        </div>
      </div>
      <div class = divisione_content>
        <div class = "div-divcontent">
          <label for="nome">Tipo:</label>
          <input type="text" id="tipo" name="tipo" value="<%= p.getTipo() %>"><br><br>
        </div>
        <div class="div-divcontent">
          <label for="nome">Immagine:</label>
          <input type="text" id="img" name="immagine" value="<%= p.getLink_immagine() %>"><br><br>
        </div>
      </div>
      <div class="div-divcontent">
        <label for="nome">Descrizione:</label>
        <textarea class="text_box" id="descrizione" name="Descrizione"><%= p.getDescrizione() %></textarea><br><br>
      </div>
      <input class="button" type="submit" id="submit" value="CONFERMA MODIFICHE">  <a href="${pageContext.request.contextPath}/EliminaProdotto?codice=<%=p.getCodice()%>" class="logout" >ELIMINA</a><br><br>
    </form>
  </div>
  </body>
</html>
