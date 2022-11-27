package com.tgc.modele;

import java.util.Date;

public class Notice {

	int id;
	private String title;
	Date date;
	int category_id;
	private String description;
	float price;
	int user_id;
	
	public Notice(int id, String title, Date date, int category_id, String description, float price, int user_id) {
		
		this.id = id;
		this.title = title;
		this.date = date;
		this.category_id = category_id;
		this.description = description;
		this.price = price;
		this.user_id = user_id;
	}

	public Notice(String title, Date date, int category_id, String description, float price, int user_id) {
		
		this.title = title;
		this.date = date;
		this.category_id = category_id;
		this.description = description;
		this.price = price;
		this.user_id = user_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getCategory_id() {
		return category_id;
	}

	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	
	
	
	
	
	
}
