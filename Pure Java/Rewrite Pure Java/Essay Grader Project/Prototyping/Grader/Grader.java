public class Grader
{
	public static void runner (String arr[])
	{
		String[] test = {"A","Z","a","z"};
		System.out.println("\nStaring sentance");
		for (String element : arr)
		{
			System.out.println(element);
		}
		for(int i = 0; i < arr.length; i++)
		{
			arr[i] = arr[i].toLowerCase();
		}
		System.out.println("\nIn lower case");
		for (String lowerElement : arr)
		{
			System.out.println(lowerElement);
		}

		int periodAt = -1;
		System.out.println("\nChecking for period usage");
		for (int i = 0; i < arr.length; i++)
		{
			if (arr[i].indexOf(".") >= 0)
			{
				System.out.println("\nRemoving period for word checking");
				periodAt = arr[i].indexOf(".");
				arr[i] = arr[i].substring(0, periodAt);
			}
			if (arr[i].indexOf("?") >= 0)
			{
				System.out.println("\nRemoving question mark for word checking");
				periodAt = arr[i].indexOf("?");
				arr[i] = arr[i].substring(0, periodAt);
			}
			if (arr[i].indexOf("!") >= 0)
			{
				System.out.println("\nRemoving exclamation mark for word checking");
				periodAt = arr[i].indexOf("!");
				arr[i] = arr[i].substring(0, periodAt);
			}
			if (arr[i].indexOf(",") >= 0)
			{
				System.out.println("\nRemoving comma for word checking");
				periodAt = arr[i].indexOf(",");
				arr[i] = arr[i].substring(0, periodAt);
			}
			if (arr[i].indexOf("s") == arr[i].length() - 1)
			{
				System.out.println("\nRemoving ending 's' for word checking");
				periodAt = arr[i].indexOf("s");
				arr[i] = arr[i].substring(0, periodAt);
			}
			if (arr[i].indexOf("ed") == arr[i].length() - 2)
			{
				System.out.println("\nRemoving ending 'ed' for word checking");
				periodAt = arr[i].indexOf("ed");
				arr[i] = arr[i].substring(0, periodAt);
			}
			if (arr[i].indexOf("ing") == arr[i].length() - 3)
			{
				System.out.println("\nRemoving ending 'ing' for word checking");
				periodAt = arr[i].indexOf("ing");
				arr[i] = arr[i].substring(0, periodAt);
			}
		}
		System.out.println("\nSentance without punctuation or ending letters");
		for (String element : arr)
		{
			System.out.println(element);
		}
		
		//checking vocab words
		int[] vocabUsed = {0,0,0};
		String[] vocab = {"fox","jump","dog"};
		for (int i = 0; i < arr.length; i++)
		{
			if (arr[i].equals(vocab[0]))
			{
				vocabUsed[0] += 1;
			}
			if (arr[i].equals(vocab[1]))
			{
				vocabUsed[1] += 1;
			}
			if (arr[i].equals(vocab[2]))
			{
				vocabUsed[2] += 1;
			}
		}
		if (vocabUsed[0] >= 1 && vocabUsed[1] >= 1 && vocabUsed[2] >= 1)
		{
			System.out.println("\nAll vocab words used atleast once");
		}
		if (vocabUsed[0] < 1 || vocabUsed[1] < 1 || vocabUsed[2] < 1)
		{
			System.out.println("\nNot all vocab words are used");
		}
		
		System.out.println("\nSentance with edits");
		int n = arr.length;
		for(int i = 0; i < 9; i++)
		{
			System.out.println(arr[i]);
		}

		System.out.println("\nSorted sentence with edits");
		for (int i = 0; i < n-1; i++)
		{
			for (int o = 0; o < n-i-1; o++)
			{
				if (arr[o].compareTo(arr[o+1]) > 0)
				{
					String save = arr[o];
					arr[o] = arr[o+1];
					arr[o+1] = save;
				}
			}
		}
		for(int i = 0; i < n; i++)
		{
			System.out.println(arr[i]);
		}
		System.out.println();
	}	
	
	public static void main (String args[])
	{
		Grader ob = new Grader();
		String[] word = {"The","quick","brown","fox","jumps","over","the","lazy","dog."};
		String[] lowerWord = new String[word.length];
		ob.runner(word);

	}
}
