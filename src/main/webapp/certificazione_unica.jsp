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

    <body onload="certificazione_unica()">
        <div class="header">
            <p class="home">LOGO</p>
            <form method="post" action="Servlet">
            	<input type="hidden" name="Servlet" value="logout">
            	<button class="esci">ESCI</button>
            </form>
        </div><br>
        <p class="utente"> <a href="home.jsp">Home</a> > Certificazione Unica</p><br>
        <br><br>
        <div class="contenitore">
            <div onclick="invio2('2019', '2019_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="2019" class="categorie">2019</p>
                <p id="1" class="categorie"></p>
            </div>
            <div onclick="invio2('2020', '2020_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="2020" class="categorie">2020</p>
                <p id="2" class="categorie"></p>
            </div>
            <div onclick="invio2('2021', '2021_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="2021" class="categorie">2021</p>
                <p id="3" class="categorie"></p>
            </div>
            <div onclick="invio2('2022', '2022_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="2022" class="categorie">2022</p>
                <p id="4" class="categorie"></p>
            </div>
        </div>
        <a href="PDF/2019.pdf" id="2019_pdf" download="2019" hidden></a>
        <a href="PDF/2020.pdf" id="2020_pdf" download="2020" hidden></a>
        <a href="PDF/2021.pdf" id="2021_pdf" download="2021" hidden></a>
        <a href="PDF/2022.pdf" id="2022_pdf" download="2022" hidden></a>
    </body>
</html>
<%}%>