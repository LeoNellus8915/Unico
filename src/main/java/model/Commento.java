package model;

public class Commento
{
	private int id;
	private String commento;
	private int id_utente;
	private int id_profilo;
	private String data_com;
	
	public Commento () {}
	
	public Commento (int id, String commento, int id_utente, int id_profilo, String data_com)
	{
		this.id = id;
		this.commento = commento;
		this.id_utente = id_utente;
		this.id_profilo = id_profilo;
		this.data_com = data_com;
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
	
	public void setId_utente(int id_utente)
	{
		this.id_utente = id_utente;
	}
	public int getId_utente()
	{
		return id_utente;
	}
	
	public void setId_profilo(int id_profilo)
	{
		this.id_profilo = id_profilo;
	}
	public int getId_profilo()
	{
		return id_profilo;
	}

	public String getData_com() {
		return data_com;
	}

	public void setData_com(String data_com) {
		this.data_com = data_com;
	}
	
}