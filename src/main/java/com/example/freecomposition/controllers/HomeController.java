package com.example.freecomposition.controllers;

import com.example.freecomposition.models.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

/**
 * Created by IntelliJ IDEA.
 * User: romankov
 * Date: 5/5/12
 * Time: 2:16 PM
 */
@Controller
@RequestMapping(value = "/", method = RequestMethod.GET)
public class HomeController {

	@RequestMapping( method = RequestMethod.GET)
	public String products( ) {
		return "redirect:/products/";
	}

	@RequestMapping(value = "/products/", method = RequestMethod.GET)
	public String products( Model model) {
		return products(null, model);
	}

	@RequestMapping(value ="/products/{filter}", method = RequestMethod.GET)
	public String products(@PathVariable String filter, Model model) {
		List<Product> products;
		if ("cheap".equals(filter))
			products = Product.findCheap();
		else if ("heavy".equals(filter))
			products = Product.findHeavy();
		else
			products = Product.findAll();

		model.addAttribute("products", products);

		return "products/index";
	}

	@RequestMapping(value = "/product/{id}", method = RequestMethod.GET)
	public String view(@PathVariable int id, Model model) {
		Product product = Product.find(id);
		model.addAttribute("product", product);
		return "products/view";
	}

	@RequestMapping(value = "/product/{id}/edit", method = RequestMethod.GET)
	public String edit(@PathVariable int id, Model model) {
		Product product = Product.find(id);
		model.addAttribute("product", product);
		return "products/edit";
	}

	@RequestMapping(value = "/product/{id}/delete", method = RequestMethod.GET)
	public String delete(@PathVariable int id, Model model) {
		Product.delete(id);
		return "redirect:/products/index";
	}
}
