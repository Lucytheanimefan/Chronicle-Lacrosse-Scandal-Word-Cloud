color[] palette={#122661,#281262,#8F7B0D,#8F660D,#8696C5};
String[] trigger={"rape","raped","lacrosse","brodhead","accusation","sickening","misconduct",
"sexual","toleration","Duke","deliberate","allegations","suspension","team","conduct","charges", 
"student","mistake","guilty","investigation","behavior","report","attorney","innocent","athletic","evidence"
,"report","reports"};
String[] common={"the","of","and","a","to","in","is","you","that","it","he","was","for","on","are","as","with","his","they","I","at","be","this","have","from","or","one","had","by","word","but","not","what","all","were","we","when","your","can","said","there","use","an","each","which","she","do","how","their","if","will","up","other","about","out","many","then","them","these","so","some","her","would","make","like","him","into","time","has","look","two","more","write","go","see","number","no","way","could","people","my","than","first","water","been","call","who","oil","its","now","find","long","down","day","did","get","come","made","may","part"};

int i=0;
int x;
int y;
ArrayList<Integer> xcoord=new ArrayList<Integer>();
ArrayList<Integer> ycoord=new ArrayList<Integer>();
String words[];
String nums[];
ArrayList<String> trigs=new ArrayList<String>();
ArrayList<Integer> trigCount=new ArrayList<Integer>();

void setup(){
  size(1000,800);
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
        trigs.add(words[i]);
        trigCount.add(Integer.parseInt(nums[i]));
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
  fill(0);
  rect(25,25,50,50);
  textSize(15);
  fill(255);
  text("Trigger",25,55);
  
  fill(0);
  rect(25, 100, 50, 50);
  fill(255);
  textSize(10);
  text("All words",28,130);
  
  if (mouseX>25 && mouseX<75 && mouseY>25 && mouseY<75){
    background(palette[0]);
    drawTrigButton();
    drawNormButton();
    triggerHover();
}else if(mouseX>25 && mouseX<75 && mouseY>100 && mouseY<150){ 
    setup();
    drawTrigButton();
    drawNormButton();
  }
}

void drawTrigButton(){
  fill(0);
    rect(25,25,50,50);
    textSize(15);
    fill(255);
    text("Trigger",25,55);
}

void drawNormButton(){
    fill(0);
    rect(25, 100, 50, 50);
    fill(255);
    textSize(10);
    text("All words",28,130);
}

void triggerHover(){
  background(palette[0]);
  for (int i=0; i<trigs.size(); i++){
      fill(0);
      x=(int)random(50,750);
      y=(int)random(50,700);
      textSize(trigCount.get(i));
      text(trigs.get(i),x,y);
      delay(2);
  }
}