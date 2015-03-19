package org.enis.BenchmarkCreator.DAO;

import java.util.List;

import org.enis.BenchmarkCreator.Model.Rater;

public interface RaterDAO {
	 public void addRater(Rater rater);
	    public void updatePerson(Rater rater);
	    public List<Rater> listRaters();
	    public Rater getRaterById(int id);
	    public void removeRater(int id);

}
