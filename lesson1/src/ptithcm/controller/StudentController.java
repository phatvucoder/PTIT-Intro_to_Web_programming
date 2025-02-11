package ptithcm.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class StudentController {
	@RequestMapping(value="/student", method=RequestMethod.GET)
	public String showForm() {
		return "student/form";
	}
	
	@RequestMapping(value="/student", method=RequestMethod.POST)
	public String saveData(HttpServletRequest request) {
		String name = request.getParameter("name");
		String mark = request.getParameter("mark");
		String major = request.getParameter("major");
		
		request.setAttribute("name", name);
		request.setAttribute("mark", mark);
		request.setAttribute("major", major);
		
		return "student/success";
	}
}