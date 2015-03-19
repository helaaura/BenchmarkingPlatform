package org.enis.Benchmark.DAO;

import java.util.List;

import org.enis.Benchmark.Model.Rater;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class RaterDAOImpl  implements  RaterDAO {
	
	 private static final Logger logger = LoggerFactory.getLogger(RaterDAOImpl.class);
	 
	    private SessionFactory sessionFactory;
	     
	    public void setSessionFactory(SessionFactory sf){
	        this.sessionFactory = sf;
	    }

	@Override
	public void addRater(Rater rater) {
		
		Session session = this.sessionFactory.getCurrentSession();
        session.persist(rater);
        logger.info("Rater saved successfully, RaterDetails="+rater);
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
