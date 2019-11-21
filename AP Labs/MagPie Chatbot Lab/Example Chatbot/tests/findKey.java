public class findKey {
	public static void main(String[] argumenst) {
		if(findKey("this is a test","test")) {
			System.out.println("test 1: success");
		} else {
			System.out.println("test 1: Fail");
		}
		if(findKey("this is another test","another test")) {
			System.out.println("test2: Success");
		} else {
			System.out.println("test2: Fail");
		}
		if(findKey("this is the * test","third")) {
			System.out.println("test3: Success");
		} else {
			System.out.println("test3: Fail");	
		}
		
	
	}

	private static String cleanUp(String statement) {
		String punctuation = ".?!,;:-[]{}()`'""	
	}

	private static boolean findKey(String Phrase, String mkey) {
		String[] words = Phrase.split(" ");
		String[] keys = mkey.split(" ");

		
	}


}
