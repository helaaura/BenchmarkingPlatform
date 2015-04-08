package org.enis.benchmarkCreator.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BenchmarkTypeController {

	@RequestMapping(value = "/type/add", method = RequestMethod.GET)
	public String addSettings(Locale locale, Model model) {

		return "add_benchmark_type";
	}

}
