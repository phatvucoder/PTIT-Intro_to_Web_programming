package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.bean.Product;

@Controller
@RequestMapping("/")
public class ProductController {

	@RequestMapping("bai3")
	public String bai3(ModelMap model) {
		List<Product> list = new ArrayList<>();
		list.add(new Product("Nokia Star", 1000.0, 0.05));
		list.add(new Product("Sony Experia", 5000.0, 0.00));
		list.add(new Product("Iphone 9", 1500.0, 0.10));
		list.add(new Product("Samsung Galaxy Note 10", 750.0, 0.15));

		model.addAttribute("prods", list);

		return "bai3";
	}
}