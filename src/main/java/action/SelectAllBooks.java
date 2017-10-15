package action;

import java.util.LinkedList;
import java.util.List;


import mysqlcon.*;
import model.*;

public class SelectAllBooks {
	private List<Message> books = new LinkedList<Message>();
	
	public List<Message> getBooks() {
		return books;
	}

	public void setBooks(List<Message> books) {
		this.books = books;
	}

	public String execute() {
		MySQL sql = new MySQL();
		for (Book book : sql.selectAllBooks()) {
			Message temp = new Message();
			temp.setBook(book);
			books.add(temp);
		}
		sql.close();
		return "success";
	}
	
	
	
}
