<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:include page="JSP/NavBar.jsp"/>
<jsp:include page="/CaricaNegozio"/>

<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SplashWear</title>
    <link rel="icon" type="image/png" sizes="16x16" href="Assets/splashwear.png">

    <style>
        <%@include file="Styles/NavBar.css" %>
        <%@include file="Styles/Info.css"%>

        body{
            background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/index.css">
    <script src="https://kit.fontawesome.com/9f21a37842.js" crossorigin="anonymous"></script>
</head>
<body>
<p class="image-collection">
    <a href="${pageContext.request.contextPath}/InfoProdotti?id=3"><img src="${pageContext.request.contextPath}/Image/donna3.png"></a>
    <a href="${pageContext.request.contextPath}/InfoProdotti?id=4"><img src="${pageContext.request.contextPath}/Image/donnaintero3.png"></a>
    <a href="${pageContext.request.contextPath}/InfoProdotti?id=1"><img src="${pageContext.request.contextPath}/Image/uomo.png"></a>
    <a href="${pageContext.request.contextPath}/InfoProdotti?id=8"><img src="${pageContext.request.contextPath}/Image/bambino2.png"></a>
    <a href="${pageContext.request.contextPath}/InfoProdotti?id=2"><img src="${pageContext.request.contextPath}/Image/uomo3.png"></a>
</p>

<div class="catalogo">
</div>
<%@include file="JSP/Info.jsp" %>

</body>
</html>