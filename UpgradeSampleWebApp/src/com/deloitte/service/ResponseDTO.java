package com.deloitte.service;

import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonSerialize;

@JsonSerialize(include = JsonSerialize.Inclusion.NON_NULL)
public class ResponseDTO {

	private List<String> fileContent;

	public List<String> getFileContent() {
		return fileContent;
	}

	public void setFileContent(List<String> fileContent) {
		this.fileContent = fileContent;
	}
	
	
}
