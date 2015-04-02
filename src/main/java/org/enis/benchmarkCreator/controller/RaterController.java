package org.enis.benchmarkCreator.controller;

import java.io.IOException;
import java.util.Locale;

import org.enis.benchmarkCreator.model.Rater;
import org.enis.benchmarkCreator.service.RaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class RaterController {
	
	private RaterService raterService;

	@Autowired(required = true)
	@Qualifier(value = "raterService")
	public void setRaterService(RaterService raterService) {
		this.raterService = raterService;
	}
 
	@RequestMapping(value = "/rater/sign_up", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "sign_up";
	}

	@RequestMapping(value = "/saverater_json", method = RequestMethod.POST)
	public @ResponseBody String saveRaterJSON(@RequestBody Rater rater) {

		System.out.println(rater);
		this.raterService.addRater(rater);

		ObjectMapper mapper = new ObjectMapper();
		
		try {
			return mapper.writeValueAsString(rater);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "{}";
	}

	// For add and update person both
	@RequestMapping(value = "/rater/add", method = RequestMethod.GET)
	public String addRater(@ModelAttribute("rater") Rater rater) {

		// if(rater.getIdRater() == 0){
		// new person, add it
		Rater rater1=new Rater();
		rater1.setFirstName(rater.getFirstName());
		rater1.setLastName(rater.getLastName());
		rater1.setEmail(rater.getEmail());
		rater1.setLogin(rater.getLogin());
		rater1.setPassword(rater.getPassword());
		this.raterService.addRater(rater1);
		// }else{
		// existing person, call update
		// this.raterService.updateRater(rater);
		// }

		return "redirect:/raters";

	}
}
