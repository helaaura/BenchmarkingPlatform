package org.enis.Benchmark.Controller;

import org.enis.Benchmark.Model.Rater;
import org.enis.Benchmark.Service.RaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class RaterController {

	private RaterService raterService;

	 @Autowired(required=true)
	    @Qualifier(value="raterService")

	public void setRaterService(RaterService raterService) {
		this.raterService = raterService;
	}
	 
	 //For add and update person both
    @RequestMapping(value= "/rater/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("rater") Rater rater){
         
        if(rater.getIdRater() == 0){
            //new person, add it
            this.raterService.addRater(rater);
        }else{
            //existing person, call update
            this.raterService.updateRater(rater);
        }
         
        return "redirect:/raters";
         
    }
    //to test JSON 
    @RequestMapping(value = "/testJSON", method = RequestMethod.POST)	
    public  @ResponseBody String saveCompany_JSON( @RequestBody Rater rater )   {		
    	
    	return "JSON: The rater name: " + rater.getFirstName() + ", email: " + rater.getAdressMail();
    }
}
