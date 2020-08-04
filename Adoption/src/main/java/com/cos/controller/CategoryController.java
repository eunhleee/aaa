package com.cos.controller;

import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.domain.CategoryVO;
import com.cos.service.CategoryService;

@Controller
public class CategoryController {

	@Inject
	private CategoryService ctService;
	
	@RequestMapping(value = {"/","/index"}, method = RequestMethod.GET)
	public String index(Model model) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		return "index";
	}
	
	@RequestMapping(value = "/categoryWriteForm", method = RequestMethod.GET)
	public String categoryWrite(Model model) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		return "category/categoryWriteForm";
	}
	
	@RequestMapping(value = "/categoryInsert", method = RequestMethod.GET)
	public String categoryInsert(CategoryVO category)  throws Exception{
		ctService.insert(category);
		return "redirect:index";
	}

	@RequestMapping(value = "/categoryUpdateForm", method = RequestMethod.GET)
	public String categoryUpdate(Model model,
			@RequestParam("kind1") int ctGubun1,
			@RequestParam("kind2") int ctGubun2,
			@RequestParam("kind3") String ctGubun3) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		
		model.addAttribute("ctGubun1", ctGubun1);
		model.addAttribute("ctGubun2", ctGubun2);
		model.addAttribute("ctGubun3", ctGubun3);
		return "category/categoryUpdateForm";
	}
	
	@RequestMapping(value = "/categoryUpdate", method = RequestMethod.GET)
	public String categoryUpdate(CategoryVO category)  throws Exception{
		ctService.update(category);
		return "redirect:index";
	}
	
	@RequestMapping(value = "/categoryDelete", method = RequestMethod.GET)
	public String categoryDelete(Model model,
			@RequestParam("ctNum") int ctNum) throws Exception{
		ctService.delete(ctNum);
		return "redirect:index";
	}
}
