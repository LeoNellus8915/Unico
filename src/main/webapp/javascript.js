function posizione()
{
	if (document.getElementById("posizione").style.display == "none")
	{
		document.getElementById("posizione").removeAttribute('style');
		document.getElementById("skill").removeAttribute('style');
		document.getElementById("competenza").removeAttribute('style');
		document.getElementById("bottone_posizione").style.display = "none";
	}
	else
	{
		document.getElementById("posizione").style.display = "none";
		document.getElementById("skill").style.display = "none";
		document.getElementById("competenza").style.display = "none";
		document.getElementById("bottone_posizione").removeAttribute('style');
	}
}
function colloquio()
{
	if (document.getElementById("colloquio").style.display == "none")
	{
		document.getElementById("colloquio").removeAttribute('style');
		document.getElementById("data").removeAttribute('style');
		document.getElementById("anno").removeAttribute('style');
		document.getElementById("esito").removeAttribute('style');
		document.getElementById("impressioni").removeAttribute('style');
		document.getElementById("bottone_colloquio").style.display = "none";
	}
	else
	{
		document.getElementById("colloquio").style.display = "none";
		document.getElementById("data").style.display = "none";
		document.getElementById("anno").style.display = "none";
		document.getElementById("esito").style.display = "none";
		document.getElementById("impressioni").style.display = "none";
		document.getElementById("bottone_colloquio").removeAttribute('style');
	}
}
function candidatura()
{
	if (document.getElementById("candidatura").style.display == "none") 
	{
		document.getElementById("candidatura").removeAttribute('style');
		document.getElementById("fonte").removeAttribute('style');
		document.getElementById("bottone_candidatura").style.display = "none";
	}
	else
	{
		document.getElementById("candidatura").style.display = "none"
		document.getElementById("fonte").style.display = "none";
		document.getElementById("bottone_candidatura").removeAttribute('style');
	}
}
function costo_impiego()
{
	if (document.getElementById("costo_impiego").style.display == "none")
	{
		document.getElementById("costo_impiego").removeAttribute('style');
		document.getElementById("cost").removeAttribute('style');
		document.getElementById("possibilita").removeAttribute('style');
		document.getElementById("bottone_costo_impiego").style.display = "none";
	}
	else
	{
		document.getElementById("costo_impiego").style.display = "none"
		document.getElementById("cost").style.display = "none";
		document.getElementById("possibilita").style.display = "none";
		document.getElementById("bottone_costo_impiego").removeAttribute('style');
	}
}
function skill_tech()
{
	if (document.getElementById("skill_tech").style.display == "none")
	{
		document.getElementById("skill_tech").removeAttribute('style');
		document.getElementById("skill2").removeAttribute('style');
		document.getElementById("tech1").removeAttribute('style');
		document.getElementById("tech2").removeAttribute('style');
		document.getElementById("tech3").removeAttribute('style');
		document.getElementById("tech4").removeAttribute('style');
		document.getElementById("tech5").removeAttribute('style');
		document.getElementById("bottone_skill_tech").style.display = "none";
	}
	else
	{
		document.getElementById("skill_tech").style.display = "none"
		document.getElementById("skill2").style.display = "none";
		document.getElementById("tech1").style.display = "none";
		document.getElementById("tech2").style.display = "none";
		document.getElementById("tech3").style.display = "none";
		document.getElementById("tech4").style.display = "none";
		document.getElementById("tech5").style.display = "none";
		document.getElementById("bottone_skill_tech").removeAttribute('style');
	}
}
function lingua()
{
	if (document.getElementById("lingua").style.display == "none")
	{
		document.getElementById("lingua").removeAttribute('style');
		document.getElementById("lang1").removeAttribute('style');
		document.getElementById("lang2").removeAttribute('style');
		document.getElementById("lang3").removeAttribute('style');
		document.getElementById("bottone_lingua").style.display = "none";
	}
	else
	{
		document.getElementById("lingua").style.display = "none"
		document.getElementById("lang1").style.display = "none";
		document.getElementById("lang2").style.display = "none";
		document.getElementById("lang3").style.display = "none";
		document.getElementById("bottone_lingua").removeAttribute('style');
	}
}
function persona()
{
	if (document.getElementById("persona").style.display == "none")
	{
		document.getElementById("persona").removeAttribute('style');
		document.getElementById("comp").removeAttribute('style');
		document.getElementById("certificazioni").removeAttribute('style');
		document.getElementById("seniority").removeAttribute('style');
		document.getElementById("bottone_persona").style.display = "none";
	}
	else
	{
		document.getElementById("persona").style.display = "none"
		document.getElementById("comp").style.display = "none";
		document.getElementById("certificazioni").style.display = "none";
		document.getElementById("seniority").style.display = "none";
		document.getElementById("bottone_persona").removeAttribute('style');
	}
}
function controlla()
{
	var e1 = document.getElementById("password").value;
	var e2 = document.getElementById("password2").value;
	if (e1 != e2) {
		alert('Le password non coincidono!');
	}
}
function bustepaga()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "lettura_mese, ");
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			date = risposta.split(", ");

			if (date[1] != "null")
				document.getElementById('Gennaio').style.color = "red";
			if (date[2] != "null")
				document.getElementById('Febbraio').style.color = "red";
			if (date[3] != "null")
				document.getElementById('Marzo').style.color = "red";
			if (date[4] != "null")
				document.getElementById('Aprile').style.color = "red";
			if (date[5] != "null")
				document.getElementById('Maggio').style.color = "red";
			if (date[6] != "null")
				document.getElementById('Giugno').style.color = "red";
			if (date[7] != "null")
				document.getElementById('Luglio').style.color = "red";
			if (date[8] != "null")
				document.getElementById('Agosto').style.color = "red";
			if (date[9] != "null")
				document.getElementById('Settembre').style.color = "red";
			if (date[10] != "null")
				document.getElementById('Ottobre').style.color = "red";
			if (date[11] != "null")
				document.getElementById('Novembre').style.color = "red";
			if (date[12] != "null")
				document.getElementById('Dicembre').style.color = "red";

			if (date[1] != "null")
				document.getElementById("1").innerHTML = date[1];
			if (date[2] != "null")
				document.getElementById("2").innerHTML = date[2];
			if (date[3] != "null")
				document.getElementById("3").innerHTML = date[3];
			if (date[4] != "null")
				document.getElementById("4").innerHTML = date[4];
			if (date[5] != "null")
				document.getElementById("5").innerHTML = date[5];
			if (date[6] != "null")
				document.getElementById("6").innerHTML = date[6];
			if (date[7] != "null")
				document.getElementById("7").innerHTML = date[7];
			if (date[8] != "null")
				document.getElementById("8").innerHTML = date[8];
			if (date[9] != "null")
				document.getElementById("9").innerHTML = date[9];
			if (date[10] != "null")
				document.getElementById("10").innerHTML = date[10];
			if (date[11] != "null")
				document.getElementById("11").innerHTML = date[11];
			if (date[12] != "null")
				document.getElementById("12").innerHTML = date[12];
		}
	}
}
async function invio(mese, pdf)
{
	var xhttp = new XMLHttpRequest();

	var mese_corrente = document.getElementById(mese);
	var conferma = null;
	var colore = window.getComputedStyle(mese_corrente).color;

	if (colore != "rgb(255, 0, 0)")
	{
		conferma = confirm("Stai scaricando il pdf del mese di " + mese + ". Verra segnato l'orario del download.");
		if (conferma == true)
		{
			document.getElementById(pdf).click();

			xhttp.open("POST", 'Servlet_Ricerca', true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("Servlet=" + "scrittura_mese," + mese);

			await sleep(1000);
			bustepaga();
		}
	}
	else
		document.getElementById(pdf).click();
}
function sleep(ms)
{
	return new Promise(resolve => setTimeout(resolve, ms));
}
function certificazione_unica()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "lettura_anno, ");
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			date = risposta.split(", ");

			if (date[1] != "null")
				document.getElementById('2019').style.color = "red";
			if (date[2] != "null")
				document.getElementById('2020').style.color = "red";
			if (date[3] != "null")
				document.getElementById('2021').style.color = "red";
			if (date[4] != "null")
				document.getElementById('2022').style.color = "red";

			if (date[1] != "null")
				document.getElementById("1").innerHTML = date[1];
			if (date[2] != "null")
				document.getElementById("2").innerHTML = date[2];
			if (date[3] != "null")
				document.getElementById("3").innerHTML = date[3];
			if (date[4] != "null")
				document.getElementById("4").innerHTML = date[4];
		}
	}
}
async function invio2(anno, pdf)
{
	var xhttp = new XMLHttpRequest();

	var anno_corrente = document.getElementById(anno);
	var conferma = null;
	var colore = window.getComputedStyle(anno_corrente).color;

	if (colore != "rgb(255, 0, 0)")
	{
		conferma = confirm("Stai scaricando il pdf dell'anno " + anno + ". Verra segnato l'orario del download.");
		if (conferma == true) {
			document.getElementById(pdf).click();

			xhttp.open("POST", 'Servlet_Ricerca', true);
			xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
			xhttp.send("Servlet=" + "scrittura_anno," + anno);
			await sleep(1000);
			certificazione_unica();
		}
	}
	else
		document.getElementById(pdf).click();
}
function add(div, controllo, bottone, remove)
{
	var dato = document.forms["profilo"][controllo].value;
	if ((document.getElementById(div).style.display == "none") && (dato != ""))
	{
		document.getElementById(div).removeAttribute('style');
		document.getElementById(remove).removeAttribute('style');
		if (document.getElementById(bottone) != null)
			document.getElementById(bottone).removeAttribute('style');
	}
}
function remove(input, div, piu, meno)
{
	document.getElementById(input).value = '';
	document.getElementById(div).style.display = 'none';
	document.getElementById(meno).style.display = 'none';
	if (document.getElementById(piu) != null)
		document.getElementById(piu).style.display = 'none';
}

