package ptithcm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.com.bean.Student;

@Controller
@RequestMapping("/student-mgr")
public class StudentMgrController {
	@RequestMapping()
	public String index(ModelMap model) {
		model.addAttribute("message", "Bạn gọi index()");
		return "student/student-mgr";
	}
	
//	@RequestMapping(params="btnInsert")
//	public String insert(ModelMap model,
//			@RequestParam("name") String name,
//			@RequestParam("mark") Double mark,
//			@RequestParam("major") String major) {
//		
//		model.addAttribute("name", name);
//		model.addAttribute("mark", mark);
//		model.addAttribute("major", major);
//		
//		return "student/success";
//	}
	
	@RequestMapping(params="btnInsert")
	public String insert(ModelMap model, Student student) {
		model.addAttribute("student", student);
		
		return "student/success";
	}
	
	@RequestMapping(params="btnUpdate")
	public String update(ModelMap model) {
		model.addAttribute("message", "Bạn gọi update()");
		return "student/student-mgr";
	}
	
	@RequestMapping(params="btnDelete")
	public String delete(ModelMap model) {
		model.addAttribute("message", "Bạn gọi delete()");
		return "student/student-mgr";
	}
	
	@RequestMapping(params="lnkEdit")
	public String edit(ModelMap model) {
		model.addAttribute("message", "Bạn gọi edit()");
		return "student/student-mgr";
	}
}
