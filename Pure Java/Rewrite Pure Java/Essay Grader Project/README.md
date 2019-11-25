# Essay Grade Project
Continuing from CS10 Websites (Creating an Interactive Essay)

Purpose: The Final Project of CS30, using String and Computational Thinking in Pure Java directly with the JDK
- Use String Functions and data structures
- Using Search Algorithms

**UNDER CONSTRUCTION**

## Progression
1. Case Study for Behaviours: See Case Study Image
2. Review types of sorts and searches (Google Search and example videos given below)
   - Linear
   - Exchange or Bubble
   - Selection
   - Insertion
   - Cocktail
   - Binary Search
3. Review behaviours of sorts, features needed to be coded for.
4. Review the functions available to write these sorts
5. Review Array and Data Structure Characteristics
   - Note: Processing-JAVA has built in libraries to deal with these issues
   - Static Length Array (native to pure Java), declare array length
   - Add new element at the beginning (called?)
   - Add new element in middle (called?)
   - Add new element at the end (called?)
   - OPTION: Search for other libraries to handle arrays differently: inserting into arrays like processing
6. Review FOR Loops: using index & reading entire array from start to end
   - FOR-EACH Loop
7. Beginning to sort and search a sentence: See Start.java
   - Input Data: use args (no ,trim()) or hardcode words as elements (must input array length)
     - Note: length of args determines the copied arrays of sorted data
     - Copying Arrays: see https://www.geeksforgeeks.org/array-copy-in-java/
     - Copying Memory References
     - Copying arrays by iterating over them (slower)
     - Copying full arrays using CLONE, simple "copy"
     - Copying array full array into specific locations of new array
     - See Copy Arrays.txt for example code to include
   - Issues to Solve (option, verify map of Unicode)
     - symbols between Capitals and lower Case
     - reading .compareTo(), order of elements and what number means
     - Unicode Table (country and keyboard use)
     - Comparisons of duplicate words, to save time and code (Empty IF)
8. Review a Grammar Rule like identifying the use of a period: see GrammarPeriod
9. Exchange Sort to alphabetically order args[] data
   - Notice Total Number of Comparisons and imagine Big Data
10. Selection Sort to alphabetically order args[] data
11. Insertion Sort to alphabetically order args[] data
12. Binary Search of Sorted Data, ID Vocabulary Words
    - If using "The quick brown fox jumps over the lazy dog.", then the vocabulary words are
    - fox (include search for proper and improper nouns, i.e. capital F)
    - jumps (include search for subject-predicate )
13. Count how many times these are used
14. Develop some sort of Rubric and Feedback (including overall grade) to provide feedback of writing

Future Concepts or Ideas
Assignment: Alphabetically order the sentence, use exchange sort, then other sorts
- using problem and initial code
Assignment: compare sorted sentence to vocabulary words using binary search vs. linear search
- One behavior from Essay Grader Case Study
Future Thoughts
- dealing with punctuation before comparing to vocabulary words
- more than one sentence?
- alphabetical sorting of words with same beginning letter
- dealing with subject-predicate agreement
- dealing with punctuation and ensuring grammar rules (might need a linear search, i.e. find period, check is next is letter)

Add Java DOCs to all assembled programs

---

# Ideas to Include

1/2 Period: brainstorm behaviors of an essay grader (meta literacy about essay pieces)
- See image of sections and example behaviors

1/2 Period: brainstorm behaviors of an essay grader (meta literacy about essay pieces)
- Adding Ideas
- Expanding on ideas that were left "for thinking to be returned to"

---

# Previous Student ideas

Case Study Ideas
- Spelling Specific: last letter of previous word is first letter of current work, space in wrong place
  - remove first letter, check spelling of previous word with removed letter; if true ... replace automatically
  - after removed letter, check spelling of rest of word; if true ... fix immediately

Main Coding Parts
- Paragraph into args (auto separate spaces)
- Search for words per sentence (search for ending punctuation)
- Search for capital letters
  - Beginning of Paragraph
  - After each
- Additional punctuation to remove
  - Quotations
  - Parenthesis (including braces and brackets)
- Create paragraph-word list and search for only letter characters
  - Alert developer if this list is in error
- Copy paragraph-word list and

Additional Features
- Characters per word, average
- Range of words with a number of characters in it

Review these resources
- FOR EACH
  - Introduction: https://www.w3schools.com/java/java_for_loop.asp
  - Comparison to regular FOR Loop: https://stackoverflow.com/questions/85190/how-does-the-java-for-each-loop-work
  - Explained: https://www.geeksforgeeks.org/for-each-loop-in-java/
  - Advanced FOR EACH: http://www.java2s.com/Code/Java/Language-Basics/JavaforinforinwithCollection.htm
- Algorithms
  - Crash Test Computer Science, Algorithms: https://www.youtube.com/watch?v=rL8X2mlNHPM
    - Crash Test Computer Science, all videos: https://www.youtube.com/watch?v=tpIctyqH29Q&list=PL8dPuuaLjXtNlUrzyH5r6jN9ulIgZBpdo

Lesson for Sorting
- Option: Search Types to Explore (Use Decks of cards)
- ARGS is populated with "The quick brown fox jumps over the lazy dog."
- Vocabulary words are "Fox", "Jump", "Dog"
  - Issues: proper noun, subject-predicate agreement, punctuation
