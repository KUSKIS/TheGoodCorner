package com.tgc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class TgcConnection {

	public static  Connection beConnect() throws Exception {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost:3306/td","root","");
			} catch (ClassNotFoundException e) {
				throw new Exception("ClassNotFoundException :" + e.getMessage());
				
			}catch (SQLException e) {
				throw new Exception("ClassNotFoundException :" + e.getMessage());
			}
			
		}
}
