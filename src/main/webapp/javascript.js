function bustepaga()
{
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Javascript', true);
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

			xhttp.open("POST", 'Servlet_Javascript', true);
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

	xhttp.open("POST", 'Servlet_Javascript', true);
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

			xhttp.open("POST", 'Servlet_Javascript', true);
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

	xhttp.open("POST", 'Servlet_Javascript', true);
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
			
			document.getElementById("tech_campo_libero").value = profilo[19];
			
			document.getElementById("competenze_totali").value = profilo[23];
			document.getElementById("certificazioni").value = profilo[24];
			
			menu_cascata2(profilo[14], profilo[15], profilo[16], profilo[17], profilo[18], profilo[20], profilo[21], profilo[22], profilo[25], profilo[10]);
			
			for(var i=27; i < profilo.length-1; i++)
			{
				const paragrafo = document.createElement("p");
				paragrafo.id = i;
				paragrafo.innerText = profilo[i];
				document.getElementById("commenti").appendChild(paragrafo);
			}
			
			localStorage.setItem("nome_cognome", profilo[1] + "_" + profilo[2]);
			localStorage.setItem("array", profilo);
		}
	}
}


function cerca()
{
	var ricerca = document.getElementById("ricerca").value;
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet_Javascript', true);
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
	"Anno Colloquio: ", "Esito Colloquio: ", "Fonte Reperimento: ", "Costo GG: ", "Possibilita' Lavorativa: ", "Skill: ",
	"Tech1: ", "Tech2: ", "Tech3: ", "Tech4: ", "Tech (Campo Libero): ", "Lingua1: ", "Lingua2: ", "Lingua3: ", "Competenze Totali: ", "Certificazioni: ",
	"Seniority: "];
	
	str = localStorage.getItem("array");
	array = str.split(",");
	array.pop();
	array.shift();
	var c=10;
	for(let i=0; i<array.length;i++){
		if(array[i].startsWith(" ]")){
			break;
		}
		if(array[i]!=""){
			doc.text(categorie[i] + " " + array[i], 10, c);
			c+=7;
		}
	}
	doc.save(nome_cognome +  '_Cv.pdf')
}


function menu_cascata()
{
	menu_cascata_skill();
	menu_cascata_lingue();
	menu_cascata_seniority();
	menu_cascata_tech();
	menu_cascata_esito_colloquio()
}


function menu_cascata_lingue()
{
	var lingue;   
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_lingua");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_lingua = xhttp.responseText;
			lingue = risposta_lingua.split(", ");
			lingue.pop();
			lingue.shift();
			for (var c = 0; c < lingue.length; c++)
			{
				const lingua = document.createElement("option");
				lingua.value = lingue[c];
				lingua.innerHTML = lingue[c];
				document.getElementById('lingua1').appendChild(lingua);
				
				const lingua2 = document.createElement("option");
				lingua2.value = lingue[c];
				lingua2.innerHTML = lingue[c];
				document.getElementById('lingua2').appendChild(lingua2);
				
				const lingua3 = document.createElement("option");
				lingua3.value = lingue[c];
				lingua3.innerHTML = lingue[c];
				document.getElementById('lingua3').appendChild(lingua3);
			}
		}
	}
}


function menu_cascata_seniority()
{
	var seniority;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_seniority");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_seniority = xhttp.responseText;
			seniority = risposta_seniority.split(", ");
			seniority.pop();
			seniority.shift();
			for (var c = 0; c < seniority.length; c++)
			{
				const senior = document.createElement("option");
				senior.value = seniority[c];
				senior.innerHTML = seniority[c];
				document.getElementById('seniority').appendChild(senior);
			}
		}
	}
}


function menu_cascata_skill()
{
	var skill;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_skill");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_skill = xhttp.responseText;
			skill = risposta_skill.split(", ");
			skill.pop();
			skill.shift();
			for (var c = 0; c < skill.length; c++)
			{
				const skills = document.createElement("option");
				skills.value = skill[c];
				skills.innerHTML = skill[c];
				document.getElementById('skill').appendChild(skills);
			}
		}
	}
}


function menu_cascata_esito_colloquio()
{
	var esito_colloqui;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_esito_colloquio");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_esito_colloqui = xhttp.responseText;
			esito_colloqui = risposta_esito_colloqui.split(", ");
			esito_colloqui.pop();
			esito_colloqui.shift();
			for (var c = 0; c < esito_colloqui.length; c++)
			{
				const esito_colloquio = document.createElement("option");
				esito_colloquio.value = esito_colloqui[c];
				esito_colloquio.innerHTML = esito_colloqui[c];
				document.getElementById('esito_colloquio').appendChild(esito_colloquio);
			}
		}
	}
}


function menu_cascata_tech()
{
	var tech;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_tech");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_tech = xhttp.responseText;
			tech = risposta_tech.split(", ");
			tech.pop();
			tech.shift();
			for (var c = 0; c < tech.length; c++)
			{
				const techs = document.createElement("option");
				techs.value = tech[c];
				techs.innerHTML = tech[c];
				document.getElementById('input_tech1').appendChild(techs);
				
				const techs2 = document.createElement("option");
				techs2.value = tech[c];
				techs2.innerHTML = tech[c];
				document.getElementById('input_tech2').appendChild(techs2);
				
				const techs3 = document.createElement("option");
				techs3.value = tech[c];
				techs3.innerHTML = tech[c];
				document.getElementById('input_tech3').appendChild(techs3);
				
				const techs4 = document.createElement("option");
				techs4.value = tech[c];
				techs4.innerHTML = tech[c];
				document.getElementById('input_tech4').appendChild(techs4);
			}
		}
	}
}


