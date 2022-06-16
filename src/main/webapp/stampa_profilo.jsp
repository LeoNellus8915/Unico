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

            <div class="bianco" style="width: 30%;">
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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="style.css">
<script type="text/javascript" src="javascript.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital@1&display=swap"
	rel="stylesheet">
</head>

<body onload="stampa_profilo()">

<!-- Stampa profilo: fatta quella con utenza admin che consente la modifica dei valori
quando andrà sviluppata l'intefaccia per user normali andranno nascosti i campi senza value e 
impedito l'inserimento/modifica dei campi (disabled)  -->

	<div class="conteiner head">
		<div class="row header">
			<div class="col-md-8 offset-1">
				<p class="home">Logo</p>
			</div>
			<div class="col-md-2" style="text-align: right; margin-top: 1%">
				<form method="post" action="Servlet">
					<input type="hidden" name="Servlet" value="logout">
					<button class="esci">Esci</button>
				</form>
			</div>
		</div>
		<br>
		<div class="row justify-content-center">
			<div class="col-md-9">
				<p class="utente">
					<a href="home.jsp">Home</a> > <a href="ricerca.jsp">Ricerca</a> > <span id="nome_cognome"></span> <!-- Home > Ricerca > Nome&Cognome -->
				</p>
			</div>
		</div>
		<br> <br>
		<div class="row categorie">
			<div id="" class="col-md-12">
				<div class="card">
					<div class="card-header">
						<div class="row">
								<div class="col-md-8">
									<h4>Anagrafica</h4>
								</div>
								<div class="col-md-2">
									<input type="hidden" name="Servlet" value="scarica_cv">
									<input type="submit"value="Scarica Cv">
								</div>
								<div class="col-md-2">
									<input type="hidden" name="Servlet" value="genera_cv">
									<input type="submit"value="Genera Cv">
								</div>
							</div>
						
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md-3">
									Nome: <input type="text" id="nome" style="width: 150px !important;">
								</div>
								<div class="col-md-3">
									Cognome: <input type="text" id="cognome" style="width: 150px !important;">
								</div>
								<div class="col-md-3">
									Numero Telefono: <input type="text" id="numeroTelefono" style="width: 120px !important;">
								</div>
								<div class="col-md-3">
									Città: <input type="text" id="citta" style="width: 150px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				
				<div class="card">
					<div class="card-header">
						<h4>Posizione</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									Ruolo: <input type="text" id="ruolo" style="width: 200px !important;">
								</div>
								<div class="col-md-6">
									Competenza Principale: <input type="text" id="competenza_principale" style="width: 200px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				
				<div class="card">
					<div class="card-header">
						<h4>Colloquio</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md-3">
									Data Colloquio: <input type="text" id="data_colloquio" style="width: 150px !important;">
								</div>
								<div class="col-md-3">
									Anno Colloquio: <input type="text" id="anno_colloquio" style="width: 150px !important;">
								</div>
								<div class="col-md-3">
									Esito Colloquio: <input type="text" id="esito_colloquio" style="width: 120px !important;">
								</div>
								<div class="col-md-3">
									Impressioni: <input type="text" id="impressioni" style="width: 150px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				<div class="card">
					<div class="card-header">
						<h4>Candidatura</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md">
									Fonte Reperimento: <input type="text" id="fonte_reperimento" style="width: 150px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				<div class="card">
					<div class="card-header">
						<h4>Costo-Impiego</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md-6">
									Costo Giornaliero: <input type="text" id="costo_giornaliero" style="width: 200px !important;">
								</div>
								<div class="col-md-6">
									Possibilità Lavorativa: <input type="text" id="possibilita_lavorativa" style="width: 200px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				<div class="card">
					<div class="card-header">
						<h4>Skill-Tech</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md-4">
									Skill: <input type="text" id="skill" style="width: 200px !important;">
								</div>
								<div class="col-md-4">
									Tech: <input type="text" id="tech" style="width: 200px !important;">
								</div>
								<div class="col-md-4">
									Tech2: <input type="text" id="tech_2" style="width: 200px !important;">
								</div>
								<div class="col-md-4">
									Tech3: <input type="text" id="tech_3" style="width: 200px !important;">
								</div>
								<div class="col-md-4">
									Tech4: <input type="text" id="tech_4" style="width: 200px !important;">
								</div>
								<div class="col-md-4">
									Tech5: <input type="text" id="tech_5" style="width: 200px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				<div class="card">
					<div class="card-header">
						<h4>Lingua</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md id="div_lingua_1">
									Lingua1: <input type="text" id="lingua_1" style="width: 200px !important;">
								</div>
								<div class="col-md id="div_lingua_2">
									Lingua2: <input type="text" id="lingua_2" style="width: 200px !important;">
								</div>
								<div class="col-md id="div_lingua_3">
									Lingua3: <input type="text" id="lingua_3" style="width: 200px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->
				</div> <!-- Fine Card -->
				
				<div class="card">
					<div class="card-header">
						<h4>Info Extra</h4>
					</div>
					<div class="card-body">
						<div class="container">
							<div class="row">
								<div class="col-md">
									Competenze Totali: <input type="text" id="competenze_totali" style="width: 200px !important;">
								</div>
								<div class="col-md">
									Certificazioni: <input type="text" id="certificazioni" style="width: 200px !important;">
								</div>
								<div class="col-md">
									Seniority: <input type="text" id="seniority" style="width: 200px !important;">
								</div>
							</div> <!-- Fine Row -->
						</div> <!-- Fine Container -->
					</div> <!-- Fine Card Body-->	
				</div> <!-- Fine Card -->

				<div class="col-md-12" style="text-align: center;">
					<br> 
					<input type="hidden" name="Servlet" value="">
					<input type="submit" value="SALVA" style="padding: 5px 25px 5px 25px;"> <br>
					<br>
				</div>

			</div> <!-- Fine Column -->
		</div> <!-- Fine Row Categorie -->
		<br> <br>
	</div> <!-- Fine Container Head -->
	<br><br><br>
</body>
</html>
<%}%>