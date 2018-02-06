package com.project.template;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.project.template.service.Category;
import com.project.template.service.CategoryDao;

@Controller
public class IndexController {
	@Autowired
	CategoryDao categoryDao;
	
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String indexCall(Model model) {
		List<Category> list = categoryDao.selectCategoryList();
		model.addAttribute("list", list);
		return "index";
	}
	
	@RequestMapping(value="/template", method=RequestMethod.GET)
	public String templateCall() {
		return "template";
	}
}
