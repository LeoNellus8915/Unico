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
        			<p class="index">
                        <input type="text" name="input_tech1">
                    </p>
                    <botton class="add" onclick="add('input_tech2', 'add_tech2', 'remove_tech1', 'span_tech2', 'input_tech1')">+</botton><br>

        			<h5><p class="index"></p></h5>
        			<p class="index">
                        <input type="text" id="input_tech2" name="input_tech2" style="display: none;">
                    </p>
                    <botton id="add_tech2" class="add" onclick="add('input_tech3', 'add_tech3', 'remove_tech2', 'span_tech3', 'input_tech2')" style="display: none"> + </botton>
        			<botton id="remove_tech1" class="remove" onclick="remove('input_tech2', 'add_tech2', 'remove_tech1', 'span_tech2')" style="display: none">-</botton>
                    <span id="span_tech2"></span>

                    <h5><p class="index"></p></h5>
        			<p class="index">
                        <input type="text" id="input_tech3" name="input_tech3" style="display: none;">
                    </p>
                    <botton id="add_tech3" class="add" onclick="add('input_tech4', 'add_tech4', 'remove_tech3', 'span_tech4', 'input_tech3')" style="display: none;"> + </botton>
        			<botton id="remove_tech2" class="remove" onclick="remove('input_tech3', 'add_tech3', 'remove_tech2', 'span_tech3')" style="display: none">-</botton>
                    <span id="span_tech3"></span>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index">
                        <input type="text" id="input_tech4" name="input_tech4" style="display: none;">
                    </p>
                    <botton id="add_tech4" class="add" onclick="add('input_tech5', 'add_tech4', 'remove_tech4', 'span_tech5', 'input_tech4')" style="display: none;">+</botton>
        			<botton id="remove_tech3" class="remove" onclick="remove('input_tech4', 'add_tech4', 'remove_tech3', 'span_tech4')" style="display: none">-</botton>
                    <span id="span_tech4"></span>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index">
                        <input type="text" id="input_tech5" name="input_tech5" style="display: none;">
                    </p>
                    <botton id="remove_tech4" class="remove" onclick="remove('input_tech5', 'nulla', 'remove_tech4', 'span_tech5')" style="display: none; margin-left: 80%;">-</botton>
        			<span id="span_tech5"></span>



                    
                    <h5><p class="index">Lingua</p></h5><br>
        			<p class="index">
                        <input type="text" name="input_lingua1">
                    </p>
                    <botton class="add" onclick="add('input_lingua2', 'add_lingua2', 'remove_lingua1', 'span_lingua2', 'input_lingua1')">+</botton><br>
        			
        			<h5><p class="index"></p></h5>
        			<p class="index">
                        <input type="text" id="input_lingua2" name="input_lingua2" style="display: none;">
                    </p>
                    <botton id="add_lingua2" class="add" onclick="add('input_lingua3', 'add_lingua2', 'remove_lingua2', 'span_lingua3', 'input_lingua2')" style="display: none">+</botton>
        			<botton id="remove_lingua1" class="remove" onclick="remove('input_lingua2', 'add_lingua2', 'remove_lingua1', 'span_lingua2')" style="display: none">-</botton>
                    <span id="span_lingua2"></span>
        			
                    <h5><p class="index"></p></h5>
        			<p class="index">
                        <input type="text" id="input_lingua3" name="input_lingua3" style="display: none;">
                    </p>
                    <botton id="remove_lingua2" class="remove" onclick="remove('input_lingua3', 'nulla', 'remove_lingua2', 'span_lingua3')" style="display: none; margin-left: 80%;">-</botton>
        			<span id="span_lingua3"></span>
                    




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