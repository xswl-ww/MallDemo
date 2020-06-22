package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.db.DBUtil;
import com.entity.Items;

public class ItemsDAO {
	public ArrayList<Items> getAllItems() {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		ArrayList<Items> list = new ArrayList<Items>(); // 动态数组，存储所有商品
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from items;"; 
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			while (rs.next()) {
				Items item = new Items();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setOrigin(rs.getString("origin"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getFloat("price"));
				item.setPicture(rs.getString("picture"));
				item.setDescription(rs.getString("description"));
				list.add(item);// 把每一个商品添加至动态数组
			}
			return list; // 返回数组
		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// 释放资源
			closeSrc(rs,stmt,conn);
		}

	}

	// 通过商品id查找商品
	public Items getItemsById(int id) {
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		try {
			conn = DBUtil.getConnection();
			String sql = "select * from items where id=?;"; // SQL语句查找
			stmt = conn.prepareStatement(sql);
			stmt.setInt(1, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				Items item = new Items();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setOrigin(rs.getString("origin"));
				item.setNumber(rs.getInt("number"));
				item.setPrice(rs.getFloat("price"));
				item.setPicture(rs.getString("picture"));
				item.setDescription(rs.getString("description"));
				return item;
			} else {
				return null;
			}

		} catch (Exception ex) {
			ex.printStackTrace();
			return null;
		} finally {
			// 释放资源
			closeSrc(rs,stmt,conn);

		}
	}
	// 释放资源
	private void closeSrc(ResultSet rs,PreparedStatement stmt,Connection conn)
	{
		if (rs != null) {
			try {
				rs.close();
				rs = null;
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
		// 
		if (stmt != null) {
			try {
				stmt.close();
				stmt = null;
			} catch (Exception ex) {
				ex.printStackTrace();
			}
		}
	}
	

}
