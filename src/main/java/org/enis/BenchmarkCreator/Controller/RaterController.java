package org.enis.BenchmarkCreator.Controller;

import org.enis.BenchmarkCreator.Model.Rater;
import org.enis.BenchmarkCreator.Service.RaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class RaterController {
	 private RaterService raterService;

	 @Autowired(required=true)
	    @Qualifier(value="raterService")

	public void setRaterService(RaterService rs) {
		this.raterService = rs;
	}
	 
	 //For add and update person both
	    @RequestMapping(value= "/rater/add", method = RequestMethod.POST)
	    public String addPerson(@ModelAttribute("rater") Rater r){
	         
	        if(r.getIdRater() == 0){
	            //new person, add it
	            this.raterService.addRater(r);
	        }else{
	            //existing person, call update
	            this.raterService.updateRater(r);
	        }
	         
	        return "redirect:/raters";
	         
	    }
}
