package com.websystem.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.websystem.spring.model.Person;
import com.websystem.spring.service.PersonService;

@Controller
public class PersonController {

	private PersonService personService;

	// private AuthService authenticateService;

	@Autowired(required = true)
	@Qualifier(value = "personService")
	public void setPersonService(PersonService ps) {
		this.personService = ps;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView home() {
		return new ModelAndView("home");
	}

	@RequestMapping(value = "/logincheck", method = RequestMethod.GET)
	public ModelAndView logincheck() {
		return new ModelAndView("logincheck");
	}

	@RequestMapping(value = "/persons", method = RequestMethod.GET)
	public String listPersons(Model model) {
		model.addAttribute("person", new Person());
		model.addAttribute("listPersons", this.personService.listPersons());
		return "afterregistration";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String register(Model model) {
		model.addAttribute("person", new Person());
		model.addAttribute("listPersons", this.personService.listPersons());
		return "register";
	}

	// For add and update person both
	@RequestMapping(value = "/person/add", method = RequestMethod.POST)
	public String addPerson(@ModelAttribute("person") Person p) {

		/* if(p.getStudent_id() == null){ */
		// new person, add it
		this.personService.addPerson(p);
		/*
		 * }else{ //existing person, call update this.personService.updatePerson(p); }
		 */
		return "success";
	}

	@RequestMapping(value = "edit/person/add", method = RequestMethod.POST)
	public String updatePerson(@ModelAttribute("person") Person p) {

		/* if(p.getStudent_id() == null){ */
		// new person, add it
		this.personService.updatePerson(p);
		/*
		 * }else{ //existing person, call update this.personService.updatePerson(p); }
		 */
		return "success";
	}

	@RequestMapping("/remove/{getStudent_id}")
	public String removePerson(@PathVariable("getStudent_id") String getStudent_id) {
		this.personService.removePerson(getStudent_id);
		return "redirect:/persons";
	}

	@RequestMapping("/edit/{getStudent_id}")
	public String editPerson(@PathVariable("getStudent_id") String getStudent_id, Model model) {
		model.addAttribute("person", this.personService.getPersonById(getStudent_id));
		model.addAttribute("listPersons", this.personService.listPersons());
		return "person";
	}

	@RequestMapping(value = "/validate", method = RequestMethod.POST)
	public String validateUsr(@RequestParam("student_id") String student_id, Model model) {
		boolean isValid = this.personService.validate(student_id);
		if (isValid) {
			model.addAttribute("person", this.personService.getPersonById(student_id));
			return "viewPersonProfile";
		} else
			return "redirect:/home";
	}

}
