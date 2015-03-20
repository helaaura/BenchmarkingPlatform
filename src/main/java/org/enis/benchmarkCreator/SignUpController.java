package org.enis.benchmarkCreator;

import java.util.Locale;

import org.enis.benchmarkCreator.controller.RaterController;
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

	
	@RequestMapping(value = "/testJSON", method = RequestMethod.GET)
	public ModelAndView httpServicePostJSONDataExample( ModelMap model ) {
		return new ModelAndView("sign_up");
	}
	
	
}
