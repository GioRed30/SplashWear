<%@ page import="Entity.Utente" %>
<%@ page import="dao.CarrelloDAO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Entity.Prodotto" %>
<%@ page import="Entity.Carrello" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
              <input type="text" id="nome" name="nome" value="${logged_user.nome}" disabled><br><br>
          </div>
          <div class="div-divcontent">
              <label for="cognome">Cognome:</label>
              <input type="text" id="cognome" name="cognome" value="${logged_user.cognome}" disabled><br><br>
          </div>
      </div>
        <div class = "divisione_content">
            <div class="div-divcontent">
                <label for="nome_utente">User_Name:</label>
                <input type="text" id="nome_utente" name="nomeutente" value="${logged_user.nomeUtente}" disabled><br><br>
            </div>
            <div class="div-divcontent">
                <label for="password">Password:</label>
                <input type="text" id="password" name="password" value="${logged_user.passwordUtente}" disabled><br><br>
            </div>
        </div>
        <div class = "divisione_content">
            <div class="div-divcontent">
                <label for="via">Via:</label>
                <input type="text" id="via" name="via" value="${logged_user.via}" disabled><br><br>
            </div>
            <div class="div-divcontent">
                <label for="civico">Civico:</label>
                <input type="text" id="civico" name="civico" value="${logged_user.civico}" disabled><br><br>
            </div>
        </div>
        <div class = "divisione_content">
            <div class="div-divcontent">
                <label for="Cap">Cap:</label>
                <input type="text" id="cap" name="cap" value="${logged_user.cap}" disabled><br><br>
            </div>
            <div class="div-divcontent">
                <label for="cellulare">Cellulare:</label>
                <input type="text" id="cellulare" name="cellulare" value="${logged_user.telefono}" disabled><br><br>
            </div>
        </div>

        <div class="divisione_content">
            <a href="${pageContext.request.contextPath}/LogOutServlet" class="logout" type="button">Esci</a>
        </div>
    </form>
</div>

<script>
    window.onload = function() {
        if (window.opener) {
            window.opener.location.reload();
            window.close();
        }
    };
</script>


<div class = "ordini">
    <img src="${pageContext.request.contextPath}/Image/shopper.png">
    <h3>Riepilogo Ordini</h3>

    <ul>
        <%
        Utente u= (Utente) session.getAttribute("logged_user");
        CarrelloDAO cdao = new CarrelloDAO();
        ArrayList<Carrello> ordini = (ArrayList<Carrello>) cdao.doRetrieveByCodiceU(u.getId());
        for(int i=0; i<ordini.size();i++){
        %>
        <li><p> Id Acquisto:<%= ordini.get(i).getId()%> - Totale ordine:<%= ordini.get(i).getTotale()/ordini.get(i).getQuantita()*2%>€ </p></li>
<% }%>
    </ul>
</div>
</body>
</html>
