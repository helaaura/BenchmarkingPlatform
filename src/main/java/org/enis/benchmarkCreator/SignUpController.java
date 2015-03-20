package org.enis.benchmarkCreator;

import java.util.Locale;

import org.enis.benchmarkCreator.model.Rater;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignUpController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/rater/sign_up", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome rater/sign_up! The client locale is {}.", locale);
				
		return "sign_up";
	}
	@RequestMapping(value = "/testJSON", method = RequestMethod.GET)
	public ModelAndView httpServicePostJSONDataExample( ModelMap model ) {
		return new ModelAndView("sign_up");
	}
	
	@RequestMapping(value = "/saverater_json", method = RequestMethod.POST)	
	public  @ResponseBody String saveRaterJSON( @RequestBody Rater rater )   {
		System.out.println(rater);
		return "JSON: The rater first name: " + rater.getFirstName() + ", Email : " + rater.getEmail();
	}
}
