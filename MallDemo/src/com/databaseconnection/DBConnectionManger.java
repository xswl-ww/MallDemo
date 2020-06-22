package com.databaseconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionManger {
private String driverName = "com.mysql.jdbc.Driver";
private String url="jdbc:mysql://localhost:3306/business?useUnicode=true&characterEncoding=UTF-8";
private String user = "root";
private String password = "zxc13288";
public String getDriverName() {
	return driverName;
}
public void setDriverName(String driverName) {
	this.driverName = driverName;
}
public String getUrl() {
	return url;
}
public void setUrl(String url) {
	this.url = url;
}
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}

public Connection getConnection() {
	try{
		//��������
		Class.forName(driverName);
	}catch (ClassNotFoundException e) {
		System.out.print("�����������쳣��");
	}
	try{
		return DriverManager.getConnection(url, user, password);
	}catch (SQLException e) {
		System.out.print("�������ݿ�ʧ�ܣ�");
	}
	return null;
	
}
}
