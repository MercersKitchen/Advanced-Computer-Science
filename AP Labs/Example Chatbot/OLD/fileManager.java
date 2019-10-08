import java.util.*;
import java.io.*;

public class fileManager {
	private static core core = new core();
	/**
	 * Open File
	 * 
	 * @param String-file the filename
	 *
	 * @return returns a string array of the lines in the file
	 **/
	public static String[] openFile(String file) throws IOException {
		List<String> line = new ArrayList<String>();

		BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(file)));
		String lines = null;	
		while((lines = br.readLine()) != null) {
			line.add(lines);	
		}

		String[] result = new String[line.size()];
		line.toArray(result);
		return result;	
	}

	/**
	 * get random response from file
	 *
	 * @return returns a random line from the file
	 **/
	public static String getRandomResponse() throws IOException{ // TODO: returns null ??
		Random random = new Random();
		int randInt = 0;

		try {
			randInt = random.nextInt(lineCount(new File("test.txt")) + 1);
		} catch (IOException e) {
			core.print("IOException");
		}

		int count = 0;	
		BufferedReader br = new BufferedReader(new InputStreamReader( new FileInputStream("test.txt")));
		String line = null;

		while ((line = br.readLine()) != null) {
			if(count == randInt) {
				return line;	
			}
			count++;
		} 

		br.close();
		return line;
	}

	/**
	 * get file line count
	 *
	 * @param File-file the file
	 *
	 * @return a number of how many lines in a file
	 **/
	public static int lineCount(File file) throws IOException {
		int count = 0;
 
		BufferedReader br = new BufferedReader(new InputStreamReader( new FileInputStream(file)));
		String line = null;
		while ((line = br.readLine()) != null) {
			count++;
		}
	 
		br.close();
		return count;
	}
}
