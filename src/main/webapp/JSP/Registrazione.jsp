<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>RegisterLogIn</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/RegisterLogIn.css">
    <style>
        body{
            background-image: linear-gradient(rgba(255, 255, 255, 0.3), rgba(255, 255, 255, 0.3)), url('${pageContext.request.contextPath}/Image/summer.jpg');
        }
    </style>
</head>
<body>

<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form action="${pageContext.request.contextPath}/RegisterServlet" method="post">
            <h1>Crea Un Account</h1>
            <div class="login-mini2">
                <input type="text" placeholder="Nome" name="nome"/>
                <input type="text" placeholder="Cognome" name="cognome"/>
            </div>
            <input type="text" placeholder="Nome Utente" name="nomeUtente"/>
            <input type="password" placeholder="Password" name="passwordUtente"/>
            <div class="login-mini3">
                <input type="text" placeholder="Via" name="via"/>
                <input type="text" placeholder="Civico" name="civico"/>
                <input type="text" placeholder="Cap" name="cap"/>
            </div>
            <div class="login-mini2">
                <input type="text" placeholder="Città" name="citta"/>
                <input type="text" placeholder="Callulare" name="telefono"/>
            </div>
            <button>Registrati</button>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
            <h1>Esegui L'accesso</h1>
            <input type="text" placeholder="Nome Utente" name="nomeUtente"/>
            <input type="password" placeholder="Password" name="passwordUtente"/>
            <button>Accedi</button>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Hai Già Un Account?</h1>
                <p>Esegui l'accesso con le tue credenziali</p>
                <button class="ghost" id="signIn">Accedi</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Prima Volta Su Splash Wear?</h1>
                <p>Crea un account</p>
                <button class="ghost" id="signUp">Registrati</button>
            </div>
        </div>
    </div>
</div>

<!-- Inserisci qui il codice JavaScript -->
<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });
</script>
</body>
</html>
