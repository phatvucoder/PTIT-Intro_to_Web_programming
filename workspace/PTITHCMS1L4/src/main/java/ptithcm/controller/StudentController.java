package ptithcm.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.com.bean.Student;

@Controller
@RequestMapping("/student/")
public class StudentController {

	@Autowired
	ServletContext application;

	@RequestMapping("bai1")
//	public String index(HttpServletRequest request, HttpSession session) {
//		application.setAttribute("name", "Huỳnh Trung Trụ");
//		application.setAttribute("level", 2);
//
//		session.setAttribute("name", "Phan Quang Công");
//		session.setAttribute("level", 4);
//
//		request.setAttribute("name", "Nguyễn Bá Hoàng");
//		request.setAttribute("level", 3);
//
//		session.setAttribute("salary", 1000);
//		request.setAttribute("photo", "images/robot.png");
//
//		return "student/bai1";
//	}

	public String index(HttpServletRequest request, HttpSession session) {
		// ServletContext
		application.setAttribute("name1", "Huỳnh Trung Trụ");
		application.setAttribute("level1", 2);
		application.setAttribute("photo1", "images/user1.jpg");

		// HttpSession
		session.setAttribute("name2", "Trịnh Thanh Bình");
		session.setAttribute("photo2", "images/user2.jpg");
		session.setAttribute("level2", 4);
		session.setAttribute("salary", 1000);

		// HttpServletRequest
		request.setAttribute("name3", "Phan Quang Công");
		request.setAttribute("photo3", "images/user3.jpg");
		request.setAttribute("level3", 3);

		return "student/bai1";
	}

	@RequestMapping("index2")
	public String index2(ModelMap model) {
		Student sv1 = new Student("Phạm Minh Tuấn", 5.5, "Ứng dụng phần mềm");
		Student sv2 = new Student("Nguyễn Thị Kiều Oanh", 9.5, "Thiết kế trang web");
		Student sv3 = new Student("Lê Phạm Tuấn Kiệt", 3.5, "Thiết kế trang web");

		List<Student> list = new ArrayList<>();
		list.add(sv2);
		list.add(sv3);

		Map<String, Student> map = new HashMap<>();
		map.put("OanhNTK", sv2);
		map.put("KietLPT", sv3);

		model.addAttribute("bean", sv1);
		model.addAttribute("list", list);
		model.addAttribute("map", map);

		return "student/index2";
	}
}
