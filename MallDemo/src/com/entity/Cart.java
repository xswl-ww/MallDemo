package com.entity;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class Cart {
	
	private HashMap<Items,Integer> itemsInCart;// hashMap，以key value方式存储，key:商品对象，value:数量
	private double totalPrice;//产品总价
	
	public Cart(){
		itemsInCart=new HashMap<Items, Integer>();
		totalPrice=0.0;
	}

	public HashMap<Items, Integer> getItemsInCart() {
		return itemsInCart;
	}

	public void setItemsInCart(HashMap<Items, Integer> itemsInCart) {
		this.itemsInCart = itemsInCart;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
/***
 * 添加商品至购物车
 * @param item 商品
 * @param num 数量
 * @return
 */
	public boolean addItemsInCart(Items item,int num){
		//判断购物车中是否已经存在该商品
		//itemsInCart.get(item) 
		//如果已经存在该商品，则修改数量
		if(itemsInCart.containsKey(item)){
			itemsInCart.put(item, itemsInCart.get(item)+num);
		}
		else{//第一次添加该商品
			itemsInCart.put(item, num);//添加至购物车集合
		}
		 calTotalPrice();
		return true;
	}
	/**
	 * 移除购物车中的商品
	 * @param item
	 * @return
	 */
	public boolean removeItemsFromCart(Items item){
		
		int aaa=itemsInCart.remove(item);//remove
		 calTotalPrice();//重新计算总价
		return true;
	}
	/**
	 * 计算总金额
	 * @return
	 */
	public double calTotalPrice(){
		double sum=0.0;
		Set<Items> keys=itemsInCart.keySet();//获取购物车中所有的商品对象集合
		Iterator<Items> it=keys.iterator();//迭代器
		//通过迭代器遍历购物车中所有的商品，并计算总价
		while(it.hasNext()){
			Items item=it.next();
			sum+=item.getPrice()*itemsInCart.get(item);
		}
		this.setTotalPrice(sum);//设置总金额
		return this.getTotalPrice();
	}
	

}
