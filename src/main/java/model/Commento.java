package model;

public class Commento
{
	private int id;
	private String commento;
	private int fk_utente;
	private int fk_profilo;
	private String data;
	
	public Commento () {}
	
	public Commento (int id, String commento, int fk_utente, int fk_profilo, String data)
	{
		this.id = id;
		this.commento = commento;
		this.fk_utente = fk_utente;
		this.fk_profilo = fk_profilo;
		this.data = data;
	}
	
	public void setId(int id)
	{
		this.id = id;
	}
	public int getId()
	{
		return id;
	}
	
	public void setCommento(String commento)
	{
		this.commento = commento;
	}
	public String getCommento()
	{
		return commento;
	}
	
	public void setFk_utente(int fk_utente)
	{
		this.fk_utente = fk_utente;
	}
	public int getFk_utente()
	{
		return fk_utente;
	}
	
	public void setFk_profilo(int fk_profilo)
	{
		this.fk_profilo = fk_profilo;
	}
	public int getFk_profilo()
	{
		return fk_profilo;
	}

	public String getData()
	{
		return data;
	}
	public void setData(String data)
	{
		this.data = data;
	}
	
}