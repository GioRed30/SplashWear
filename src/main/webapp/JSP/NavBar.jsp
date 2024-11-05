<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Footer Ecommerce Example</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/NavBar.css">
  <script src="https://kit.fontawesome.com/9f21a37842.js" crossorigin="anonymous"></script>
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
      <a href="${pageContext.request.contextPath}/JSP/Registrazione.jsp"><img src="${pageContext.request.contextPath}/Image/user.png"></a>
      <a href="${pageContext.request.contextPath}/JSP/Carrello.jsp"><img src="${pageContext.request.contextPath}/Image/carrello.png"></a>
    </div>
  </div>
  <input class="search" type="text" placeholder="Cerca..."/>
  <button class="menu" onclick="openMenu();" aria-label="Main Menu" id="menu">
    <svg width="50" height="50" viewBox="0 0 100 100">
      <path class="line line1" d="M 20,29.000046 H 80.000231 C 80.000231,29.000046 94.498839,28.817352 94.532987,66.711331 94.543142,77.980673 90.966081,81.670246 85.259173,81.668997 79.552261,81.667751 75.000211,74.999942 75.000211,74.999942 L 25.000021,25.000058" />
      <path class="line line2" d="M 20,50 H 80" />
      <path class="line line3" d="M 20,70.999954 H 80.000231 C 80.000231,70.999954 94.498839,71.182648 94.532987,33.288669 94.543142,22.019327 90.966081,18.329754 85.259173,18.331003 79.552261,18.332249 75.000211,25.000058 75.000211,25.000058 L 25.000021,74.999942" />
    </svg>
  </button>
  <div class="tipi-menu" id="tipi-menu">
    <form action="${pageContext.request.contextPath}/MostraPerTipo" method="post">
    <ul class="tipi-menu-list" id="tipi-menu-list">

        <li class="tipi-menu-object">
          <a href="${pageContext.request.contextPath}/MostraPerTipo?tipo=Uomo"> Uomo
          </a>
        </li>
        <li class="tipi-menu-object">
          <a href="${pageContext.request.contextPath}/MostraPerTipo?tipo=Donna">
            Donna
          </a>
        </li>
        <li class="tipi-menu-object">
          <a href="${pageContext.request.contextPath}/MostraPerTipo?tipo=Bambino">
            Bambino
          </a>
        </li>

    </ul>
    </form>
  </div>
</nav>
