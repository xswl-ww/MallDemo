package com.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	//private static  String url="jdbc:mysql://localhost:3306/fruitsMall?"
	//		  +"user=root&password=tuberose123&useUnicode=true&characterEncoding=utf8&useSSL=true";
	//private static final String dbDrive="com.mysql.jdbc.Driver";
	
	private static final String DBDrive="com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private static final String URL="jdbc:sqlserver://localhost:1433;DatabaseName=fruitsMall";
	private static final String USER="sa";
	private static final String PASSWORD="123456";//连接数据库的sa密码。
	private static Connection conn=null;
	
	static{
		try{
			//加载驱动
			Class.forName(DBDrive);
			
		}
		catch(ClassNotFoundException e){
			e.printStackTrace();
		}
	}
	
	public static Connection getConnection() throws SQLException{
		if(conn==null){
			conn=DriverManager.getConnection(URL,USER,PASSWORD);
			return conn;
		}
		return conn;	
	}

}
