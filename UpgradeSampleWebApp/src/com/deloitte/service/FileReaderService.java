package com.deloitte.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class FileReaderService {

	public List<String> getFileData(String path) throws IOException, URISyntaxException {
		List<String> fileContent = null;
		URI uri = new URI(path);
		
		try (BufferedReader br = Files.newBufferedReader(Paths.get(uri))) {

			//br returns as stream and convert it into a List
			fileContent = br.lines().collect(Collectors.toList());

		} catch (IOException e) {
			throw e;
		}
		
		return fileContent;
	}
}
