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
            <div onclick="invio('Gennaio', 'gennaio_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Gennaio" class="categorie">Gennaio</p>
                <p id="1" class="categorie"></p>
            </div>
            <div onclick="invio('Febbraio', 'febbraio_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Febbraio" class="categorie">Febbraio</p>
                <p id="2" class="categorie"></p>
            </div><
            <div onclick="invio('Marzo', 'marzo_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Marzo" class="categorie">Marzo</p>
                <p id="3" class="categorie"></p>
            </div>
            <div onclick="invio('Aprile', 'aprile_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%;">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Aprile" class="categorie">Aprile</p>
                <p id="4" class="categorie"></p>
            </div>
            <div onclick="invio('Maggio', 'maggio_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Maggio" class="categorie">Maggio</p>
                <p id="5" class="categorie"></p>
            </div>
            <div onclick="invio('Giugno', 'giugno_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Giugno" class="categorie">Giugno</p>
                <p id="6" class="categorie"></p>
            </div>
            <div onclick="invio('Luglio', 'luglio_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Luglio" class="categorie">Luglio</p>
                <p id="7" class="categorie"></p>
            </div>
            <div onclick="invio('Agosto', 'agosto_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Agosto" class="categorie">Agosto</p>
                <p id="8" class="categorie"></p>
            </div>
            <div onclick="invio('Settembre', 'settembre_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:0.5%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Settembre" class="categorie">Settembre</p>
                <p id="9" class="categorie"></p>
            </div>
            <div onclick="invio('Ottobre', 'ottobre_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Ottobre" class="categorie">Ottobre</p>
                <p id="10" class="categorie"></p>
            </div>
            <div onclick="invio('Novembre', 'novembre_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Novembre" class="categorie">Novembre</p>
                <p id="11" class="categorie"></p>
            </div>
            <div onclick="invio('Dicembre', 'dicembre_pdf')" class="categorie" style="float:left; width:20%; height:45%; margin-left:2%; margin-top: 2%">
                <img class="buste" src="Immagini/pdf.svg"><br><br><br>
                <p id="Dicembre" class="categorie">Dicembre</p>
                <p id="12" class="categorie"></p>
            </div>
        </div>
        <a href="PDF/Gennaio.pdf" id="gennaio_pdf" download="Gennaio" hidden></a>
        <a href="PDF/Febbraio.pdf" id="febbraio_pdf" download="Febbraio" hidden></a>
        <a href="PDF/Marzo.pdf" id="marzo_pdf" download="Marzo" hidden></a>
        <a href="PDF/Aprile.pdf" id="aprile_pdf" download="Aprile" hidden></a>
        <a href="PDF/Maggio.pdf" id="maggio_pdf" download="Maggio" hidden></a>
        <a href="PDF/Giugno.pdf" id="giugno_pdf" download="Giugno" hidden></a>
        <a href="PDF/Luglio.pdf" id="luglio_pdf" download="Luglio" hidden></a>
        <a href="PDF/Agosto.pdf" id="agosto_pdf" download="Agosto" hidden></a>
        <a href="PDF/Settembre.pdf" id="settembre_pdf" download="Settembre" hidden></a>
        <a href="PDF/Ottobre.pdf" id="ottobre_pdf" download="Ottobre" hidden></a>
        <a href="PDF/Novembre.pdf" id="novembre_pdf" download="Novembre" hidden></a>
        <a href="PDF/Dicembre.pdf" id="dicembre_pdf" download="Dicembre" hidden></a>
    </body>
</html>
<%}%>