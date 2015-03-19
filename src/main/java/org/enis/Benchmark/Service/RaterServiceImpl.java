package org.enis.Benchmark.Service;

import java.util.List;

import javax.transaction.Transactional;

import org.enis.Benchmark.DAO.RaterDAO;
import org.enis.Benchmark.Model.Rater;
import org.springframework.stereotype.Service;
@Service
public class RaterServiceImpl implements RaterService {
	
	private RaterDAO raterDAO;
	
	 public void setRaterDAO(RaterDAO raterDAO) {
	        this.raterDAO = raterDAO;
	    }

	  @Override
	    @Transactional
	public void addRater(Rater r) {
		  this.raterDAO.addRater(r);
	}

	@Override
	public void updateRater(Rater r) {
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
