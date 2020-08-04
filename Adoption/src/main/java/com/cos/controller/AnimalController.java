package com.cos.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
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
import org.springframework.web.multipart.MultipartFile;

import com.cos.domain.AnimalVO;
import com.cos.domain.CategoryVO;
import com.cos.service.AnimalService;
import com.cos.service.CategoryService;
import com.cos.util.MyUtil;
import com.cos.util.Pagination;

@Controller
public class AnimalController {

	@Inject
	private CategoryService ctService;
	@Inject
	private AnimalService anService;
	
	@Resource(name="uploadPath")
	private String uploadPath;
	
	@Autowired
	private AnimalService AnimalServiceImpl;
	
	@RequestMapping(value="/animal/addComment.do")
	@ResponseBody
	public String ajax_addComment(@ModelAttribute("animalVO") AnimalVO animalVO, HttpServletRequest request) throws Exception{
        String a = "";
        if((String)request.getSession().getAttribute("userID")==null) {
        	a = "fail";
        } else {
		    try{
		    	animalVO.setAcId((String)request.getSession().getAttribute("userID"));
		        AnimalServiceImpl.addComment(animalVO);
		        a = "success";
		    } catch (Exception e){
		        e.printStackTrace();
		    }
        }
        return a;
    }
	@RequestMapping(value="/animal/updateComment.do")
	@ResponseBody
	public String ajax_updateComment(@RequestParam("acNum") int acNum, 
			@RequestParam("acContent") String acContent) throws Exception{
        
        try{
        	AnimalVO animal = new AnimalVO();
        	animal.setAcContent(acContent);
        	animal.setAcNum(acNum);
            AnimalServiceImpl.updateComment(animal);
            
        } catch (Exception e){
            e.printStackTrace();
        }
        
        return "success";
    }
	@RequestMapping(value="/animal/deleteComment.do")
	@ResponseBody
	public String ajax_deleteComment(@RequestParam("acNum") int acNum) throws Exception{
        
        try{
            AnimalServiceImpl.deleteComment(acNum);
            
        } catch (Exception e){
            e.printStackTrace();
        }
        
        return "success";
    }
    
