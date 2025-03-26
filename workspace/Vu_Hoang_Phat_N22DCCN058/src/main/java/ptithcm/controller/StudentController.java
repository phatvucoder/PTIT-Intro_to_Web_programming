package ptithcm.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import ptithcm.bean.Student;

@Controller
@RequestMapping("/")
public class StudentController {

	@RequestMapping("bai1")
	public String bai1(Model model) {
		Student sv1 = new Student("Dương Hóa Ca Ca", 9.0, "Độc cô cầu bại", "images/DuongQuaCa.jpg");
		Student sv2 = new Student("Quốc tính Ca Ca", 5.0, "Giáng Long Thập Bát Chưởng", "images/QuachTinhCaCa.jpg");
		Student sv3 = new Student("Tào Lão Đại", 4.0, "Binh tháp Tôn Tẫn", "images/TaoLaoDai.jpg");

		List<Student> list = new ArrayList<>();
		list.add(sv1);
		list.add(sv2);
		list.add(sv3);

		model.addAttribute("students", list);

		return "bai1";
	}
}