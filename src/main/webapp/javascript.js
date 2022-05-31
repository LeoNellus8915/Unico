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
	if (e1 != e2)
	{
		alert('Le password non coincidono!');
	}
}
function bustepaga()
{     			
	var p1 = document.getElementById('gennaio');
	var p2 = document.getElementById('febbraio');
	var p3 = document.getElementById('marzo');
	var p4 = document.getElementById('aprile');
	var p5 = document.getElementById('maggio');
	var p6 = document.getElementById('giugno');
	var p7 = document.getElementById('luglio');
	var p8 = document.getElementById('agosto');
	var p9 = document.getElementById('settembre');
	var p10 = document.getElementById('ottobre');
	var p11 = document.getElementById('novembre');
	var p12 = document.getElementById('dicembre');
    p1.innerHTML = 'Gennaio';
    p2.innerHTML = 'Febbraio';
    p3.innerHTML = 'Marzo';
    p4.innerHTML = 'Aprile';
    p5.innerHTML = 'Maggio';
    p6.innerHTML = 'Giugno';
    p7.innerHTML = 'Luglio';
    p8.innerHTML = 'Agosto';
    p9.innerHTML = 'Settembre';
    p10.innerHTML = 'Ottobre';
    p11.innerHTML = 'Novembre';
    p12.innerHTML = 'Dicembre';
    p1.style.color = "red";
}
function invio(mese)
{
	var xhttp = new XMLHttpRequest();
    
	xhttp.open("POST", 'Servlet_Bustepaga', true);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("Servlet="+mese);
}