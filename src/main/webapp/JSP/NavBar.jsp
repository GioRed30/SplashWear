<%@ page import="Entity.Utente" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Footer Ecommerce Example</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/NavBar.css">
</head>
<body>

<nav>
  <div class="logo">
    <a href="${pageContext.request.contextPath}/index.jsp">
      <img src="${pageContext.request.contextPath}/Image/splashwear2.png" class="nav-logo">
    </a>
  </div>
  <div class="container nav-container">
    <div class="icon">
      <% Utente u = (Utente) request.getSession().getAttribute("logged_user");
        if(u == null) { %>
          <a href="${pageContext.request.contextPath}/JSP/Registrazione.jsp">
            <img src="${pageContext.request.contextPath}/Image/user.png">
          </a>
        <% }else if (u.isAmministratore()) { %>
        <a href="${pageContext.request.contextPath}/JSP/Admin.jsp">
          <img src="${pageContext.request.contextPath}/Image/user.png">
        </a>
      <% }else{%>
        <a href="${pageContext.request.contextPath}/JSP/Utente.jsp">
          <img src="${pageContext.request.contextPath}/Image/user.png">
        </a>
      <% } %>
      <a href="${pageContext.request.contextPath}/JSP/Carrello.jsp">
        <img src="${pageContext.request.contextPath}/Image/carrello.png">
      </a>
    </div>
  </div>

  <div>
    <div class="tipo-prodotto">
      <input class="tipo-prodotto-style" type="button" value="Uomo" onclick="window.location.href='${pageContext.request.contextPath}/MostraPerTipo?Tipo=Uomo'" />
      <input class="tipo-prodotto-style" type="button" value="Donna" onclick="window.location.href='${pageContext.request.contextPath}/MostraPerTipo?Tipo=Donna'" />
      <input class="tipo-prodotto-style" type="button" value="Bambino" onclick="window.location.href='${pageContext.request.contextPath}/MostraPerTipo?Tipo=Bambino'" />
    </div>

</nav>

</body>
</html>
