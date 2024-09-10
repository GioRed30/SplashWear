<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Styles/RegisterLogin.css">
    <script language="javascript" type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/typed.js/2.0.12/typed.min.js" referrerpolicy="no-referrer"></script>
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<body>
<div class="main">
    <input type="checkbox" id="chk" aria-hidden="true">
    <div class="signup">
        <form id="signup" action="${pageContext.request.contextPath}/RegisterServlet" method="post">
            <input type="hidden" name="action" value="signup">
            <label for="chk" aria-hidden="true">Sign up</label>
            <input type="text" name="user_name" id="username" placeholder="User name" required>
            <input type="text" name="email" id="emailsignup" placeholder="Email" required>
            <input type="text" name="password" id="passsignup" placeholder="Password" required>
            <button id="signupButton">Sing up</button>
        </form>
        <p id="error">messaggio di errore</p>
        <p id="error2">messaggio di errore</p>
        <p id="error3">messaggio di errore</p>
    </div>

    <div class="login">
        <form id="login">
            <input type="hidden" name="action" value="login">
            <label for="chk" aria-hidden="true">Login</label>
            <input type="email" name="email" id="emaillogin" placeholder="Email" required>
            <input type="Password" name="Password" id="passlogin" placeholder="Password" required>
            <button id="loginButton">Login</button>
        </form>
        <p id="error5">messaggio di errore</p>
        <p id="error6">messaggio di errore</p>
        <p id="error7">messaggio di errore</p>
    </div>
</div>
<script>
    $("#error").hide();
    $("#error2").hide();
    $("#error3").hide();
    $("#error5").hide();
    $("#error6").hide();
    $("#error7").hide();
    console.log("appajaje 	");
    var lettersnum = /^[0-9a-zA-Z]+$/;
    var letters = /^[ A-Za-z]+$/;
    var mail = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    const signupButton = document.querySelector("#signupButton");
    console.log(signupButton);
    const loginButton = document.querySelector("#loginButton");
    console.log(loginButton);
    signupButton.addEventListener("click", function(){
        console.log("funzione sign up");
        if($("#emailsignup").val().match(mail)){
            alert("Match email");
            $("#error2").hide();
            if($("#username").val().match(lettersnum)){
                alert("Match username");
                $("#error").hide();
                if($("#passsignup").val().match(lettersnum)){
                    alert("Match pass");
                    $("#error3").hide();
                    var myObj =	$("#signup").serializeArray();
                    var myJSON = JSON.stringify(myObj);
                    $.post("../LoginServlet", {json:myJSON} , function(responseText) {
                        alert("loginservlet");
                        window.location.replace("../index.jsp");
                    });
                    /*
                    var request = new XMLHttpRequest();
                    request.open('POST','/LoginServlet',true);
                    request.send(null);
                    */
                }else{
                    $("#error3").show();
                    $("#passsignup").focus();
                }
            }else{
                $("#error").show();
                $("#username").focus();
            }
        }else{
            $("#error2").show();
            $("#emaildignup").focus();
        }
    });

    $("#loginButton").on("click",function(){
        alet("funzione log in");
        if($("#emaillogin").val().match(mail)){
            S("#error5").hide();
            if($("#passlogin").val().match(lettersnum)){
                $("#error6").hide();
                var myObj =	$("#login").serializeArray();
                var myJSON = JSON.stringify(myObj);
                $.post("LoginServlet", {json:myJSON} , function(responseText) {
                    if (responseText==("login.jsp")) {
                        $("#error7").show();
                    } else {
                        window.location.replace(responseText);
                    }
                });
            }else{
                $("#error6").show();
                $("#passlogin").focus();
            }
        }else{
            $("#error5").show();
            $("#emaillogin").focus();
        }
    });
</script>

</body>
</html>




















