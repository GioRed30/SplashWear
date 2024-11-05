<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/InfoProdotti.css">
    <style>
        body {
            background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
        }
    </style>
</head>
<body class="info-prod">

<div class="product-wrapper mb-45 text-center">
    <div class="product-img">
        <img src="${pageContext.request.contextPath}/Image/bambin3.png">
    </div>
</div>
<div class="sub-info">
    <div class ="product-desc">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. A accusamus blanditiis cupiditate explicabo odit, quam quidem reiciendis rem sunt! Animi dolore doloribus ex, fugiat illo ipsum modi, nobis officiis porro quae quos recusandae reiciendis repellat saepe suscipit vel veritatis vero. Ad asperiores delectus error magni nam nesciunt obcaecati quasi quidem quo unde! Aliquam dolore dolores eius in laudantium libero magnam, minus molestias nisi porro qui quis quisquam quo quos repudiandae sunt unde. Accusamus ad aut cumque dolore doloribus earum est eveniet exercitationem fuga harum, incidunt, ipsa quae quibusdam quidem saepe similique vel vitae voluptate. Est ipsa iure minima nisi qui?
        </p>
    </div>
    <div class="product-hot-zone">
        <div class="product-action" >
            <div class="product-action-style">
                <span><i class="fa fa-rupee"></i> €15,00</span>
            </div>
        </div>
        <a href="#">
            <img src="${pageContext.request.contextPath}/Image/carrellonero.png">
        </a>
    </div>
</div>
</body>
</html>

