package action;

import model.*;
import mysqlcon.*;

public class SelectAction {
	private String ISBN;
	private Book book;
	private Author author;
	
	public String getISBN() {
		return ISBN;
	}
	public void setISBN(String iSBN) {
		ISBN = iSBN;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public Author getAuthor() {
		return author;
	}
	public void setAuthor(Author author) {
		this.author = author;
	}
	
	public String execute() {
		MySQL sql = new MySQL();
		book = sql.selectBook(ISBN);
		author = sql.selectAuthor(book.getAuthorID());
		sql.close();
		return "success";
	}
}
