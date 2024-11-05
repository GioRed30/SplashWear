<%@ page import="java.util.List" %>
<%@ page import="Model.Prodotto" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%List<Prodotto> listaProdotti = (ArrayList<Prodotto>)request.getSession().getAttribute("listaProdotti");%>
<html>
<head>
  <title>Title</title>
  <%%>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Prodotti.css">
  <style>
    body {
      background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
    }
  </style>
</head>
<body>

<div class="container d-flex justify-content-center mt-100">
  <div class="product-container">
<c:forEach items="${listaProdotti}" var="prodotto" >

    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/${prodotto.link_immagine}">
        </a>

        <div class="product-action">
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span class="text-center"><i class="fa fa-rupee"></i>${prodotto.prezzo}</span>
          </div>
        </div>
      </div>
    </div>

</c:forEach>

    <!--
    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/donna.png">
        </a>
        <div class="product-action">
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i>€20,00</span>
          </div>
        </div>
      </div>
    </div>


    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/donnaintero.png">
        </a>
        <div class="product-action" >
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i>€30,00</span>
          </div>
        </div>
      </div>
    </div>


    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/bambino2.png">
        </a>
        <div class="product-action" >
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i> €15,00</span>
          </div>
        </div>
      </div>
    </div>


    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/donna3.png">
        </a>
        <div class="product-action" >
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i> €20,00</span>
          </div>
        </div>
      </div>
    </div>


    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/donnaintero3.png">
        </a>
        <div class="product-action" >
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i> €30,00</span>
          </div>
        </div>
      </div>
    </div>



    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/uomo3.png">
        </a>
        <div class="product-action" >
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i> €20,00</span>
          </div>
        </div>
      </div>
    </div>



    <div class="product-wrapper mb-45 text-center">
      <div class="product-img">
        <a href="#" data-abc="true">
          <img src="${pageContext.request.contextPath}/Image/bambin3.png">
        </a>
        <div class="product-action" >
          <div class="product-action-style">
            <a href="#">
              <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
            </a>
            <a href="${pageContext.request.contextPath}/JSP/InfoProdotti.jsp">
              <img src="${pageContext.request.contextPath}/Image/info.png">
            </a>
            <span><i class="fa fa-rupee"></i> €15,00</span>
          </div>
        </div>
      </div>
    </div>
    -->

  </div>
</div>
</body>
</html>
