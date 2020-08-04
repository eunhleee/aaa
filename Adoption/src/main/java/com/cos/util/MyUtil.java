package com.cos.util;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;

import org.springframework.util.FileCopyUtils;
import net.coobird.thumbnailator.Thumbnails;

public class MyUtil {
	//유투브 영상 걸러내기
	public static String makeYoutube(String content){
	    Document doc = Jsoup.parse(content);
	    Elements a_tag = doc.select("a");
	    
	    String iFrame="";
	    
	    //System.out.println(a_tag.size());
	    for(int i=0; i< a_tag.size(); i++){
	    	if(a_tag.get(i).attr("href").contains("www.youtube.com/watch")){
		    	System.out.println("영상 링크가 존재합니다.");
		    	String href = a_tag.get(i).attr("href");
		    	String sp[] = href.split("=");
		    	String value = sp[1];
		    	iFrame = "<iframe id=\"player\" type=\"text/html\" width=\"90%\" height=\"409\" src=\"http://www.youtube.com/embed/"+value+"\" frameborder=\"0\" webkitallowfullscreen=\"\" mozallowfullscreen=\"\" allowfullscreen=\"\"></iframe>";
		    	a_tag.get(i).after(iFrame);
		    }   
	    }
	    return doc.toString();
	}
	
	// 파일(썸네일 이미지) db저장
	static final int THUMB_WIDTH = 300;
	static final int THUMB_HEIGHT = 300;
	 
	public static String fileUpload(String uploadPath, String fileName,
	         byte[] fileData, String ymdPath) throws Exception {

		UUID uid = UUID.randomUUID();
	  
		String newFileName = uid + "_" + fileName;
		String imgPath = uploadPath + ymdPath;
	
		File target = new File(imgPath, newFileName);
		FileCopyUtils.copy(fileData, target);
		  
		String thumbFileName = "s_" + newFileName;
		File image = new File(imgPath + File.separator + newFileName);
	
		File thumbnail = new File(imgPath + File.separator + "s" + File.separator + thumbFileName);

		if (image.exists()) {
			thumbnail.getParentFile().mkdirs();
			Thumbnails.of(image).size(THUMB_WIDTH, THUMB_HEIGHT).toFile(thumbnail);
		}
		return newFileName;
	}

	public static String calcPath(String uploadPath) {
		Calendar cal = Calendar.getInstance();
		String yearPath = File.separator + cal.get(Calendar.YEAR);
		String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
	
		makeDir(uploadPath, yearPath, monthPath, datePath);
		makeDir(uploadPath, yearPath, monthPath, datePath + "\\s");
	
		return datePath;
	}

	private static void makeDir(String uploadPath, String... paths) {

		if (new File(paths[paths.length - 1]).exists()) { return; }
	
		for (String path : paths) {
			File dirPath = new File(uploadPath + path);
	
			if (!dirPath.exists()) {
				dirPath.mkdir();
			}
		}
	}
}
