import java.io.*;
import java.util.*;


public class ResponseManager {

	/* is a word in a List */
	public static boolean isKey(List<String> text, String key) {
		if(text.contains(key.toLowerCase())) {
			return true;	
		}	

		return false;
	}

	/* Bot response */
	public static String getResponse(List<String> text) {	
		String filename = "data/response-en.txt";
		List<String> oFile = FileManager.openFile(filename);
		for(String line: oFile) {
			String[] lineSplit = line.split("\t");
			String key = lineSplit[0];
			String response = lineSplit[1];
			
			if(text.contains(key.toLowerCase())) {
				return response;	
			}
		}
		return randomResponse();
	}


	/* Gets a random string from a list of responses*/
	public static String randomResponse() {
		String filename = "data/random.txt";
		return FileManager.randChoice(FileManager.openFile(filename));	
	}
	public static String codeReplacement() {
		/* Replace certain keyword with other words like {codename} = April */	
		System.out.println("test");
		return "test";
	}
}
