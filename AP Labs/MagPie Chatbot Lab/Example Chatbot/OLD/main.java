public class main {

  private static String codeName = "April";

  public static void main(String[] args) {  
		//import managers
		core cr = new core();		
		fileManager fileMan = new fileManager();
		responseManager resMan = new responseManager();
		
		cr.print(String.format("<%s> Hi there!",codeName));
		while(true) {	
			String userInput = cr.input("<YOU>");
			String cleanInput = resMan.removeSymbols(userInput);
			String response = resMan.getResponse(cleanInput);
			cr.print(String.format("<%s> %s", codeName, response));


		}
  }
}
