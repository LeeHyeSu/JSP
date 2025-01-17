package jspbook.ch07.pr03;

public class Movie {
	private String title;
	private String director;
	private String date;
	
	public String getTitle() {
		return title;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getDirector() {
		return director;
	}
	
	public void setDirector(String director) {
		this.director = director;
	}
	
	public String getDate() {
		return date;
	}
	
	public void setDate(String date) {
		this.date = date;
	}
	
	public String toString() {
		String str = "";
		
		str += "<tr align=center><td>" + getTitle() + "</td>";
		str += "<td>" + getDirector() + "</td>";
		str += "<td>" + getDate() + "</td></tr>";
		
		return str;
	}
}
