package ptithcm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import ptithcm.bean.Mailer;

@Controller
@RequestMapping("/mailer2/")
public class Mailer2Controller {

	@Autowired
	Mailer mailer;

	@RequestMapping("form")
	public String index() {
		return "mailer/form";
	}

	@RequestMapping("send")
	public String send(ModelMap model, @RequestParam("from") String from, @RequestParam("to") String to,
			@RequestParam("subject") String subject, @RequestParam("body") String body) {
		try {
			// Gửi mail bằng Mailer
			mailer.send(from, to, subject, body);

			model.addAttribute("message", "Gửi email thành công !");
		} catch (Exception ex) {
			model.addAttribute("message", "Gửi email thất bại !");
		}
		return "mailer/form";
	}
}