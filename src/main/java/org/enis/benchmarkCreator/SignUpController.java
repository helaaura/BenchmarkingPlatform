package org.enis.benchmarkCreator;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SignUpController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping(value = "/rater/sign_up", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome rater/sign_up! The client locale is {}.", locale);
				
		return "sign_up";
	}

}
