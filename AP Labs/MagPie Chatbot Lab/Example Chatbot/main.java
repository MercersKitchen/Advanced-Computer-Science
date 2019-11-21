import java.io.*;
import java.util.*;

public class main {
	private static String codename = "April";	
	private static String user = "Leandro";
	private static String version = "Version 1.0";

	/* Main Program */
	public static void main(String[] args) {
		uprint(codename,"Hello there!");
		while (true) {
			String user = input("<YOU>");
			List<String> lemm = Nlp.lemmatize(Nlp.stopwords(Nlp.tokenize(Nlp.cleanText(user))));
			String response = ResponseManager.getResponse(lemm);


			// Codenames: parsing the text and replacing data
			response = response.replace("{user}", user);
			response = response.replace("{codename}",codename);
			response = response.replace("{version}",version);
			FileManager.appendFile("append.txt",String.join(" ", lemm));
			if(response.equals("{exit}")) {	
				uprint(codename,"bye");
				System.exit(0);
			}
			uprint(codename,response);
		}
		
	}

	private static void uprint(Object user, Object response) {
		print(String.format("<%s>: %s",user,response));	
	}
	/* Creates a print statement simmilar to python */
	private static void print(Object statement) {
		System.out.println(statement);
	}



	/* Creates an input grabber simmilar to pythons raw_input and input */
	private static String input(Object label) {
		System.out.printf(String.format("%s: ",label));
    Scanner s = new Scanner(System.in);
    return s.nextLine();
	}
}
