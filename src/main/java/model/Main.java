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
}