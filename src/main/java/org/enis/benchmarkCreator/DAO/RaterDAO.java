package org.enis.benchmarkCreator.DAO;

import java.util.List;

import org.enis.benchmarkCreator.model.Rater;

public interface RaterDAO {
	public void addRater(Rater rater);

	public void updatePerson(Rater rater);

	public List<Rater> listRaters();

	public Rater getRaterById(int id);

	public void removeRater(int id);

}
