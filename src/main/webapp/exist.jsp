<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<html>
    <head>
        <title>Unico</title>
        <link rel="stylesheet" href="style.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
    </head>

    <body>
        <center>
            <div>
                <h1>logo</h1>
            </div>

            <div class="div1" style="width: 30%;">
                <form method="POST" action="Servlet">
                    <br>
                    <b><h2><p class="index">Accedi</p></h2></b>
                    <br><br>
                    <h5><p class="index">E-mail</p></h5><br>
                    <p class="index"><input type="text" name="email" placeholder="error@mail.com"></p><br><br>
                    <h5><p class="index">Password</p></h2><br>
                    <p class="index"><input type="password" name="password" placeholder="**********"></p><br><br>
                    <h5><p class="index"><input type=checkbox value="recupera_password"><u>Recupera Password</u></p></p><br><br><br>
                    <input type="hidden" name="Servlet" value="login">
                    <input type="submit" value="ACCEDI">
                    <br><br><br>
                </form>
            </div>
            <br><br>
            <font color="red"><h2>Utente non trovato</h2></font>
        </center>
    </body>
</html>