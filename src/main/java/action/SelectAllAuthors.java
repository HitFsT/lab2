package action;

import java.util.LinkedList;
import java.util.List;


import mysqlcon.*;
import model.*;

public class SelectAllAuthors {
	private List<Message> authors = new LinkedList<Message>();
	
	

	public List<Message> getAuthors() {
		return authors;
	}



	public void setAuthors(List<Message> authors) {
		this.authors = authors;
	}



	public String execute() {
		MySQL sql = new MySQL();
		for (Author author : sql.selectAllAuthors()) {
			Message temp = new Message();
			temp.setAuthor(author);
			authors.add(temp);
		}
		sql.close();
		return "success";
	}
}
