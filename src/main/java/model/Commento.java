package model;

public class Commento
{
	private int id;
	private String commento;
	
	public Commento () {}
	
	public Commento (int id, String commento)
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