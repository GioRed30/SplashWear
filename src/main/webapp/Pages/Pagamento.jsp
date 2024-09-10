<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pagamento</title>
  <link rel="stylesheet" href="../Styles/Pagamento.css">
  <link rel="icon" type="image/png" sizes="16x16" href="img/splashwear.png">
</head>
<body>
<div class="container p-0">
  <div class="card px-4">
    <p class="h8 py-3">Dettagli Pagamento</p>
    <div class="row gx-3">
      <div class="col-12">
        <div class="d-flex flex-column">
          <p class="text mb-1">Nome</p>
          <input class="form-control mb-3" type="text" placeholder="Nome" value="Barry Allen">
        </div>
      </div>
      <div class="col-12">
        <div class="d-flex flex-column">
          <p class="text mb-1">Numero Carta</p>
          <input class="form-control mb-3" type="text" placeholder="1234 5678 435678">
        </div>
      </div>
      <div class="col-6">
        <div class="d-flex flex-column">
          <p class="text mb-1">Scadenza</p>
          <input class="form-control mb-3" type="text" placeholder="MM/YYYY">
        </div>
      </div>
      <div class="col-6">
        <div class="d-flex flex-column">
          <p class="text mb-1">CVV/CVC</p>
          <input class="form-control mb-3 pt-2" type="password" placeholder="***">
        </div>
      </div>
      <div class="col-12">
        <div class="btn btn-primary mb-3">
          <span class="ps-3">Paga $243</span>
          <span class="fas fa-arrow-right"></span>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>

