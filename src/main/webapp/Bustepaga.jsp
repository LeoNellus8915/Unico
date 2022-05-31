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
        <script type="text/javascript" src="javascript.js"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap" rel="stylesheet">
    </head>

    <body onload="bustepaga()">
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
            <a href="PDF/Gennaio.pdf" download="Gennaio"><div onclick="invio('Gennaio')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="gennaio" class="categorie"></p>
            </div></a>
            <a href="PDF/Febbraio.pdf" download="Febbraio"><div onclick="invio('Febbraio')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="febbraio" class="categorie"></p>
            </div></a>
            <a href="PDF/Marzo.pdf" download="Marzo"><div onclick="invio('Marzo')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="marzo" class="categorie"></p>
            </div></a>
            <a href="PDF/Aprile.pdf" download="Aprile"><div onclick="invio('Aprile')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="aprile" class="categorie"></p>
            </div></a>
            <a href="PDF/Maggio.pdf" download="Maggio"><div onclick="invio('Maggio')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="maggio" class="categorie"></p>
            </div></a>
            <a href="PDF/Giugno.pdf" download="Giugno"><div onclick="invio('Giugno')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="giugno" class="categorie"></p>
            </div></a>
            <a href="PDF/Luglio.pdf" download="Luglio"><div onclick="invio('Luglio')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="luglio" class="categorie"></p>
            </div></a>
            <a href="PDF/Agosto.pdf" download="Agosto"><div onclick="invio('Agosto')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="agosto" class="categorie"></p>
            </div></a>
            <a href="PDF/Settembre.pdf" download="Settembre"><div onclick="invio('Settembre')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="settembre" class="categorie"></p>
            </div></a>
            <a href="PDF/Ottobre.pdf" download="Ottobre"><div onclick="invio('Ottobre')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="ottobre" class="categorie"></p>
            </div></a>
            <a href="PDF/Novembre.pdf" download="Novembre"><div onclick="invio('Novembre')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="novembre" class="categorie"></p>
            </div></a>
            <a href="PDF/Dicembre.pdf" download="Dicembre"><div onclick="invio('Dicembre')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="dicembre" class="categorie"></p>
            </div></a>
        </div>
    </body>
</html>
<%}%>