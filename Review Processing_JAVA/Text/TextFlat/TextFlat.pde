//fullScreen(); //Student Only
size(700,500); //Teacher Only
String title = "Wahoo!";
PFont titleFont;
String[] fontList = PFont.list(); //To list all fonts available on system
println("Start of Console");
printArray(fontList); //For listing all possible fonts to choose, then createFont()
titleFont = createFont(); //Must also Tools / Create Font / Find Font / No "OK"
