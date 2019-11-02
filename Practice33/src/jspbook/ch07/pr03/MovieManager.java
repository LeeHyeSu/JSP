package jspbook.ch07.pr03;

import java.util.ArrayList;
import java.util.List;

public class MovieManager {
	ArrayList<Movie> movieList = new ArrayList<Movie>();
	
	public List<Movie> getMovieList() {
		return movieList;
	}
	
	public void add(Movie m) {
		movieList.add(m);
	}
}
