package com.restaurant.dao;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.beans.factory.annotation.Autowired;

import com.restaurant.DbProperties;

public class DbConnection {

	private static DbConnection dbConn = null;

	// @Autowired
	// private DbProperties dbProperties;

	private DbConnection() {

	}

	public static DbConnection getInstance() {
		if (dbConn == null) {
			return new DbConnection();
		}
		return dbConn;
	}

	public Connection getDbConnection() {
		Connection myConn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:8889/Restaurant", "RestUser", "12345678");
			System.out.println("Connection succesful");

		} catch (Exception exc) {
			exc.printStackTrace();
		}
		return myConn;
	}
}
