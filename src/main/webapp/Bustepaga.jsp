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
        <p class="utente"> <a href="home.jsp">Home</a> > Buste paga</p><br>
        <br><br>
        <div class="contenitore">
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Gennaio</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Febbraio</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Marzo</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Aprile</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Maggio</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Giugno</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Luglio</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Agosto</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Settembre</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Ottobre</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Novembre</p>
            </div>
            <div class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p class="categorie">Dicembre</p>
            </div>
        </div>
    </body>
</html>
<%}%>