    /**
     * 게시물 댓글 불러오기(Ajax)
     * @param animalVO
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/animal/commentList.do", produces="application/json; charset=utf8")
    @ResponseBody
    public ResponseEntity ajax_commentList(@ModelAttribute("animalVO") AnimalVO animalVO, HttpServletRequest request) throws Exception{
        
        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();
        
        // 해당 게시물 댓글
        List<AnimalVO> commentVO = AnimalServiceImpl.selectComment(animalVO);
        
        if(commentVO.size() > 0){
            for(int i=0; i<commentVO.size(); i++){
                HashMap hm = new HashMap();
                hm.put("acNum", commentVO.get(i).getAcNum());
                hm.put("acContent", commentVO.get(i).getAcContent());
                hm.put("acId", commentVO.get(i).getAcId());
                hm.put("acRegdate", commentVO.get(i).getAcRegdate());
                
                hmlist.add(hm);
            }
            
        }
        
        JSONArray json = new JSONArray(hmlist);        
        return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);
        
    }
	
	@RequestMapping(value = "/animalView1", method = RequestMethod.GET)
	public String animalView1(Model model, AnimalVO animal) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		
		List<AnimalVO> animalTitle = anService.selectTitle(animal.getKind2());
		model.addAttribute("animalTitle", animalTitle);
		
		if(animal.getNum() == 0 && animalTitle.size() > 0) {
			int lcMinNum = anService.selectMinNum(animal.getKind2()).getNum();
			model.addAttribute("animal", anService.select(lcMinNum));
			
		}else if(animal.getNum() == 0 && animalTitle.size() == 0) {
			
			model.addAttribute("animal", animal);
		}else {
			System.out.println("여기옴");
			model.addAttribute("animal", anService.select(animal.getNum()));
			System.out.println("여기옴2");
		}
		System.out.println("여기옴3");
		return "animal/animalView1";
	}
	
	@RequestMapping(value = "/animalView2", method = RequestMethod.GET)
	public String animalView2(Model model, AnimalVO animal) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		
		List<AnimalVO> animalTitle2 = anService.selectTitle2(animal.getKind2());
		model.addAttribute("animalTitle", animalTitle2);
		
		if(animal.getNum() == 0 && animalTitle2.size() > 0) {
			int lcMinNum = anService.selectMinNum2(animal.getKind2()).getNum();
			model.addAttribute("animal", anService.select(lcMinNum));
		}else if(animal.getNum() == 0 && animalTitle2.size() == 0) {
			model.addAttribute("animal", animal);
		}else {
			model.addAttribute("animal", anService.select(animal.getNum()));
		}
		
		return "animal/animalView2";
	}
	
	@RequestMapping(value = "/animalList", method = RequestMethod.GET)
	public String animalList(Model model,@RequestParam("kind1") int kind1,
			@RequestParam("kind2") int kind2,
			@RequestParam("kind3") String kind3,
			@RequestParam(required = false, defaultValue = "1") int page,
			@RequestParam(required = false, defaultValue = "1") int range) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		
		AnimalVO animal=new AnimalVO();
		animal.setKind1(kind1);
		animal.setKind2(kind2);
		animal.setKind3(kind3);
		
		Pagination pagination=new Pagination();
		pagination.setKind1(kind1);
		pagination.setKind2(kind2);
		pagination.setKind3(kind3);
		
		if(animal.getKind3().equals("all")) {
			int listCnt=anService.count(pagination);
			pagination.pageInfo(page, range, listCnt);
			model.addAttribute("pagination", pagination);
			List<AnimalVO> animalVO = anService.allSelect(pagination);
			model.addAttribute("animal", animalVO);
		} else {
			int listCnt=anService.count2(pagination);
			pagination.pageInfo(page, range, listCnt);
			model.addAttribute("pagination", pagination);
			List<AnimalVO> animalVO = anService.newSelect(pagination);
			model.addAttribute("animal", animalVO);
		}
		model.addAttribute("kind1", kind1);
		model.addAttribute("kind2", kind2);
		model.addAttribute("kind3", kind3);
		
		List<CategoryVO> categoryVO = ctService.categorySelect(animal);
		model.addAttribute("category", categoryVO);
		
		return "animal/animalList";
	}
	
	@RequestMapping(value = "/animalWriteForm", method = RequestMethod.GET)
	public String animalWriteForm(Model model) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		
		
		return "animal/animalWriteForm";
	}
	
	@RequestMapping(value = "/AnimalWrite", method = RequestMethod.POST)
	public String animalWrite(Model model, AnimalVO animal, MultipartFile file) throws Exception{
		String imgUploadPath = uploadPath + File.separator + "img/animal-img";
		String ymdPath = MyUtil.calcPath(imgUploadPath);
		String fileName = null;
		
		if(file != null) {
		 fileName =  MyUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath); 
		} else {
		 fileName = uploadPath + File.separator + "img/animal-img" + File.separator + "none.png";
		}

		animal.setMainImage(File.separator + "img/animal-img" + ymdPath + File.separator + fileName);
		animal.setThumbImg(File.separator + "img/animal-img" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
		anService.insert(animal);
		int anMaxNum = anService.selectMaxNum().getNum();
		return "redirect:animalView"+animal.getKind1()+"?kind1="+animal.getKind1()+"&kind2="+animal.getKind2()+"&num="+anMaxNum;
	}

	@RequestMapping(value = "/animalUpdateForm", method = RequestMethod.GET)
	public String animalUpdateForm(Model model, @RequestParam("num") int num) throws Exception{
		model.addAttribute("ctg1", ctService.selectGubun1(1));
		model.addAttribute("ctg2", ctService.selectGubun1(2));
		model.addAttribute("ctg3", ctService.selectGubun1(3));
		model.addAttribute("ctg4", ctService.selectGubun2(1));
		model.addAttribute("ctg5", ctService.selectGubun2(2));
		model.addAttribute("ctg6", ctService.selectGubun2(3));
		
		model.addAttribute("animal", anService.select(num));
		
		return "animal/animalUpdateForm";
	}
	
	@RequestMapping(value = "/AnimalUpdate", method = RequestMethod.POST)
	public String animalUpdate(Model model, AnimalVO animal, MultipartFile file, 
			@RequestParam("num") int num) throws Exception{
		String imgUploadPath = uploadPath + File.separator + "img/animal-img";
		String ymdPath = MyUtil.calcPath(imgUploadPath);
		String fileName = null;
		
		animal.setNum(num);
		if(file != null) {
			try {
				fileName =  MyUtil.fileUpload(imgUploadPath, file.getOriginalFilename(), file.getBytes(), ymdPath);
				animal.setMainImage(File.separator + "img/animal-img" + ymdPath + File.separator + fileName);
				animal.setThumbImg(File.separator + "img/animal-img" + ymdPath + File.separator + "s" + File.separator + "s_" + fileName);
			} catch (Exception e) {
				animal.setMainImage(anService.select(num).getMainImage());
				animal.setThumbImg(anService.select(num).getThumbImg());
			}
		}
		anService.update(animal);
		return "redirect:animalView"+animal.getKind1()+"?num="+num;
	}
	
	@RequestMapping(value = "/AnimalDelete", method = RequestMethod.GET)
	public String animalDelete(Model model, @RequestParam("num") int num, 
			@RequestParam("kind1") int kind1, @RequestParam("kind2") int kind2) throws Exception{
		anService.delete(num);
		return "redirect:animalList?kind1="+kind1+"&kind2="+kind2+"&kind3=all";
	}
	
}
