# Parsing
Blank

**UNDER CONSTRUCTION**

Progressions
- Explore what is meant by a Parsing Method
- Explore how lines of code are executed in a Try-Catch, use "Parsing Integer Error"
  - Test Cases:
    - no args
    - 8l: meant as 81, will work as string but second line in try will throw first line, b/c of catch rewriting first line of TRY
- Illustrate why more specific feedback is necessary, use "Parsing Integer Double ARGS Try"
  - Test Case: 8l
- Take a general look at other functions for parsing
- Begin building a general Parsing Method that will output very specific strings
- Review String Functions
- Build a set of IF Statements to locate and parse what the user entered

---

# Ideas to Include

Parsing Notes

Parsing Integers, Booleans, Floats, Longs, and Doubles (see individual programs for examples)
- Option exists to input any args[] and then convert it to a "2"
- Note: each program throws multiple exceptions
- Parses the string argument as a signed decimal integer (sign, ASCII minus sign '-' ('\u002D'), and all decimal digits).
- Throws NumberFormatException if an error

```java
num[0] = Integer.parseInt(input[0]);
bool[0] =  Boolean.parseBoolean(input[0]);
flo[0] =  Float.parseFloat(input[0]);
lo[0] =  Long.parseLong(input[0]);
dou[0] =  Double.parseDouble(input[0]);
```

Extra
isNAN: ``` public boolean isNaN() ```

---