function ricerca()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "ricerca");

	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			profili = risposta.split(", ");
			for (var c = 1; c < profili.length - 1; c++)
			{
				const paragrafo = document.createElement("p");
				paragrafo.id = c;
				paragrafo.onclick = function()
				{
					window.open("stampa_profilo.jsp", "_self");
					localStorage.setItem("dato", this.id);
				}
				paragrafo.innerText = profili[c];
				document.getElementById("curriculum").appendChild(paragrafo);
			}
		}
	}
}
function stampa_profilo()
{

	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "stampa_profilo," + localStorage.getItem("dato"));
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_profilo = xhttp.responseText;
			profilo = risposta_profilo.split(", ");
			document.getElementById("nome_cognome").innerHTML = profilo[1] + " " + profilo[2];  // Home > Ricerca > Nome&Cognome
			
			document.getElementById("nome").value =  profilo[1];
			document.getElementById("cognome").value =  profilo[2];
			document.getElementById("numeroTelefono").value =  profilo[3];  // Controllo se profilo[] è null, se lo è campo vuoto
			document.getElementById("email").value = profilo[4]
			document.getElementById("citta").value = profilo[5];            // profilo[4]!=="null"?profilo[4]:"";
			
			document.getElementById("ruolo").value = profilo[6];
			document.getElementById("competenza_principale").value = profilo[7];
			
			document.getElementById("data_colloquio").value = profilo[8];
			document.getElementById("anno_colloquio").value = profilo[9];
			document.getElementById("esito_colloquio").value = profilo[10];
			
			document.getElementById("fonte_reperimento").value = profilo[11];
			
			document.getElementById("costo_giornaliero").value = profilo[12];
			document.getElementById("possibilita_lavorativa").value = profilo[13];
			
			document.getElementById("skill").value = profilo[14];
			document.getElementById("tech").value = profilo[15];
			document.getElementById("tech_2").value = profilo[16];
			document.getElementById("tech_3").value = profilo[17];
			document.getElementById("tech_4").value = profilo[18];
			document.getElementById("tech_campo_libero").value = profilo[19];
			
			document.getElementById("lingua_1").value = profilo[20];
			document.getElementById("lingua_2").value = profilo[21];
			document.getElementById("lingua_3").value = profilo[22];
			
			document.getElementById("competenze_totali").value = profilo[23];
			document.getElementById("certificazioni").value = profilo[24];
			document.getElementById("seniority").value = profilo[25];
			
			
			localStorage.setItem("nome_cognome", profilo[1] + "_" + profilo[2]);
			localStorage.setItem("array", profilo);
		}
	}
}
function cerca()
{
	var ricerca = document.getElementById("ricerca").value;
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Ricerca', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "ricerca," + ricerca);
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta = xhttp.responseText;
			profili = risposta.split(", ");
			const paragrafo = document.createElement("p");
			paragrafo.id = risposta[4];
			paragrafo.onclick = function()
			{
				window.open("stampa_profilo.jsp", "_self");
				localStorage.setItem("dato", this.id);
			}
			paragrafo.innerText = profili[1];
			document.getElementById("curriculum").innerHTML = " ";
			document.getElementById("curriculum").appendChild(paragrafo);
		}
	}
}
function scarica()
{
	var nome_cognome = localStorage.getItem("nome_cognome");
	var pdf = document.createElement("a");
	pdf.id = nome_cognome + "_pdf";
	pdf.href = "PDF/" + nome_cognome + ".pdf";
	pdf.download = nome_cognome;
	pdf.type="hidden";
	document.getElementById("scarica_cv").appendChild(pdf);
	document.getElementById(nome_cognome + "_pdf").click();
}
function genera_cv()
{
	var nome_cognome = localStorage.getItem("nome_cognome");
	var doc = new jsPDF();
	
	var categorie = ["Nome: ", "Cognome: ", "Recapito: ", "Email: ", "Citta' di Allocazione: ", "Ruolo: ", "Competenza Principale: ", "Data Colloquio: ", 
	"Anno Colloquio: ", "Esito Colloquio: ", "Impressioni: ", "Fonte Reperimento: ", "Costo GG: ", "Possibilita' Lavorativa: ", "Skill: ",
	"Tech1: ", "Tech2: ", "Tech3: ", "Tech4: ", "Tech (Campo Libero): ", "Lingua1: ", "Lingua2: ", "Lingua3: ", "Competenze Totali: ", "Certificazioni: ",
	"Seniority: "];
	
	str = localStorage.getItem("array");
	a = str.split(",");
	a.pop();
	a.shift();
	var c=10;
	for(let i=0; i<a.length;i++){
		if(a[i]!=""){
			doc.text(categorie[i] + " " + a[i], 10, c);
			c+=7;
		}
	}
	doc.save(nome_cognome +  '_Cv.pdf')
}