package com.cos.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cos.domain.RequestDTO;
import com.cos.service.CategoryService;
import com.cos.service.RequestService;

@Controller
public class RequestController {
	//root-context.xml에서 생성된 객체가 주입
	@Inject
	private CategoryService ctService;
	
	
	@Inject
	private RequestService requestService;
	
	@RequestMapping(value = "/adoptRequest", method = RequestMethod.GET)
	public String adoptRequest(Model model) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun1(4));
		return "admin/adoptRequest";
	}
	
	@RequestMapping(value = "/request", method = RequestMethod.POST)
	public String request(RequestDTO user, 
			HttpServletRequest req) throws Exception{
			requestService.insert(user);
			return "admin/adoptRequest";
			
	}
	
	@RequestMapping(value="/readRequest", method=RequestMethod.GET)
	public String readRequest(RequestDTO dto,Model model) throws Exception {
		 List<RequestDTO> list = requestService.list(dto);
		model.addAttribute("list", list);
		return "admin/readRequest";
	}

}







