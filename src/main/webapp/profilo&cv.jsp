<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
  	if (session.getAttribute("Login") == null)
    {
    	%><html>
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

            <div class="div1">
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
</html><%
    }
  	else
  	{
	%>
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
            <div class="header">
            <p class="home">LOGO</p>
            <form method="post" action="Servlet">
            	<input type="hidden" name="Servlet" value="logout">
            	<button class="esci">ESCI</button>
            </form>
        </div><br>

            <div class="div1">
                <form method="POST" action="Servlet">
                    <br>
                    <b><h2><p class="index">Salva</p></h2></b>
                    <br><br>
                    <h5><p class="index">Nome e Cognome</p></h5><br>
                    <p class="index"><input type="text" name="nome" placeholder="Mario Rossi"></p><br><br>
                    <h5><p class="index">Recapito</p></h2><br>
                    <p class="index"><input type="number" name="recapto" placeholder="3759283740"></p><br><br>
                    <h5><p class="index">Città di allocazione</p></h2><br>
                    <p class="index"><input type="text" name="allocazione" placeholder="Roma"></p><br><br>
                    <h5><p class="index">Skill</p></h2><br>
                    <p class="index"><input type="text" name="skill" placeholder=""></p><br><br>
                    <h5><p class="index">Competenza</p></h2><br>
                    <p class="index"><input type="text" name="competenza" placeholder="Informatica"></p><br><br>
                    <h5><p class="index">Data Colloquio</p></h2><br>
                    <p class="index"><input type="date" name="data_colloquio"></p><br><br>
                    <h5><p class="index">Anno Colloquio</p></h2><br>
                    <p class="index"><input type="number" name="anno_colloquio" placeholder="2000"></p><br><br>
                    <h5><p class="index">Esito Colloquio</p></h2><br>
                    <p class="index"><input type="text" name="esito_colloquio"></p><br><br>
                    <h5><p class="index">Impressioni</p></h2><br>
                    <p class="index"><input type="text" name="impressioni"></p><br><br>
                    <h5><p class="index">Fonte reperimento</p></h2><br>
                    <p class="index"><input type="text" name="reperimento" placeholder="Online"></p><br><br>
                    <h5><p class="index">Costo Giornaliero</p></h2><br>
                    <p class="index"><input type="number" step=0.01></p><br><br>
                    <h5><p class="index">Possibilità Lavorativa</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    <h5><p class="index">Skill</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    <h5><p class="index">Tech</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    <h5><p class="index">Lingua</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    <h5><p class="index">Competenze Totali</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    <h5><p class="index">Certificazioni</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    <h5><p class="index">Seniority</p></h2><br>
                    <p class="index"><input type="text"></p><br><br>
                    
                    <input type="hidden" name="Servlet" value="profilo">
                    <br><br>
                    <input type="submit" value="SALVA">
                    <br><br><br>
                </form>
            </div>
        </center>
    </body>
</html>
<%}%>