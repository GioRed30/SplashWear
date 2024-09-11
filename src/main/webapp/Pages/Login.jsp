<!DOCTYPE html>
<html lang="it">
<head>
    <link rel="stylesheet" href="../Styles/log.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Costumi da Bagno</title>
    <link rel="stylesheet" href="Login.css">
</head>
<body>
<div class="container">
    <h2>Login</h2>
    <form action="#" method="post">
        <div class="form-group">
            <label for="username">Username o Nome:</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <button type="submit">Accedi</button>
        </div>
    </form>
    <p>Non hai un account? <a href="<%= request.getContextPath() %>/Pages/Registrazione.jsp">Registrati qui</a></p>
</div>
</body>
</html>