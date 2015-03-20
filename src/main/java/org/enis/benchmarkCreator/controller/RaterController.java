package org.enis.benchmarkCreator.controller;

import org.enis.benchmarkCreator.model.Rater;
import org.enis.benchmarkCreator.service.RaterService;
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

	public void setRaterService(RaterService raterService) {
		this.raterService = raterService;
	}
	 
	 //For add and update person both
	    @RequestMapping(value= "/rater/add", method = RequestMethod.GET)
	    public String addRater(@ModelAttribute("rater") Rater rater){
	         
	        if(rater.getIdRater() == 0){
	            //new person, add it
	            this.raterService.addRater(rater);
	        }else{
	            //existing person, call update
	            this.raterService.updateRater(rater);
	        }
	         
	        return "redirect:/raters";
	         
	    }
}
