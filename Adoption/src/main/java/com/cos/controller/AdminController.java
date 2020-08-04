package com.cos.controller;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.service.CategoryService;

@Controller
public class AdminController {
	//root-context.xml에서 생성된 객체가 주입
	@Inject
	private CategoryService ctService;
	
	@Inject
	private JavaMailSender mailSender;
	
	@RequestMapping(value = "/adminContact", method = RequestMethod.GET)
	public String adminContact(Model model) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		return "admin/adminContact";
	}
	@RequestMapping(value = "/mailSend", method = RequestMethod.POST)
	public String mailSend(@RequestParam("name") String name, 
			@RequestParam("email") String fromEmail, 
			@RequestParam("phone") String phone, 
			@RequestParam("message") String message,
			@RequestParam("adminEmail") String toEmail,
			Model model) throws Exception{
		final MimeMessagePreparator preparator = new MimeMessagePreparator() { 
			@Override public void prepare(MimeMessage mimeMessage) throws Exception { 
				final MimeMessageHelper helper = 
						new MimeMessageHelper(mimeMessage, true, "UTF-8"); 
		helper.setFrom(fromEmail); 
		helper.setTo(toEmail); 
		helper.setSubject(name +" GET IN TOUCH"); 
		helper.setText(message, true); } };
		mailSender.send(preparator);

		return "index";
	}

}