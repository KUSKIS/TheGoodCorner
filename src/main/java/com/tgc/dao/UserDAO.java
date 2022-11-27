package com.tgc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.tgc.dao.TgcConnection;
import com.tgc.modele.User;

public class UserDAO {
	
	public static List<User> getAllUsers(){
			
			List<User> res = new ArrayList<>();
			
			try {
				
				Connection con = TgcConnection.beConnect();
				ResultSet rs = con.createStatement().executeQuery("SELECT * FROM users");
				
				
				while (rs.next()) {
					
					 res.add(new User(
							 
					 rs.getInt("id"),
					 rs.getString("login"),
					 rs.getString("email"),
					 rs.getString("password"),
					 rs.getString("localisation")));
					 	 
				}
				rs.close();
				con.close();
				
				} catch (Exception e) {
					e.printStackTrace();
				}
			
				return res;
		}
	
	
	public static User getUserById(int id) {
		
		User user = null;
		
		try {
			
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM users WHERE id = ?");
			ps.setInt(1, id);
			
			ResultSet rs = ps.executeQuery();
			
			
			if (rs.next()) {
				
				user = new User(
				 rs.getString("login"),
				 rs.getString("email"),
				 rs.getString("password"),
				 rs.getString("localisation"));
			}
			
			rs.close();
			con.close();
		
		
			} catch (Exception e) {
				e.printStackTrace();
		
			}
		
			return user;
	}
	
	
	
	public static boolean deleteUser(int id) {
		
		try {
			
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("DELETE FROM users WHERE id=?");
			ps.setInt(1, id);
			
			ps.executeUpdate();
			
			con.close();
			
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}
	}
	
	public static boolean updateUser(int id, String login, String email, String password, String localisation ) {
		return updateUser( new User(id, login, email, password, localisation));
	}
	
	public static boolean updateUser(User user) {
		
		try {
			
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("UPDATE users SET login=?, email=?, password=?, localisation=? WHERE id = ?");
			ps.setString(1, user.getLogin());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getLocalisation());
			
			ps.executeUpdate();
			
			con.close();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean createUser(String login, String email, String password, String localisation) {
		return createUser( new User(login, email, password, localisation));
	}
	
	public static boolean  createUser(User user) {
		
		
		try {
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("INSERT INTO users(login, email, password, localisation) VALUES (?, ?, ?, ?)");
				
			ps.setString(1, user.getLogin());
			ps.setString(2, user.getEmail());
			ps.setString(3, user.getPassword());
			ps.setString(4, user.getLocalisation());
				
			ps.executeUpdate();
				
			con.close();
			return true;
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				return false;
			}
			
	
	}
	
	public static boolean isValidUser(String login, String email, String password, String localisation) {
		
		if (login == null) login = "";
		if (email == null) email = "";
		if (password == null) password = "";
		if(localisation == null) localisation = "";	
		
		if ( login == null || !email.contains("@") || "".equals(login) || password.length() < 2 || localisation == null){
			return false;
		} 
		return true;
	}
}
