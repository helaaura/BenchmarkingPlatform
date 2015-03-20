package org.enis.benchmarkCreator.service;

import java.util.List;
import org.enis.benchmarkCreator.DAO.RaterDAO;
import org.enis.benchmarkCreator.model.Rater;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
@Service
public class RaterServiceImpl implements RaterService {
	
	private RaterDAO raterDAO;
	
	 public void setRaterDAO(RaterDAO raterDAO) {
	        this.raterDAO = raterDAO;
	    }

	  @Override
	    @Transactional
	public void addRater(Rater rater) {
		  this.raterDAO.addRater(rater);
	}

	@Override
	public void updateRater(Rater rater) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Rater> listRaters() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Rater getRaterById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeRater(int id) {
		// TODO Auto-generated method stub
		
	}
	

}
