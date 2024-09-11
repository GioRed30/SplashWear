<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dettaglio Prodotto</title>
  <link rel="stylesheet" href="../Styles/Amministratore.css">
</head>

<body>
<div class="product-container">
  <!-- Sezione immagine e nome prodotto -->
  <div class="left-section">
    <img src="https://via.placeholder.com/150" alt="Foto Prodotto" class="product-image">
    <h2 class="product-name">Nome Prodotto</h2>
  </div>

  <!-- Sezione quantità e descrizione prodotto -->
  <div class="right-section">
    <div class="quantity-section">
      <h3>Quantità</h3>
      <input type="number" min="1" max="15" value="1">
    </div>

    <div class="description-section">
      <h3>Descrizione del Prodotto</h3>
      <textarea placeholder="Scrivi qui la descrizione..." rows="5"></textarea>
    </div>
  </div>
</div>

<!-- Pulsante Aggiungi -->
<div class="add-button-container">
  <button class="btn add">Aggiungi</button>
</div>
</body>
</html>
