<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%= request.getAttribute("nome") %></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/InfoProdotti.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
        }
    </style>
</head>
<body class="info-prod">

<div class="product-wrapper mb-45 text-center">
    <div class="product-img">
        <img src="${pageContext.request.contextPath}/<%= request.getAttribute("link_immagine") %>">
    </div>
</div>

<div class="sub-info">
    <div class ="product-desc">
        <p>
            <%= request.getAttribute("descrizione") %>
        </p>
    </div>

    <div class="product-hot-zone">
        <div class="product-action">
            <div class="product-action-style">
                <span><i class="fa fa-euro"></i> €<%= request.getAttribute("prezzo") %></span>
            </div>
        </div>
        <a onclick="aggiungiAlCarrello(<%=request.getAttribute("id")%>, <%=request.getAttribute("prezzo")%>)">
            <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
        </a>
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
                console.log(codice)
                console.log(response);
            },
            error: function(xhr, status, error) {
                console.log(codice)
                console.error(xhr, status, error);
            }
        });
    }
</script>

</body>
</html>
