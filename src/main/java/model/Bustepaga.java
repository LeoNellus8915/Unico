package model;

import java.sql.Date;

public class Bustepaga
{
	private int id;
	private String mese;
	private Date data;
	
	Bustepaga(){}
	
	Bustepaga (int id, String mese, Date data)
	{
		this.id = id;
		this.mese = mese;
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
	public void setMese (String mese)
	{
		this.mese = mese;
	}
	public String getmese()
	{
		return mese;
	}
	public void setData (Date data)
	{
		this.data = data;
	}
	public Date getData()
	{
		return data;
	}
}
