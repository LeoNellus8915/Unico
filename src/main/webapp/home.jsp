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
        <div class="header">
            <p class="home">LOGO</p>
            <form method="post" action="Servlet">
            	<input type="hidden" name="Servlet" value="logout">
            	<button class="esci">ESCI</button>
            </form>
        </div><br>
        <p class="utente">Home > <%String x = (String)request.getAttribute("Utente");
        							out.println(x);%></p><br>
        <br><br>
        <div class="contenitore">
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%;">
                <img src="Immagini/a.svg"><br><br><br>
                <p class="categorie">Modulo Presenze</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img src="Immagini/b.svg"><br><br><br>
                <p class="categorie">Buste Paga&nbsp&nbsp&nbsp&nbsp</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img src="Immagini/c.svg"><br><br><br>
                <p class="categorie">Certificazione Unica</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img src="Immagini/d.svg"><br><br><br>
                <p class="categorie">Commesse</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img src="Immagini/e.svg"><br><br><br>
                <p class="categorie">Certificazioni</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img src="Immagini/f.svg"><br><br><br>
                <p class="categorie">Corso Sicurezza</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img style="margin-top: 20%;" src="Immagini/g.svg"><br><br><br>
                <p class="categorie">Visita Medica&nbsp&nbsp</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img style="margin-top: 20%;" src="Immagini/h.svg"><br><br><br>
                <p class="categorie">Profilo & CV&nbsp&nbsp</p>
            </div>
        </div>
    </body>
</html>
<%}%>