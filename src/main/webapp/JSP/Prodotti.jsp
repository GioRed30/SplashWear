<%@ page import="java.util.List" %>
<%@ page import="Entity.Prodotto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
  <title>Lista Prodotti</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Prodotti.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
    body {
      background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
    }
  </style>
</head>
<body>
<div class="container d-flex justify-content-center mt-100">
  <div class="product-container">
    <!-- Controlla se la lista dei prodotti non è nulla o vuota -->
    <c:if test="${not empty listaProdotti}">
      <c:forEach items="${listaProdotti}" var="prodotto">
        <div class="product-wrapper mb-45 text-center">
          <div class="product-img">
            <a href="#" data-abc="true">
              <img src="${pageContext.request.contextPath}/Image/${prodotto.link_immagine}">
            </a>

            <div class="product-action">
              <div class="product-action-style">
                <a onclick="aggiungiAlCarrello(${prodotto.codice}, ${prodotto.prezzo})">
<%--                  href="${pageContext.request.contextPath}/AggiungiAlCarrello?quantita=1&prezzo=${prodotto.prezzo}&id=${prodotto.codice}"--%>
                  <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
                </a>
                <a href="${pageContext.request.contextPath}/InfoProdotti?id=${prodotto.codice}">
                  <img src="${pageContext.request.contextPath}/Image/info.png">
                </a>
                <span class="text-center"><i class="fa fa-euro"></i>${prodotto.prezzo}</span>
              </div>
            </div>
          </div>
        </div>
      </c:forEach>
    </c:if>

    <!-- Messaggio se non ci sono prodotti da visualizzare -->
    <c:if test="${empty listaProdotti}">
      <p>Nessun prodotto disponibile al momento.</p>
    </c:if>
  </div>
</div>

<script>
  function aggiungiAlCarrello(codice, prezzo) {
    $.ajax({
      url: 'AggiungiAlCarrello',
      type: 'POST',
      data: {
        id: codice,
        quantita: 1,
        prezzo: prezzo
      },
      success: function(response) {
        console.log(response);
      },
      error: function(xhr, status, error) {
        console.error(xhr, status, error);
      }
    });
  }
</script>
</body>
</html>