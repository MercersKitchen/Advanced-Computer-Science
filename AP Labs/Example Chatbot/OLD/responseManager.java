import java.io.*;
import java.util.*;
public class responseManager {

	private static core core = new core();
	private static fileManager fileMag = new fileManager();
	/**
	 * Remove Symbols
	 *	removes the symbols like perions and exclamation points
	 *
	 * @param String-statement the string that you want to remove symbols from
	 *
	 * @return returns the String statement but without the symbols
	 **/
  public static String removeSymbols(String statement) {
    String[] sym = {"!","@","#","$","%","^","&","*","(",")","?",".",","}; 
    //TODO: remove words with [`] like john's
    for (String Symbol  : sym ) {
        statement = statement.replace(Symbol,"");
    }
		List<String> = new ArrayList<String>();
		for(String word: statement.toLowerCase()) {
			// word that is plural that ends with s
			if(word.endsWith("s")) {
				
				
			}	
		}
    return statement;
  }
  public static String getResponse(String statement) {
		//TODO: make it work for more than one word
    String[][] response = {
      {"cat","Tell me more about your cat"},
      {"dog","Tell me more about your dog"},
      {"weather","The weather is nice"},
      {"school","School is cool"},
      {"test","test away"},
			{"leandro","I think he is cool."},
			{"hello","Hi"}
    };
		
				


    }

		// get random response when there are no keyword found in the statement
		try{return fileMag.getRandomResponse();} catch(IOException e) { core.print("Something went wrong.");}
		return null;
  }
	/**
	 * Find key
	 *	checks if word is in a statement
	 *
	 * @param String-statement 
	 * @param String-key the word that you are looking for
	 *
	 * @return returns true if the statement has the word
	 **/
  public static boolean findKey(String statement, String key) {
    String[] words = statement.split(" ");
    for (String word : words) {
      if(word.toLowerCase().equals(key.toLowerCase())) {
        return true;
      }
    }
    return false;
  }
}
