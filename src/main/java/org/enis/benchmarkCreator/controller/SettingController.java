package org.enis.benchmarkCreator.controller;

import java.io.IOException;
import java.util.Locale;

import org.enis.benchmarkCreator.model.Rater;
import org.enis.benchmarkCreator.service.RaterService;
import org.enis.benchmarkCreator.service.SettingService;
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
public class SettingController {
	
	private SettingService settingService;

	/*@Autowired(required = true)
	@Qualifier(value = "raterService")
	public void setRaterService(SettingService settingService) {
		this.settingService = settingService;
	}*/

	@RequestMapping(value = "/setting/add", method = RequestMethod.GET)
	public String addSettings(Locale locale, Model model) {

		return "add_setting";
	}
	
	@RequestMapping(value = "/settings", method = RequestMethod.GET)
	public String settings(Locale locale, Model model) {

		return "settings";
	}

	@RequestMapping(value = "/test", method = RequestMethod.GET)
	public String settingConcept(Locale locale, Model model) {

		return "testTable";
	}

	
/*	@RequestMapping(value = "/saverater_json", method = RequestMethod.POST)
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
*/


}
