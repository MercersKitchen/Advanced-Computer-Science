import java.util.*;
import java.io.*;

public class Nlp {

	/* Tokenize a string */
	public static List<String> tokenize(String text) {
		String[] split = text.split(" ");
		return Arrays.asList(split);
	}

	/* Remove stop words */
	public static List<String> stopwords(List<String> text) {
		List<String> result = new ArrayList<String>();
		List<String> stopwords = FileManager.openFile("data/stopwords-en.txt");
		for(String word: text) {
			if(!stopwords.contains(word.toLowerCase())) {
				result.add(word);
			}	
		}
		return result;
	}
	
	/* Clean the text of symbols or non letters*/
	public static String cleanText(String text) {
		return text.replaceAll("[^a-zA-Z0-9 ]", "").toLowerCase();	
	}


	
	/* group inflected forms of a word to a single item */
	public static List<String> lemmatize(List<String> text) {
		List<String> lema = FileManager.openFile("data/lemmatization-en.txt");	

		for(int i = 0; i < text.size(); i++) {	
			for(String line: lema) {
				String[] items = line.split("\t");
				String root = items[0];
				String branch = items[1];
				if(text.get(i).toLowerCase().equals(branch.toLowerCase())) {
					text.set(i, root.toLowerCase());
				}
			}
		}		
		return text;
	}





}
