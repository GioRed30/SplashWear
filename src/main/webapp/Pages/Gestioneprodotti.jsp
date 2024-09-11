<!DOCTYPE html>
<html lang="it">
<head>
  <link rel="stylesheet" href="../Styles/Gestioneprodotti.css">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pannello Amministratore</title>
</head>
<body>
<div class="admin-container">
  <h1>Gestione Prodotti</h1>
  <table class="product-table">
    <thead>
    <tr>
      <th>Nome Prodotto</th>
      <th>Quantità</th>
      <th>Azioni</th>
    </tr>
    </thead>
    <tbody>
    <!-- Prodotti 1-10 -->
    <tr>
      <td>Prodotto 1</td>
      <td><input type="number" min="1" max="15" value="1"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 2</td>
      <td><input type="number" min="1" max="15" value="5"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 3</td>
      <td><input type="number" min="1" max="15" value="3"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 4</td>
      <td><input type="number" min="1" max="15" value="7"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 5</td>
      <td><input type="number" min="1" max="15" value="10"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 6</td>
      <td><input type="number" min="1" max="15" value="2"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 7</td>
      <td><input type="number" min="1" max="15" value="6"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 8</td>
      <td><input type="number" min="1" max="15" value="8"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 9</td>
      <td><input type="number" min="1" max="15" value="12"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    <tr>
      <td>Prodotto 10</td>
      <td><input type="number" min="1" max="15" value="4"></td>
      <td>
        <button class="btn view">Visualizza</button>
        <button class="btn delete">Elimina</button>
      </td>
    </tr>
    </tbody>
  </table>
  <div class="action-buttons">
    <a href="home.html" class="btn home">&#8592;Torna alla Home</a>
    <a href="insert-product.html" class="btn insert">Inserisci Prodotto</a>
  </div>
</div>
</body>
</html>
