package ptithcm.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.bean.User;

@Transactional
@RequestMapping("/user/")
@Controller
public class UserController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping("index")
	public String index(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM User";
		Query query = session.createQuery(hql);
		List<User> list = query.list();
		model.addAttribute("users", list);
		return "user/index";
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("user", new User());
		return "user/insert";
	}
	
	@RequestMapping(value = "insert", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("user") User user) {
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    try {
	        session.save(user);
	        t.commit();
	        model.addAttribute("message", "Thêm mới thành công!");
	    } catch (Exception e) {
	        t.rollback();
	        model.addAttribute("message", "Thêm mới thất bại!");
	    } finally {
	        session.close();
	    }
	    return "user/insert";
	}

	@RequestMapping(value = "delete/{username}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("username") String username) {
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    try {
	        User user = (User) session.get(User.class, username);
	        if (user != null) {
	            session.delete(user);
	            t.commit();
	            model.addAttribute("message", "Xóa thành công!");
	        } else {
	            model.addAttribute("message", "Không tìm thấy user!");
	        }
	    } catch (Exception e) {
	        t.rollback();
	        model.addAttribute("message", "Xóa thất bại!");
	    } finally {
	        session.close();
	    }
	    return "redirect:/user/index"; 

	}
	
	@RequestMapping(value = "edit/{username}", method = RequestMethod.GET)
	public String edit(ModelMap model, @PathVariable("username") String username) {
	    Session session = factory.getCurrentSession();
	    User user = (User) session.get(User.class, username);
	    model.addAttribute("user", user);
	    return "user/edit"; // Trả về trang edit.jsp
	}

	@RequestMapping(value = "update", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("user") User user) {
	    Session session = factory.openSession();
	    Transaction t = session.beginTransaction();
	    try {
	        session.update(user);
	        t.commit();
	        model.addAttribute("message", "Cập nhật thành công!");
	    } catch (Exception e) {
	        t.rollback();
	        model.addAttribute("message", "Cập nhật thất bại!");
	    } finally {
	        session.close();
	    }
	    return "redirect:/user/index";
	}
}
