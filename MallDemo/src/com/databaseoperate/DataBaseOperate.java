package com.databaseoperate;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.databaseconnection.DBConnectionManger;

public class DataBaseOperate {
	//��ȡ����
	Connection connection = null;
	//��ȡStatement
	//Statement statement = null;
	//ִ�в�ѯ���ʱ��ȡ�����
	//ResultSet result = null;
public DataBaseOperate(){
	try{
	//�������ݿ�
	DBConnectionManger dbconn = new DBConnectionManger();
	connection = dbconn.getConnection();
	//statement = connection.createStatement();
	}catch (Exception e) {
		e.printStackTrace();
	}
}


	//��ѯ���ݿ�
public ResultSet query(String sql) {
	try {
		Statement statement = null;
		//ʵ����statement
		statement = connection.createStatement();
		//ִ�в�ѯ���
		return statement.executeQuery(sql);
	} catch (SQLException e) {
	System.out.print("��ѯʧ�ܣ���");
	   }
	return null;
    }


		//��������
public void insert(String sql) {
	try {
		Statement statement = null;
		//ʵ����statement
		statement = connection.createStatement();
		//ִ�в������
		statement.executeUpdate(sql);
	} catch (SQLException e) {
		System.out.print("����ʧ�ܣ���");
	}	
}


		//ɾ������
public void delect(String sql) {
	try {
		Statement statement = null;
		//ʵ����statement
		statement = connection.createStatement();
	   //ִ��ɾ�����
	   statement.executeUpdate(sql);
	} catch (SQLException e) {
		System.out.print("ɾ��ʧ�ܣ���");
	}
	
}


		//�޸�����
public void update(String sql) {
	    //ʵ����statement
	  try {
		  Statement statement = null;
			//ʵ����statement
			statement = connection.createStatement();
		statement.executeUpdate(sql);
	} catch (SQLException e) {
		System.out.print("����ʧ�ܣ���");
	}
	
}
   }
