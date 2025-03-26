package ptithcm.controller;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import ptithcm.bean.MailInfo;

@Controller
public class MailController {
	@Autowired
	private JavaMailSender mailSender;

	@RequestMapping(value = "/bai2.htm", method = RequestMethod.GET)
	public String showForm(Model model) {
		model.addAttribute("mailInfo", new MailInfo());
		return "bai2";
	}

	@RequestMapping(value = "/bai2.htm", method = RequestMethod.POST)
	public String sendMail(@ModelAttribute("mailInfo") MailInfo mailInfo, Model model) {
		mailInfo.setRecipientMail("trunghieu2500@gmail.com");
		String userMessage = mailInfo.getMessage();
		if (userMessage == null || userMessage.trim().isEmpty()) {
			mailInfo.setMessage("Vu_Hoang_Phat_N22DCCN058");
		}
		try {
			MimeMessage mime = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mime, true, "UTF-8");
			helper.setFrom("vhp08072004@gmail.com", mailInfo.getName());
			helper.setTo(mailInfo.getRecipientMail());
			String subject = mailInfo.getSubject();
			if (subject == null || subject.trim().isEmpty()) {
				subject = "No Subject";
			}
			helper.setSubject(subject);
			helper.setText(mailInfo.getMessage(), false);
			MultipartFile uploadFile = mailInfo.getFile();
			if (uploadFile != null && !uploadFile.isEmpty()) {
				String fileName = uploadFile.getOriginalFilename();
			}
			mailSender.send(mime);
			model.addAttribute("message", "Gui email thanh cong!");
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("message", "Gui email that bai! Loi: " + e.getMessage());
		}
		return "bai2";
	}
}