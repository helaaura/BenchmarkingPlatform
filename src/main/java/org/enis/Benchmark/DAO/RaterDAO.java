package org.enis.Benchmark.DAO;

import java.util.List;

import org.enis.Benchmark.Model.Rater;

public interface RaterDAO {
	public void addRater(Rater rater);
	public void updateRater(Rater rater);
    public List<Rater> listRaters();
    public Rater getRaterById(int id);
    public void removeRater(int id);

}
