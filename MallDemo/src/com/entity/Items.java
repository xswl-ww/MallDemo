package com.entity;

import java.math.BigDecimal;

public class Items {
	private int id; // 产品id
	private String name; // 产品名称
	private String origin; // 产地
	private float price; // 价格
	private int number; // 库存
	private String picture; // 图片
	private String description; // 描述

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return this.getId() + this.getName().hashCode();
	}

	@Override
	public boolean equals(Object obj) {
		// TODO Auto-generated method stub
		if (this == obj) {
			return true;
		}
		if (obj instanceof Items) {
			Items i = (Items) obj;
			if (this.getId() == i.getId() && this.getName().equals(i.getName())) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

}
