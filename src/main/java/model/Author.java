package model;

public class Author {
	private int AuthorID;
	private String name;
	private int age;
	private String country;
	
	public void setID(int id) {
		this.AuthorID = id;
	}
	
	public int getID() {
		return this.AuthorID;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setAge(int age) {
		this.age = age;
	}
	
	public int getAge() {
		return this.age;
	}
	
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getCountry() {
		return this.country;
	}
	
	public void set(
			String name,
			int age,
			String country) {
		this.name = name;
		this.age = age;
		this.country = country;
	}
	
	public void print() {
		System.out.print(String.format("Author:\n"+
				"    AuthorID %d\n" +
				"    Name     %s\n" +
				"    Age      %d\n" +
				"    Country  %s\n", AuthorID, name, age, country));
	}
}
