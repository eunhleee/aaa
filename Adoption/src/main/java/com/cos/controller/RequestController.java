package com.cos.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.domain.PageDTO;
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
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		return "admin/adoptRequest";
	}
	
	@RequestMapping(value = "/request", method = RequestMethod.POST)
	public String request(RequestDTO user, 
			HttpServletRequest req) throws Exception{
			requestService
			.insert(user);
			return "admin/adoptRequest";
	}
	
	@RequestMapping(value="/requestList", method=RequestMethod.GET)
	public String requestList(Model model
							, @RequestParam(required = false, defaultValue = "1") int page
							, @RequestParam(required = false, defaultValue = "1") int range) throws Exception {
		//전체 게시글 개수
		int listCnt = requestService.getRequestListCnt();
		//Pagination 객체생성
		PageDTO dto = new PageDTO();
		dto.pageInfo(page, range, listCnt);
		model.addAttribute("pagination", dto);
		model.addAttribute("list", requestService.paging(dto));
		return "admin/requestList";
	}
	
	@RequestMapping(value="/readRequest",method=RequestMethod.GET)
	public String requestRead(@RequestParam("num") int num,Model model) throws Exception{
			RequestDTO list = requestService.read(num);
			model.addAttribute("list", list);
			return "admin/readRequest";
	}
	
	@RequestMapping(value="/deleteRequest",method=RequestMethod.GET)
	public String deleteRequest(@RequestParam("num") int num) throws Exception{
		requestService.delete(num);
		return "redirect:requestList.do";
	}
	
	@RequestMapping(value="/updatePage")
	public String updatePage(@RequestParam("num") int num,Model model) throws Exception{
		RequestDTO list=requestService.read(num);
		model.addAttribute("list", list);
		return "mypage/updateMyRequest";
	}
	
	@RequestMapping(value="/updateRequest",method=RequestMethod.POST)
	public String updateRequest(RequestDTO dto) throws Exception{
		requestService.update(dto);
		System.out.println(dto.getName()+" "+dto.getNum());
		return "redirect:requestList.do";
	}
	
	@RequestMapping(value="/mylist")
	public String mylist(HttpServletRequest req,Model model
			, @RequestParam(required = false, defaultValue = "1") int page
			, @RequestParam(required = false, defaultValue = "1") int range) throws Exception {
		 HttpSession session=req.getSession();
		 String id=session.getAttribute("userID").toString();
		 
		
		 int listCnt=requestService.getMyRequestListCnt(id);
		 PageDTO dto=new PageDTO();
		 dto.setId(id);
		 dto.pageInfo(page, range, listCnt);
		 
		 List<RequestDTO> mylist = requestService.myPaging(dto);
		 System.out.println(mylist.size());
		 model.addAttribute("mylist", mylist);
		 return "mypage/myRequestList";
	}  
	
	@RequestMapping(value="/addComment.do")
    @ResponseBody
    public String ajax_addComment(@ModelAttribute("dto") RequestDTO dto, HttpServletRequest req) throws Exception{
        
        HttpSession session = req.getSession();
        
        try{
        
        	dto.setWriter(session.getAttribute("userID").toString());        
            requestService.addComment(dto);
            
        } catch (Exception e){
            e.printStackTrace();
        }
        
        return "success";
    }
	 @SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value="/commentList.do", produces="application/json; charset=utf8")
	    @ResponseBody
	    public ResponseEntity ajax_commentList(@ModelAttribute("dto") RequestDTO dto, HttpServletRequest req) throws Exception{
	        
	        HttpHeaders responseHeaders = new HttpHeaders();
	        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();
	        
	        // 해당 게시물 댓글
	        List<RequestDTO> commentVO = requestService.selectRequestNum(dto);
	       
	        if(commentVO.size() > 0){
	            for(int i=0; i<commentVO.size(); i++){
	                HashMap hm = new HashMap();
	                hm.put("conum", commentVO.get(i).getConum());
	                hm.put("comment", commentVO.get(i).getComment());
	                hm.put("writer", commentVO.get(i).getWriter());
	                hm.put("codate",commentVO.get(i).getCodate());
	                
	                hmlist.add(hm);
	            }
	            
	        }
	        
	        JSONArray json = new JSONArray(hmlist);        
	        return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);
	        
	    }
	 
	 @RequestMapping(value="/deleteComment.do")
	    @ResponseBody
	    public String ajax_deleteComment(@RequestParam("conum") int conum, HttpServletRequest req) throws Exception{
	        
	        try{
	        	
	            requestService.deleteComment(conum);
	        } catch (Exception e){
	            e.printStackTrace();
	        }
	        
	        return "success";
	    }
	 
	 @RequestMapping(value="/modifyComment.do")
	    @ResponseBody
	    public String ajax_modifyComment(@RequestParam("conum") int conum ,@RequestParam("comment") String comment, HttpServletRequest req) throws Exception{
			 Date time = new Date();
			 SimpleDateFormat format1 = new SimpleDateFormat ( "yyyy-MM-dd");
			 RequestDTO dto=new RequestDTO();
			 dto.setConum(conum);
			 dto.setComment(comment);
			 dto.setCodate(format1.format(time));
	        try{ 
	            requestService.modifyComment(dto);
	            
	        } catch (Exception e){
	            e.printStackTrace();
	        }
	        
	        return "success";
	    }

}







