package com.tgc.modele;

public class Category {

	int id;
	private String title;
	
	public Category(int id, String title) {
		
		this.id = id;
		this.title = title;
	}

	public Category(String title) {
		
		this.title = title;
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
}
