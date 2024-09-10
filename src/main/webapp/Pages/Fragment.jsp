<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer Ecommerce Example</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://kit.fontawesome.com/9f21a37842.js" crossorigin="anonymous"></script>
</head>
<body>

<nav>
    <div class="navbar">
        <div class="container nav-container">
            <input class="checkbox" type="checkbox" name="" id="" />
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <div class="icon">
                <li><a href="<%= request.getContextPath() %>/Pages/RegisterLogin.jsp"><i class="fas fa-user"></i></a></li>
                <li><a href="<%= request.getContextPath() %>/Pages/Carrello.jsp"><i class="fas fa-shopping-cart"></i></a></li>
            </div>
            <input class="search" type="text" placeholder="Cerca...">
            <div class="logo">
                <a href="<%= request.getContextPath() %>/index.jsp">Splash Wear</a>
            </div>
            <div class="menu-items">
                <li><a href="${pageContext.request.contextPath}/Pages/Shop.jsp">Donna</a></li>
                <li><a href="<%= request.getContextPath() %>/Pages/Uomo.jsp">Uomo</a></li>
                <li><a href="<%= request.getContextPath() %>/Pages/Bimbi.jsp">Bambino/a</a></li>
                <li><a href="<%= request.getContextPath() %>/Pages/Family.jsp">Family</a></li>
            </div>
        </div>
    </div>
</nav>

