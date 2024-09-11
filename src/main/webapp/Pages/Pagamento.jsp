<!DOCTYPE html>
<html lang="it">
<head>
  <link rel="stylesheet" href="../Styles/Pagamento.css">

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pagamento - Costumi da Bagno</title>
  <link rel="stylesheet" href="pagamento.css">
</head>
<body>
<div class="container">
  <h2>Pagamento</h2>
  <form action="#" method="post">
    <div class="form-group">
      <label for="nome-carta">Nome presente sulla carta:</label>
      <input type="text" id="nome-carta" name="nome-carta" required>
    </div>
    <div class="form-group">
      <label for="numero-carta">Numero carta:</label>
      <input type="text" id="numero-carta" name="numero-carta" required>
    </div>
    <div class="form-group">
      <label for="scadenza">Scadenza:</label>
      <input type="text" id="scadenza" name="scadenza" placeholder="MM/AA" required>
    </div>
    <div class="form-group">
      <label for="cvv">CVV/CVC:</label>
      <input type="text" id="cvv" name="cvv" required>
    </div>
    <div class="form-group">
      <button type="submit">Paga</button>
    </div>
  </form>
</div>
</body>
</html>
