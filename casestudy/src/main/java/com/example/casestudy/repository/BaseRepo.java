package com.example.casestudy.repository;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class BaseRepo {
	private static String jdbcURL;
	private static String jdbcUsername;
	private static String jdbcPassword;

	static {
		try (FileInputStream fis = new FileInputStream("src/main/resources/application.properties")) {
			Properties properties = new Properties();
			properties.load(fis);

			jdbcURL = properties.getProperty("spring.datasource.url");
			jdbcUsername = properties.getProperty("spring.datasource.username");
			jdbcPassword = properties.getProperty("spring.datasource.password");

			// Load Driver
			Class.forName(properties.getProperty("spring.datasource.driver-class-name"));
		} catch (IOException | ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		Connection connection = null;
		try {
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return connection;
	}
}
