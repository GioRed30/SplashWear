<%@ page import="java.util.ArrayList" %>
<%@ page import="Model.Prodotto" %>
<%@ page import="Model.ProdottoDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/CaricaNegozio"/>
<html>
<head>
    <title>Shop</title>
</head>
<body>
    <c:forEach items="${prodotti}" var="p">
        <div class="prod-card">
            <div class="card-banner">
                <img src="${p.link_immagine}">
            </div>
            <div class="card-controller">
                <p>${p.nome}</p>
                <a>Aggiunta al carrello</a>
                <p>${p.prezzo}</p>
            </div>
        </div>
    </c:forEach>

</body>
</html>
