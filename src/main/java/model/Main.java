package model;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

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
	public void salva (String nome, String cognome, String recapito, String email, String citta_allocazione, String ruolo, String competenza_principale, String data_colloquio,
						String anno_colloquio, String esito_colloquio, String impressioni, String fonte_reperimento, String costo_giornaliero,
						String possibilita_lavorativa, String skill, String tech1, String tech2, String tech3, String tech4, String tech_campo_libero, String lingua1,
						String lingua2, String lingua3, String competenze_totali, String certificazioni, String seniority)	
	{
		Profilo profilo = new Profilo();
		Commenti commento = new Commenti();
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
        profilo.setEmail(email);
        profilo.setCitta_allocazione(citta_allocazione);
        profilo.setRuolo(ruolo);
        profilo.setCompetenza_principale(competenza_principale);
        profilo.setData_colloquio(data_colloquio);
        profilo.setAnno_colloquio(anno_colloquio);
        profilo.setEsito_colloquio(esito_colloquio);
        profilo.setFonte_reperimento(fonte_reperimento);
        profilo.setCosto_giornaliero(costo_giornaliero);
        profilo.setPossibilita_lavorativa(possibilita_lavorativa);
        profilo.setSkill(skill);
        profilo.setTech1(tech1);
        profilo.setTech2(tech2);
        profilo.setTech3(tech3);
        profilo.setTech4(tech4);
        profilo.setTech_campo_libero(tech_campo_libero);
        profilo.setLingua1(lingua1);
        profilo.setLingua2(lingua2);
        profilo.setLingua3(lingua3);
        profilo.setCompetenze_totali(competenze_totali);
        profilo.setCertificazioni(certificazioni);
        profilo.setSeniority(seniority);
        
        commento.setId(profilo.getId());
        commento.setCommento(impressioni);
        
        controllo.save(commento);
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
        	profili.add((Integer)lista_id.get(c) + " " + (String)lista_nomi.get(c) + " " + (String)lista_cognomi.get(c));
        profili.add(" ");
        controllo.close();
        return profili;
	}
	public List ricercaProfilo(String id)
	{
		List profili = new ArrayList();
		Profilo profilo = new Profilo();
		profili.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
        Query q = controllo.createQuery("from Profilo where id = " + id);
        q.uniqueResult();
        List lista = q.list();
        profilo = (Profilo) lista.get(0);
        profili.add(profilo.getNome()!=null?profilo.getNome():"");
        profili.add(profilo.getCognome()!=null?profilo.getCognome():"");
        profili.add(profilo.getRecapito()!=null?profilo.getRecapito():"");
        profili.add(profilo.getEmail()!=null?profilo.getEmail():"");
        profili.add(profilo.getCitta_allocazione()!=null?profilo.getCitta_allocazione():"");
        profili.add(profilo.getRuolo()!=null?profilo.getRuolo():"");
        profili.add(profilo.getCompetenza_principale()!=null?profilo.getCompetenza_principale():"");
        profili.add(profilo.getData_colloquio()!=null?profilo.getData_colloquio():"");
        profili.add(profilo.getAnno_colloquio()!=null?profilo.getAnno_colloquio():"");
        profili.add(profilo.getEsito_colloquio()!=null?profilo.getEsito_colloquio():"");
        profili.add(profilo.getFonte_reperimento()!=null?profilo.getFonte_reperimento():"");
        profili.add(profilo.getCosto_giornaliero()!=null?profilo.getCosto_giornaliero():"");
        profili.add(profilo.getPossibilita_lavorativa()!=null?profilo.getPossibilita_lavorativa():"");
        profili.add(profilo.getSkill()!=null?profilo.getSkill():"");
        profili.add(profilo.getTech1()!=null?profilo.getTech1():"");
        profili.add(profilo.getTech2()!=null?profilo.getTech2():"");
        profili.add(profilo.getTech3()!=null?profilo.getTech3():"");
        profili.add(profilo.getTech4()!=null?profilo.getTech4():"");
        profili.add(profilo.getTech_campo_libero()!=null?profilo.getTech_campo_libero():"");
        profili.add(profilo.getLingua1()!=null?profilo.getLingua1():"");
        profili.add(profilo.getLingua2()!=null?profilo.getLingua2():"");
        profili.add(profilo.getLingua3()!=null?profilo.getLingua3():"");
        profili.add(profilo.getCompetenze_totali()!=null?profilo.getCompetenze_totali():"");
        profili.add(profilo.getCertificazioni()!=null?profilo.getCertificazioni():"");
        profili.add(profilo.getSeniority()!=null?profilo.getSeniority():"");
        profili.add(" ");
        controllo.close();
        return profili;
	}
	public List filtra (String filtro)
	{
		List profili = new ArrayList();
		Profilo profilo = new Profilo();
		profili.add(" ");
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q_id = controllo.createQuery("select id from Profilo where id = '" + filtro + "' or nome = '" + filtro + "' or cognome = '" + filtro + "'");
        Query q_nome = controllo.createQuery("select nome from Profilo where id = '" + filtro + "' or nome = '" + filtro + "' or cognome = '" + filtro + "'");
        Query q_cognome = controllo.createQuery("select cognome from Profilo where id = '" + filtro + "' or nome = '" + filtro + "' or cognome = '" + filtro + "'");
        List lista_id = q_id.list();
        List lista_nomi = q_nome.list();
        List lista_cognomi = q_cognome.list();
        profili.add((Integer)lista_id.get(0) + " " + (String)lista_nomi.get(0) + " " + (String)lista_cognomi.get(0));
        profili.add(" ");
        controllo.close();
        return profili;
	}
	public void aggiorna_cv (String nome, String cognome, String recapito, String email, String citta_allocazione, String ruolo, String competenza_principale, String data_colloquio,
			String anno_colloquio, String esito_colloquio, String fonte_reperimento, String costo_giornaliero,
			String possibilita_lavorativa, String skill, String tech1, String tech2, String tech3, String tech4, String tech_campo_libero, String lingua1,
			String lingua2, String lingua3, String competenze_totali, String certificazioni, String seniority)	
	{
		Session controllo = new Configuration().configure().buildSessionFactory().getCurrentSession();
		controllo.beginTransaction();
		Query q = controllo.createQuery("update Profilo set nome = '" + nome + "', cognome = '" + cognome + "', recapito = '" + recapito 
				+ "', email = '" + email + "', citta_allocazione = '" + citta_allocazione + "', ruolo = '" + ruolo + "', competenza_principale = '" + competenza_principale 
				+ "', data_colloquio = '" + data_colloquio + "', anno_colloquio = '" + anno_colloquio + "', esito_colloquio = '" + esito_colloquio
				+ "', fonte_reperimento = '" + fonte_reperimento + "', costo_giornaliero = '" + costo_giornaliero 
				+ "', possibilita_lavorativa = '" + possibilita_lavorativa + "', skill = '" + skill + "', tech1 = '" + tech1 + "', tech2 = '" + tech2
				+ "', tech3 = '" + tech3 + "', tech4 = '" + tech4 + "', tech_campo_libero = '" + tech_campo_libero + "', lingua1 = '" + lingua1 + "', lingua2 = '" + lingua2
				+ "', lingua3 = '" + lingua3 + "', competenze_totali = '" + competenze_totali + "', certificazioni = '" + certificazioni
				+ "', seniority = '" + seniority + "' where nome = '" + nome + "' and cognome = '" + cognome + "'");
		q.executeUpdate();
		controllo.close();
	}
}