function menu_cascata2(skill, tech1, tech2, tech3, tech4, lingua1, lingua2, lingia3, seniority, esito_colloquio_1)
{
	menu_cascata_skill2(skill);
	menu_cascata_lingue2(lingua1, lingua2, lingia3);
	menu_cascata_seniority2(seniority);
	menu_cascata_tech2(tech1, tech2, tech3, tech4);
	menu_cascata_esito_colloquio2(esito_colloquio_1);
}


function menu_cascata_lingue2(lingua_1, lingua_2, lingua_3)
{
	var lingue;   
	var xhttp = new XMLHttpRequest();

	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_lingua");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_lingua = xhttp.responseText;
			lingue = risposta_lingua.split(", ");
			lingue.pop();
			lingue.shift();
			for (var c = 0; c < lingue.length; c++)
			{
				const lingua = document.createElement("option");
				lingua.value = lingue[c];
				lingua.innerHTML = lingue[c];
				if (lingue[c] == lingua_1)
					lingua.selected = true;
				document.getElementById('lingua1').appendChild(lingua);
				
				const lingua2 = document.createElement("option");
				lingua2.value = lingue[c];
				lingua2.innerHTML = lingue[c];
				if (lingue[c] == lingua_2)
					lingua2.selected = true;
				document.getElementById('lingua2').appendChild(lingua2);
				
				const lingua3 = document.createElement("option");
				lingua3.value = lingue[c];
				lingua3.innerHTML = lingue[c];
				if (lingue[c] == lingua_3)
					lingua3.selected = true;
				document.getElementById('lingua3').appendChild(lingua3);
			}
		}
	}
}


function menu_cascata_seniority2(seniority_1)
{
	var seniority;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_seniority");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_seniority = xhttp.responseText;
			seniority = risposta_seniority.split(", ");
			seniority.pop();
			seniority.shift();
			for (var c = 0; c < seniority.length; c++)
			{
				const senior = document.createElement("option");
				senior.value = seniority[c];
				senior.innerHTML = seniority[c];
				if (seniority[c] == seniority_1)
					senior.selected = true;
				document.getElementById('seniority').appendChild(senior);
			}
		}
	}
}


function menu_cascata_skill2(skill_1)
{
	var skill;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_skill");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_skill = xhttp.responseText;
			skill = risposta_skill.split(", ");
			skill.pop();
			skill.shift();
			for (var c = 0; c < skill.length; c++)
			{
				const skills = document.createElement("option");
				skills.value = skill[c];
				skills.innerHTML = skill[c];
				if (skill[c] == skill_1)
					skills.selected = true;
				document.getElementById('skill').appendChild(skills);
			}
		}
	}
}


function menu_cascata_esito_colloquio2(esito_colloquio_1)
{
	var esito_colloqui;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_esito_colloquio");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_esito_colloqui = xhttp.responseText;
			esito_colloqui = risposta_esito_colloqui.split(", ");
			esito_colloqui.pop();
			esito_colloqui.shift();
			for (var c = 0; c < esito_colloqui.length; c++)
			{
				const esito_colloquio = document.createElement("option");
				esito_colloquio.value = esito_colloqui[c];
				esito_colloquio.innerHTML = esito_colloqui[c];
				if (esito_colloqui[c] == esito_colloquio_1)
					esito_colloquio.selected = true;
				document.getElementById('esito_colloquio').appendChild(esito_colloquio);
			}
		}
	}
}

function menu_cascata_tech2(tech_1, tech_2, tech_3, tech_4)
{
	var tech;   
	var xhttp = new XMLHttpRequest();
	
	xhttp.open("POST", 'Servlet', true);
	xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xhttp.send("Servlet=" + "get_tech");
	xhttp.onreadystatechange = function()
	{
		if (this.readyState == 4 && this.status == 200)
		{
			var risposta_tech = xhttp.responseText;
			tech = risposta_tech.split(", ");
			tech.pop();
			tech.shift();
			for (var c = 0; c < tech.length; c++)
			{
				const techs = document.createElement("option");
				techs.value = tech[c];
				techs.innerHTML = tech[c];
				if (tech[c] == tech_1)
					techs.selected = true;
				document.getElementById('input_tech1').appendChild(techs);
				
				const techs2 = document.createElement("option");
				techs2.value = tech[c];
				techs2.innerHTML = tech[c];
				if (tech[c] == tech_2)
					techs2.selected = true;
				document.getElementById('input_tech2').appendChild(techs2);
				
				const techs3 = document.createElement("option");
				techs3.value = tech[c];
				techs3.innerHTML = tech[c];
				if (tech[c] == tech_3)
					techs3.selected = true;
				document.getElementById('input_tech3').appendChild(techs3);
				
				const techs4 = document.createElement("option");
				techs4.value = tech[c];
				techs4.innerHTML = tech[c];
				if (tech[c] == tech_4)
					techs4.selected = true;
				document.getElementById('input_tech4').appendChild(techs4);
			}
		}
	}
}


