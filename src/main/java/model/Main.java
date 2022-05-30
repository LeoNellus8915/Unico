package model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import model.Utente;

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
}