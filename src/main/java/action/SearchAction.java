package action;

import java.util.LinkedList;
import java.util.List;


import mysqlcon.*;
import model.*;

public class SearchAction {
	private String searchQuery;
	private List<Message> results = new LinkedList<Message>();
	
	public String execute() {
		MySQL sql = new MySQL();
		for (Book book : sql.select(searchQuery)) {
			Message temp = new Message();
			temp.setBook(book);
			temp.setAuthor(sql.selectAuthor(book.getAuthorID()));
			int index = -1;
			for (Message mes : results)
				if (mes.equal(temp)) {
					index = 1;
					break;
				}
			if (index == -1)
				results.add(temp);
		}
		sql.close();
		return "success";
	}
	
	public void setResults(List<Message> results) {
		this.results = results;
	}
	
	public List<Message> getResults() {
		return this.results;
	}
	
	public String getSearchQuery() {
		return this.searchQuery;
	}
	
	public void setSearchQuery(String searchQuery) {
		this.searchQuery = searchQuery;
	}
}
