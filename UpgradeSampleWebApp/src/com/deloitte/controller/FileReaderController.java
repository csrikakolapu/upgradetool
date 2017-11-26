package com.deloitte.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.deloitte.service.FileReaderService;
import com.deloitte.service.ResponseDTO;

@Controller
@EnableWebMvc
@RequestMapping("/api")
public class FileReaderController {

	@RequestMapping(value = "/getFileContent", method = RequestMethod.GET)
	@ResponseBody
	public  ResponseDTO homePage(@RequestParam(required = true, value = "fileName") String fileName, HttpServletRequest  request)
	{
		FileReaderService fileReaderService = new FileReaderService();
		ResponseDTO dto = new ResponseDTO();
		try{
			
			StringBuffer urlPath = new StringBuffer();
			urlPath.append("http://").append(request.getServerName()).append(":").append(request.getServerPort());
			urlPath.append(request.getContextPath());
			urlPath.append("/").append(fileName);
			dto.setFileContent(fileReaderService.getFileData(urlPath.toString()));
			
		}catch(Exception e){
			e.printStackTrace();
			List<String> response = new ArrayList<String>();
			response.add(e.getLocalizedMessage());
			dto.setFileContent(response);
			
		}
		return dto;
		

	}
	
	
}
