package model;

public class Commenti
{
	private int id;
	private String commento;
	
	public Commenti () {}
	
	public Commenti (int id, String commento)
	{
		this.id = id;
		this.commento = commento;
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
}