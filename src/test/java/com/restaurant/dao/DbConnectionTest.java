package com.restaurant.dao;

import org.junit.Test;

public class DbConnectionTest {

	@Test
	public void testGetDbConnection() {
		
		DbConnection.getInstance().getDbConnection();
	
	}

}
