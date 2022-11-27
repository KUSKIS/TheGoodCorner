package com.tgc.modele;

public class User {

	int id;
	private String login;
	private String email;
	private String password;
	private String localisation;
	
	public User(int id, String login, String email, String password, String localisation) {
		
		this.id = id;
		this.login = login;
		this.email = email;
		this.password = password;
		this.localisation = localisation;
	}

	public User(String login, String email, String password, String localisation) {
		
		this.login = login;
		this.email = email;
		this.password = password;
		this.localisation = localisation;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLocalisation() {
		return localisation;
	}

	public void setLocalisation(String localisation) {
		this.localisation = localisation;
	}
	
}