- Linear Sort: most amount of comparison (do not increase comparisons past linear search)
  - Stop searching when <string.length() (similar to CS10 Music Player Next Button ArrayIndexOutOfBounds Error)
  - Compare with another array (i.e. array holding vocabulary words)
- Exchange Sort: see https://www.youtube.com/watch?v=xnfFS1kl0aM
  - Result makes <= operator true in final array
  - Compares two adjacent items at a time
- Selection Sort: See https://www.youtube.com/watch?v=xWBP4lzkoyM
    - Array considered in two parts, unsorted and unsorted
    - Find the lowest number, bring it to the first position
    - Find the next lowest number in the array, bring it to the next position
    - Continue until the array has one pass
- Insertion Sort: see https://www.youtube.com/watch?v=OGzPmgsI-pQ
  - Comparisons to index-zero, if necessary (similar to CS10 Music Player Previous Button ArrayIndexOutOfBounds Error)
  - set a marker between sorted and unsorted array
  - take value and compare to sorted portion until less than fails (<+ also?)
  - swap value into space and continue swapping to index-value of marker (index between sorted and unsorted)
  - much less efficient on large data than quicksort, heapsort, or merge sort
- Cocktail Sort
    - See: https://www.youtube.com/watch?v=Sn5MAZdnYlY
- Other Sorts
  - Merge Sort: https://www.youtube.com/watch?v=4VqmGXwpLqc
  - gnome sort
  - comb sort
  - Selection sort: strand sort
  - Insertion sort: library sort
  - Quicksort?
  - Heap sort?

Searching Data
- Linear Search: can be organized or unorganized
- Binary Search: starts in the middle and tests if it should be left or right
    - see https://www.youtube.com/watch?v=P3YID7liBug
    - can only be done on sorted data
    - thus will always be slower than linear

Explore Time Constraints

Alphabetical Sort then binary search to find
- Length of args determines copied array lengths when declaring them
  - Adding to arrays can be at the beginning, middle, or end in data structures (all with different names)
- Compare "The" and "the"
  - Issues:
    - Capital vs. lower case: easiest is either compare lower case or upper case only
    - Mapping symbols in-between, use following tables
    - Finding duplicate words
    - [Option: verify maps by comparing characters from chart]
  - Ordering of .compareTo() to count, starting word and ending word
- See to Remember CS10 (ASCII Code vs. String in Boolean Evaluation): http://www.asciitable.com/
- Unicode
  - See: https://unicode.org/
  - See: https://unicode-table.com/en/#control-character
  - See: https://en.wikipedia.org/wiki/List_of_Unicode_characters
- Sort with Exchange or Bubble Sort

Creating an Exchange or Bubble Sort of Single Sentence, Algorithm Considerations
- Comparing side-by-side elements, use .compareTo(), returns positive or negative integer
- Swapping array elements means creating a memory of one of the elements
- Deal with Array out of Bounds when reading through array with i, i+1, or i-1 and array.length
- Deal with WHILE Loop and repeating array-reading until all comparisons are false

Creating a Selection Sort
- Read the unsorted array, remember the index between the sorted and unsorted
- Read the remaining unsorted, find the "lowest alphabet character" ("what ever belongs at the front")
- "Finding Lowest Alphabet Character": only keep the comparison with the "lowest character"
- Swap the characters

Creating an Insertion Sort
- Start reading array at marker
- Compare words and count
- If needs to move (duplicate or ordered words omitted), remember words and array indices
- find the place in the sorted array the word belongs
- end the loop if the word doesn't go in front of next work in sorted list
- if word does, reassign the lower position memory
- rewrite the array by moving the elements one over

Grammar
- Find Period
- map period to Capital A and Capital Z
- evaluate if .compareTo() is between these values

Tools to Use
- References
  - https://www.w3schools.com/java/java_arrays.asp
  - https://www.w3schools.com/java/java_try_catch.asp
  - Note: https://www.w3schools.com/java/default.asp
- Compare To Function
```java
System.out.println("Comparing Ben to John returns: " + name[1].compareTo(name[2]));
System.out.println("BcdefghiJ" + "\n87654321"); //Counting for .compareTo()
System.out.println("Comparing John to Ben returns: " + name[2].compareTo(name[1]));
System.out.println("BcdefghiJ" + "\n 12345678"); //Counting for .compareTo()
```
- Using == ( instead of .compareTo() )
```java
System.out.println(name[1] == args[0].substring(0, 3)); //Returns FLASE although strings are same
      //Comparing memory location hecxidecimal values
      //How is this done? Cannot find reference right now
System.out.println(name[1].equals(args[0].substring(0, 3))); //Returns TRUE since comparing characters
```
- A Counting Tool to count within Array Elements
```java
System.out.println ("Your Beginning String is:\n" + args[0]); //Shows argument
   for(int i=0; i<args[0].length(); i++) { //Prints a counting structure for the argument
     if(i >= 10) {
       System.out.print(i-10);
     } else {
       System.out.print(i);
     }
   }
```

```
---

Basic Notes that need to be changed
Algorithms
String Functions, Algorithm based on String Functions
- Divide Behaviors
Tuesday - Algorithm
Creating a toString to output result Strings

---

Teacher only ideas: <a href="https://github.com/QEHS-PureJava/Prototyping-Sorts-and-Searches">Click Here</a>

---
