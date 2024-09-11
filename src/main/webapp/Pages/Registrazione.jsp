<!DOCTYPE html>
<html lang="it">
<head>
  <link rel="stylesheet" href="../Styles/Registrazione.css">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registrazione - Costumi da Bagno</title>
</head>
<body>
<div class="container">
  <h2>Registrazione Utente</h2>
  <form action="#" method="post">
    <div class="form-group">
      <label for="nome">Nome:</label>
      <input type="text" id="nome" name="nome" required>
    </div>
    <div class="form-group">
      <label for="cognome">Cognome:</label>
      <input type="text" id="cognome" name="cognome" required>
    </div>
    <div class="form-group">
      <label for="telefono">Numero di Telefono:</label>
      <input type="tel" id="telefono" name="telefono" required>
    </div>
    <div class="form-group">
      <label for="via">Via:</label>
      <input type="text" id="via" name="via" required>
    </div>
    <div class="form-group">
      <label for="civico">Civico:</label>
      <input type="text" id="civico" name="civico" required>
    </div>
    <div class="form-group">
      <label for="cup">CUP:</label>
      <input type="text" id="cup" name="cup" required>
    </div>
    <div class="form-group">
      <button type="submit">Registrati</button>
    </div>
  </form>
  <p>Hai già un account? <a href="<%= request.getContextPath() %>/Pages/login.jsp">Entra qui</a></a></p>
</div>
</body>
</html>
