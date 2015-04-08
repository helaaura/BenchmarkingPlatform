package org.enis.benchmarkCreator.controller;

import java.io.IOException;
import java.util.Locale;

import org.enis.benchmarkCreator.model.Rater;
import org.enis.benchmarkCreator.service.RaterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class GeneralController {
	
	private RaterService raterService;

	@Autowired(required = true)
	@Qualifier(value = "raterService")
	public void setRaterService(RaterService raterService) {
		this.raterService = raterService;
	}

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {

		return "login";
	}
	
	@RequestMapping(value = "/loginContent", method = RequestMethod.GET)
	public String loginContent(Locale locale, Model model) {

		return "login-content";
	}
	
	@RequestMapping(value = "/menu", method = RequestMethod.GET)
	public String menu(Locale locale, Model model) {

		return "menu";
	}

	@RequestMapping(value = "/content", method = RequestMethod.GET)
	public String content(Locale locale, Model model) {

		return "content";
	}
	
	@RequestMapping(value = "/login_json", method = RequestMethod.POST)
	public @ResponseBody String loginJSON(@RequestBody Rater user) {

		System.out.println(user);
		//this.raterService.addRater(user);

		ObjectMapper mapper = new ObjectMapper();
		
		try {
			return mapper.writeValueAsString(user);
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



}
