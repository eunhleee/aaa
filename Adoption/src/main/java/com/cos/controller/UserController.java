package com.cos.controller;

import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cos.domain.UserVO;
import com.cos.service.CategoryService;
import com.cos.service.RequestService;
import com.cos.service.UserService;

@Controller
public class UserController {

	@Inject
	private CategoryService ctService;
	@Inject
	private UserService userService;
	@Inject
	private RequestService requestService;
	
	@RequestMapping(value = "/userLoginForm", method = RequestMethod.GET)
	public String userLoginForm(Model model) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun1(4));
		return "user/userLoginForm";
	}
	
	@RequestMapping(value = "/userJoinForm", method = RequestMethod.GET)
	public String userJoinForm(Model model, Locale locale) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun1(4));
		return "user/userJoinForm";
	}
	
	@RequestMapping(value = "/userJoin", method = RequestMethod.POST)
	public String userJoin(UserVO user) throws Exception{
		userService.insert(user);
		return "redirect:index";
	}
	
	@RequestMapping(value = "/userLogin", method = RequestMethod.POST)
	public String userLogin(UserVO user,HttpServletRequest req) throws Exception{
		
		int cnt = userService.login(user);
		HttpSession session = req.getSession();
		if(cnt==1) {
			user = userService.select(user.getId());
			session.setAttribute("userID", user.getId());
			session.setAttribute("userName", user.getName());
			session.setAttribute("userEmail", user.getEmail());
			session.setAttribute("userGrade", user.getGrade());
			return "redirect:index";
		}
		else {
			session.setAttribute("notice", "*아이디와 비밀번호를 다시 확인해주세요.");
			return "redirect:userLoginForm";
		}
	}
	
	@RequestMapping(value = "/userLogout", method = RequestMethod.GET)
	public String userLogout(HttpServletRequest req) {
		req.getSession().invalidate();
		return "redirect:index";
	}
	
	@RequestMapping(value="/myPage")
	public String myPage(HttpServletRequest req,Model model) {
		HttpSession session=req.getSession();
		model.addAttribute("userID", req.getSession());
		return "mypage/checkPw";
	}
	
	@RequestMapping(value="/checkPw",method=RequestMethod.POST)
	public String checkPw(@RequestParam("checkPwText") String chkPw,
			@RequestParam("userID") String userID,
			@RequestParam("pageValue") String pageValue,HttpServletRequest req,Model model) throws Exception {
		UserVO user=userService.select(userID);
		if(user.getPw().equals(chkPw)) {
			if(pageValue.equals("checkPw")) {
				model.addAttribute("user", user);
				return "mypage/changeMyValue";
			}
			else {
				userService.delete(userID);
				for (int num : requestService.myList(userID)) {
					requestService.delete(num);
				}
				req.getSession().invalidate();
				return "redirect:index";
			}
		}
		else {
			HttpSession session = req.getSession();
			session.setAttribute("warning", "*비밀번호가 일치하지 않습니다.");
			return "redirect:"+pageValue;
		}
	}
	
	
	  @RequestMapping(value="/changeMyValue") 
	  public String changeMyValue(UserVO user,HttpServletRequest req,Model model) throws Exception {
		 int cnt= userService.update(user);
		 if(cnt==1) {
			 	HttpSession session = req.getSession();
				session.setAttribute("notice", "*수정되었습니다.");
				UserVO vo=userService.select(user.getId());
				model.addAttribute("user", vo);
		 }
			 return "mypage/changeMyValue"; 
	  }
	  
	  
	 @RequestMapping(value="/secession")
	 public String secession() throws Exception {
				return "mypage/secession";
	 }
	 
	 @RequestMapping(value="/userForgot")
	 public String userForgot() throws Exception{
		 	return "user/userForgotIdPwForm";
	 }
	 
	 @RequestMapping(value="/findid")
	 public String findid(@RequestParam("email") String email,HttpServletRequest req) throws Exception {
		 HttpSession session=req.getSession();
		 String msg="*일치하는 정보가 없습니다.";
		 System.out.println(userService.findid(email));
		 if(userService.findid(email)!=null) {
			 msg="사용하고 계시는 아이디는 \'"+userService.findid(email)+"\' 입니다.";
		 }
		 session.setAttribute("notice", msg);
		return "redirect:userForgot";
	 }
	 
	 @RequestMapping(value="/findpw")
	 public String findpw(UserVO user,HttpServletRequest req) throws Exception {
		 HttpSession session=req.getSession();
		 String msg="*일치하는 정보가 없습니다.";
		 System.out.println(userService.findpw(user));
		 if(userService.findpw(user)>0) {
			 session.setAttribute("userID", user.getId());
			 return "user/newPwForm"; 
		 }
		 
		 else{
			 session.setAttribute("notice", msg);
			 return "redirect:userForgot";
		 }
	 }
	 
	 @RequestMapping(value="/newpw",method=RequestMethod.POST)
	 public String newpw(@RequestParam("newpw") String newpw, 
						 @RequestParam("confirmpw") String confirpw,
						 @RequestParam("id") String id,
						 HttpServletRequest req) throws Exception {
		 HttpSession session=req.getSession();
		 UserVO user=new UserVO();
		 user.setId(id);
		 user.setPw(newpw);
		 if(newpw.equals(confirpw)) {
			 userService.newpw(user);
			 req.getSession().invalidate();
			 return "redirect:userLoginForm";
		 }
		 else  {
			 session.setAttribute("notice","*비밀번호가 일치하지 않습니다.");
			 return "user/newPwForm";
		 }
	 }

}





