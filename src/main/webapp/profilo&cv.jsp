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

    <body>
        <center>
            <div class="header">
            	<p class="home">LOGO</p>
            	<form method="post" action="Servlet">
            		<input type="hidden" name="Servlet" value="logout">
            		<button class="esci">ESCI</button>
            	</form>
        	</div><br>
			<p class="utente"> <a href="home.jsp">Home</a> > Profilo & CV</p><br><br><br>
            <div class="div1">
                <form name="form" method="POST" action="Servlet">
                    <br>
                    <b><h2><p class="index">Salva</p></h2></b>
                    <br><br>
                    <h5><p class="index">Nome</p></h5><br>
                    <p class="index"><input type="text" name="nome"></p><br><br>
                    
                    <h5><p class="index">Cognome</p></h5><br>
                    <p class="index"><input type="text" name="cognome"></p><br><br>
                    
                    <h5><p class="index">Recapito</p></h5><br>
                    <p class="index"><input type="number" name="recapto"></p><br><br>
                    
                    <h5><p class="index">Città di allocazione</p></h5><br>
                    <p class="index"><input type="text" name="citta_allocazione"></p><br><br>
                    
                    <h5><p class="index">Ruolo</p></h5><br>
                    <p class="index"><input type="text" name="ruolo"></p><br><br>
                    
                    <h5><p class="index">Competenza</p></h5><br>
                    <p class="index"><input type="text" name="competenza_principale"></p><br><br>
                    
                    <h5><p class="index">Data Colloquio</p></h5><br>
                    <p class="index"><input type="date" name="data_colloquio"></p><br><br>
                    
                    <h5><p class="index">Anno Colloquio</p></h5><br>
                    <p class="index"><input type="number" name="anno_colloquio"></p><br><br>
                    
                    <h5><p class="index">Esito Colloquio</p></h5><br>
                    <p class="index"><input type="text" name="esito_colloquio"></p><br><br>
                    
                    <h5><p class="index">Impressioni</p></h5><br>
                    <p class="index"><input type="text" name="impressioni"></p><br><br>
                    
                    <h5><p class="index">Fonte reperimento</p></h5><br>
                    <p class="index"><input type="text" name="fonte_reperimento"></p><br><br>
                    
                    <h5><p class="index">Costo Giornaliero</p></h5><br>
                    <p class="index"><input type="number" name="costo_giornaliero" step=0.01></p><br><br>
                    
                    <h5><p class="index">Possibilità Lavorativa</p></h5><br>
                    <p class="index"><input type="text" name="possibilita_lavorativa"></p><br><br>
                    
                    <h5><p class="index">Skill</p></h5><br>
                    <p class="index"><input type="text" name="skill"></p><br><br>
                    
                    <h5><p class="index">Tech</p></h5><br>
        			<p class="index"><input type="text" name="tech1"></p><botton class="add" onclick="add('tech2', 'tech22', 'tech222', 'tech1')">+</botton><br>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index"><input type="text" id="tech2" name="tech2" style="display: none;"></p><botton id="tech222" class="add" onclick="add('tech3', 'tech33', 'tech333', 'tech2')" style="display: none"> + </botton>
        			<span id="tech22"></span>
        			
                    <h5><p class="index"></p></h5>
        			<p class="index"><input type="text" id="tech3" name="tech3" style="display: none;"></p><botton id="tech333" class="add" onclick="add('tech4', 'tech44', 'tech444', 'tech3')" style="display: none;"> + </botton>
        			<span id="tech33"></span>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index"><input type="text" id="tech4" name="tech4" style="display: none;"></p><botton id="tech444" class="add" onclick="add('tech5', 'tech55', '', 'tech4')" style="display: none;">+</botton>
        			<span id="tech44"></span>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index"><input type="text" id="tech5" name="tech5" style="display: none;"></p>
        			<span id="tech55"></span>
                    
                    <h5><p class="index">Lingua</p></h5><br>
        			<p class="index"><input type="text" name="lingua1"></p><botton class="add" onclick="add('lingua2', 'lingua22', 'lingua222', 'lingua1')">+</botton><br>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index"><input type="text" id="lingua2" name="lingua2" style="display: none;"></p><botton id="lingua222" class="add" onclick="add('lingua3', 'lingua33', '', 'lingua2')" style="display: none">+</botton>
        			<span id="lingua22"></span>
        			
                    <h5><p class="index"></p></h5>
        			<p class="index"><input type="text" id="lingua3" name="lingua3" style="display: none;"></p>
        			<span id="lingua33"></span>
                    
                    <h5><p class="index">Competenze Totali</p></h5><br>
                    <p class="index"><input type="text" name="competenze_totali"></p><br><br>
                    
                    <h5><p class="index">Certificazioni</p></h5><br>
                    <p class="index"><input type="text" name="certificazioni"></p><br><br>
                    
                    <h5><p class="index">Seniority</p></h5><br>
                    <p class="index"><input type="text" name="seniority"></p><br><br>
                    
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