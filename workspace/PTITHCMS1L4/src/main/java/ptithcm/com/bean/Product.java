package ptithcm.com.bean;

public class Product {
	private String name;
	private Double untiPrice;
	private Double discount;

	public Product() {
	};

	public Product(String name, Double untiPrice, Double discount) {
		this.setName(name);
		this.setDiscount(discount);
		this.setUntiPrice(untiPrice);
	}

	public Double getNewPrice() {
		return untiPrice * (1 - discount);
	}

	public Double getDiscount() {
		return discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public Double getUntiPrice() {
		return untiPrice;
	}

	public void setUntiPrice(Double untiPrice) {
		this.untiPrice = untiPrice;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
