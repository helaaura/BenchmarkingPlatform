package org.enis.benchmarkCreator.service;

import java.util.List;

import org.enis.benchmarkCreator.model.Rater;

public interface RaterService {
	
	public void addRater(Rater r);
    public void updateRater(Rater r);
    public List<Rater> listRaters();
    public Rater getRaterById(int id);
    public void removeRater(int id);

}
