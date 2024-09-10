<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" href="../Styles/Carrello.css">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Carrello</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
</head>
<body>
<div class="container">
  <h1>Il tuo carrello</h1>
  <table class="cart-table">
    <thead>
    <tr>
      <th>Prodotto</th>
      <th>Quantit&aacute;</th>
      <th>Prezzo Unitario</th>
      <th>Totale</th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td>
        <div class="product">
          <img src="product1.jpg" alt="Prodotto 1">
          <div class="product-info">
            <h4>Nome Prodotto 1</h4>
            <p>Descrizione breve del prodotto 1</p>
          </div>
        </div>
      </td>
      <td>
        <input type="number" value="1" min="1">
      </td>
      <td>&euro;10.00</td>
      <td>&euro;10.00</td>
    </tr>
    <tr>
      <td>
        <div class="product">
          <img src="product2.jpg" alt="Prodotto 2">
          <div class="product-info">
            <h4>Nome Prodotto 2</h4>
            <p>Descrizione breve del prodotto 2</p>
          </div>
        </div>
      </td>
      <td>
        <input type="number" value="2" min="1">
      </td>
      <td>&euro;15.00</td>
      <td>&euro;30.00</td>
    </tr>
    </tbody>
  </table>
  <div class="cart-summary">
    <h2>Riepilogo Carrello</h2>
    <ul>
      <li>Subtotale: <span>&euro;40.00</span></li>
      <li>Spedizione: <span>&euro;5.00</span></li>
      <li><strong>Totale: <span>&euro;45.00</span></strong></li>
    </ul>
    <a href="Pagamento.jsp"><button class="checkout-btn">Procedi al Checkout</button></a>
  </div>
</div>
</body>
</html>
