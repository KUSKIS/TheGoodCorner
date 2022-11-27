package com.tgc.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.tgc.dao.TgcConnection;
import com.tgc.modele.Notice;

public class NoticeDAO {
	
public static List<Notice> getAllNotices(){
		
		List<Notice> res = new ArrayList<>();
		
		try {
			
			Connection con = TgcConnection.beConnect();
			ResultSet rs = con.createStatement().executeQuery("SELECT * FROM notices");
			
			
			while (rs.next()) {
				
				 res.add(new Notice(
						 
				 rs.getInt("id"),
				 rs.getString("title"),
				 rs.getDate("date"),
				 rs.getInt("categories_id"),
				 rs.getString("description"),
				 rs.getFloat("price"),
				 rs.getInt("users_id")
				 
				 
				 ));
				 	 
			}
			rs.close();
			con.close();
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			return res;
	}

	public static boolean deleteNotice(int id) {
		
		try {
			
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("DELETE FROM notices WHERE id=?");
			ps.setInt(1, id);
			
			ps.executeUpdate();
			
			con.close();
			
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			
			return false;
		}
	}
	
	public static boolean updateNotice(int id, String title, Date date, int categories_id, String description, float price, int users_id ) {
		return updateNotice( new Notice(id, title, date, categories_id, description, price, users_id));
	}
	
	public static boolean updateNotice(Notice notice) {
		
		try {
			
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("UPDATE notices SET id = ?, title = ?, date = ?, categories_id = ?, description = ?, price = ?, users_id = ? WHERE id = ?");
			ps.setString(1, notice.getTitle());
			ps.setDate(2, (Date) notice.getDate());
			ps.setInt(3, notice.getCategory_id());
			ps.setString(4, notice.getDescription());
			ps.setFloat(5, notice.getPrice());
			ps.setInt(6, notice.getUser_id());
			
			ps.executeUpdate();
			
			con.close();
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static boolean createNotice(String title, Date date, int categories_id, String description, float price, int users_id) {
		return createNotice( new Notice(title, date, categories_id, description, price, users_id));
	}
	
	public static boolean  createNotice(Notice notice) {
		
		try {
			Connection con = TgcConnection.beConnect();
			PreparedStatement ps = con.prepareStatement("INSERT INTO notices(title, date, categories_id, description, price, users_id) VALUES (?, ?, ?, ?, ?, ?);");
				
			ps.setString(1, notice.getTitle());
			ps.setDate(2, (Date) notice.getDate());
			ps.setInt(3, notice.getCategory_id());
			ps.setString(4, notice.getDescription());
			ps.setFloat(5, notice.getPrice());
			ps.setInt(6, notice.getUser_id());
				
			ps.executeUpdate();
				
			con.close();
			return true;
				
				
			} catch (Exception e) {
				
				e.printStackTrace();
				return false;
			}
			
	
	}
	
}
