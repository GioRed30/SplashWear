<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Errore</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/Errore.css">
</head>

<body>

<img src="${pageContext.request.contextPath}/Image/icons8-errore-96.png"  alt="immagine di errore" class="img">
<div class="text">
    <h2>Errore</h2>
<p><%=session.getAttribute("error")%></p>
</div>

</body>

</html>
    