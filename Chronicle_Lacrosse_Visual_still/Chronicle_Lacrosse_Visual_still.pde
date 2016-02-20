color[] palette={#122661,#281262,#8F7B0D,#8F660D,#8696C5};
String[] trigger={"rape","raped","lacrosse","brodhead","accusation","sickening","misconduct",
"sexual","toleration","Duke","deliberate","allegations","suspension","team","conduct","charges", 
"student","mistake","guilty","investigation","behavior","report","attorney","innocent","athletic","evidence"
,"report","reports"};
int i=0;
int x;
int y;
ArrayList<Integer> xcoord=new ArrayList<Integer>();
ArrayList<Integer> ycoord=new ArrayList<Integer>();
String words[];
String nums[];

void setup(){
  size(1200,800);
  background(palette[0]);
  words=loadStrings("LacrosseWordFrequencyWords.txt");
  nums=loadStrings("LacrosseWordFrequencyNums.txt");
  for (int i=0;i<words.length;i++){
    x=(int)random(100,800);
    y=(int)random(50,700);
    xcoord.add(x);
    ycoord.add(y);
    int col=(int) random(5);
    //if (nums[i].equals("243")){
    //  println(words[i]);
    //  println(nums[i]);
    //}
    //fill(255);
    int count=0;
    for (int j=0;j<trigger.length;j++){
      if (words[i].toLowerCase().equals(trigger[j])){
        count++;
      }
    }
    if (count!=0){
      fill(0);
    } else {
      if (col!=0){
        fill(palette[col]);
      }else fill(palette[4]);
    }
    if (Integer.parseInt(nums[i])>80){
      textSize(100);
    }else{
    textSize(Integer.parseInt(nums[i]));
    }
    text(words[i],x,y);}
}

void draw(){
  //hover over text!
  for (int i=0; i<words.length;i++){
    int height=calculateTextHeight(words[i], (int)textWidth(words[i]), Integer.parseInt(nums[i]), 2);
    if (mouseX>xcoord.get(i) && mouseX<(xcoord.get(i)+textWidth(words[i])) && 
    (ycoord.get(i)-textAscent())<mouseY && mouseY<(ycoord.get(i)+height)){
      //println(words[i]); //still need to generate random colors for text
      fill(palette[1]);
      textSize(50);
      text(words[i],xcoord.get(i),ycoord.get(i));
    }
  }
}
  
int calculateTextHeight(String string, int specificWidth, int fontSize, int lineSpacing) {
  String[] wordsArray;
  String tempString = "";
  int numLines = 0;
  float textHeight;
 
  wordsArray = split(string, " ");
 
  for (int i=0; i < wordsArray.length; i++) {
    if (textWidth(tempString + wordsArray[i]) < specificWidth) {
 tempString += wordsArray[i] + " ";
    }
    else {
 tempString = wordsArray[i] + " ";
 numLines++;
    }
  }
   
  numLines++; //adds the last line
   
  textHeight = numLines * (textDescent() + textAscent() + lineSpacing);
  return(round(textHeight));
}
  