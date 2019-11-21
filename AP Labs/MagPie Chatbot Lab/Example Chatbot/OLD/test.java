import java.util.Random;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.*;
import java.io.*;

public class fileManager {

	private static String[] openFile(String file) throws IOException {
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



}
