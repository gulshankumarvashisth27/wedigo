package wedigo.Model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class WeddingHall {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	private String name;
	private String price;
	private String contact;
	private String address;
	
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
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public WeddingHall(int id, String name, String price, String contact, String address) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.contact = contact;
		this.address = address;
	}
	public WeddingHall() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "WeddingHall [id=" + id + ", name=" + name + ", price=" + price + ", contact=" + contact + ", address="
				+ address + "]";
	}
	
	
	
}
