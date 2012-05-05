package com.example.freecomposition.models;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: romankov
 * Date: 5/5/12
 * Time: 2:22 PM
 */
public class Product {
	private int id;
	private String name;
	private int weight;
	private int price;

	private static List<Product> products = new ArrayList<Product>( Arrays.asList(
			new Product(1, "Product 1", 12, 2),
			new Product(2, "Product 2", 78, 500),
			new Product(3, "Product 3", 2, 5),
			new Product(4, "Product 4", 32, 15),
			new Product(5, "Product 5", 16, 9)
	));
	private static final int HEAVY_WEIGHT = 20;
	private static final int CHEAP_PRICE = 10;

	public Product(int id, String name, int weight, int price) {
		this.id = id;
		this.name = name;
		this.weight = weight;
		this.price = price;
	}

	public static Product find(int id){
		for (Product product : products)
			if (product.id == id)
				return product;
		return null;
	}

	public static void delete(int id){
		for (Product product : products)
			if (product.id == id) {
				products.remove(product);
				return;
			}

	}

	public static List<Product> findAll(){
		return products;
	}

	public static List<Product> findHeavy(){
		List<Product> heavy = new ArrayList<Product>();
		for (Product product : products)
			if (product.weight > HEAVY_WEIGHT)
				heavy.add(product);
		return heavy;
	}

	public static List<Product> findCheap(){
		List<Product> cheap = new ArrayList<Product>();
		for (Product product : products)
			if (product.price < CHEAP_PRICE)
				cheap.add(product);
		return cheap;
	}

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

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}
}
