package model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.corso.model.Actor;

import model.Utente;
import model.Bustepaga;

public class Main
{
	public boolean Login(String email, String password)
	{
		Utente user = new Utente();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
        Query q = controllo.createQuery("from Utente");
        List users = q.list();
        for (int c=0; c<users.size(); c++)
        {
        	user = (Utente) users.get(c);
        	if ((user.getEmail().equals(email)) && (user.getPassword().equals(password)))
        	{
        		return true;
        	}	
        }
        controllo.close();
        return false;
	}
	public void Register(String email, String password)
	{
		Utente user = new Utente();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select max(id) from Utente");
		List list = q.list();
        if ((Integer)list.get(0) != null)
            user.setId((Integer)list.get(0) + 1);
        user.setEmail(email);
        user.setPassword(password);
        controllo.save(user);
        controllo.getTransaction().commit();
        controllo.close();
	}
	public boolean Register2(String email)
	{
		Utente user = new Utente();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("from Utente");
		List users = q.list();
		for (int c=0; c<users.size(); c++)
        {
        	user = (Utente) users.get(c);
        	if ((user.getEmail().equals(email)))
        	{
        		return true;
        	}
        }
		controllo.close();
		return false;
	}
	public void bustepaga_data (String data, String mese)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("update Bustepaga set data = '" + data + "' where mese = '"+ mese + "' and data is null");
		q.executeUpdate();
		controllo.close();
	}
	public ArrayList getData_Mesi()
	{
		Bustepaga busta;
		ArrayList<String> data = new ArrayList<String>();
		data.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("from Bustepaga");
		List buste = q.list();
		for (int c=0; c<buste.size(); c++)
        {
        	busta = (Bustepaga) buste.get(c);
        	data.add(busta.getData());
        }
		controllo.close();
		data.add(" ");
		return data;
	}
	public void certificazione_unica_data (String data, String anno)
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("update Certificazione_Unica set data = '" + data + "' where anno = '"+ anno + "' and data is null");
		q.executeUpdate();
		controllo.close();
	}
	public ArrayList getData_Anni()
	{
		Certificazione_Unica certificazione;
		ArrayList<String> data = new ArrayList<String>();
		data.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("from Certificazione_Unica");
		List cert = q.list();
		for (int c=0; c<cert.size(); c++)
        {
        	certificazione = (Certificazione_Unica) cert.get(c);
        	data.add(certificazione.getData());
        }
		controllo.close();
		data.add(" ");
		return data;
	}
	public void salva (String nome, String cognome, String recapito, String citta_allocazione, String ruolo, String competenza_principale, String data_colloquio,
						String anno_colloquio, String esito_colloquio, String impressioni, String fonte_reperimento, String costo_giornaliero,
						String possibilita_lavorativa, String skill, String tech1, String tech2, String tech3, String tech4, String tech5, String lingua1,
						String lingua2, String lingua3, String competenze_totali, String certificazioni, String seniority)	
	{
		Profilo profilo = new Profilo();
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("select max(id) from Profilo");
		List list = q.list();
        if ((Integer)list.get(0) != null)
        	profilo.setId((Integer)list.get(0) + 1);
        else
        	profilo.setId(0);
        profilo.setNome(nome);
        profilo.setCognome(cognome);
        profilo.setRecapito(recapito);
        profilo.setCitta_allocazione(citta_allocazione);
        profilo.setRuolo(ruolo);
        profilo.setCompetenza_principale(competenza_principale);
        profilo.setData_colloquio(data_colloquio);
        profilo.setAnno_colloquio(anno_colloquio);
        profilo.setEsito_colloquio(esito_colloquio);
        profilo.setImpressioni(impressioni);
        profilo.setFonte_reperimento(fonte_reperimento);
        profilo.setCosto_giornaliero(costo_giornaliero);
        profilo.setPossibilita_lavorativa(possibilita_lavorativa);
        profilo.setSkill(skill);
        profilo.setTech1(tech1);
        profilo.setTech2(tech2);
        profilo.setTech3(tech3);
        profilo.setTech4(tech4);
        profilo.setTech5(tech5);
        profilo.setLingua1(lingua1);
        profilo.setLingua2(lingua2);
        profilo.setLingua3(lingua3);
        profilo.setCompetenze_totali(competenze_totali);
        profilo.setCertificazioni(certificazioni);
        profilo.setSeniority(seniority);
        
        controllo.save(profilo);
        controllo.getTransaction().commit();
        controllo.close();
	}
	public List ricerca()
	{
		List profili = new ArrayList();
		profili.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
        Query q_id = controllo.createQuery("select id from Profilo");
        Query q_nome = controllo.createQuery("select nome from Profilo");
        Query q_cognome = controllo.createQuery("select cognome from Profilo");
        List lista_id = q_id.list();
        List lista_nomi = q_nome.list();
        List lista_cognomi = q_cognome.list();
        for (int c=0; c<lista_id.size(); c++)
        	profili.add((Integer)lista_id.get(c) + "        " + (String)lista_nomi.get(c) + " " + (String)lista_cognomi.get(c));
        profili.add(" ");
        controllo.close();
        return profili;
	}
}