color[] palette={#122661,#FF4040,#8F7B0D,#8F660D,#8696C5};
String[] trigger={"rape","raped","lacrosse","brodhead","accusation","sickening","misconduct",
"sexual","toleration","Duke","deliberate","allegations","suspension","team","conduct","charges", 
"student","mistake","guilty","investigation","behavior","report","attorney","innocent","athletic","evidence"
,"report","reports","university"};
int x;
int y;
int i=0;

void setup(){
  size(1000,800); //change size
  background(palette[0]);
}

void draw(){
  String words[]=loadStrings("filteredWords.txt");
  String nums[]=loadStrings("filteredNums.txt");
  //for (int i=0;i<words.length;i++){
    x=(int)random(100,800); //change size
    y=(int)random(50,700); //change size
    int col=(int) random(5);
    if (nums[i].equals("243")){
      println(words[i]);
      println(nums[i]);
    }
    //fill(255);
    int count=0;
    for (int j=0;j<trigger.length;j++){
      if (words[i].toLowerCase().equals(trigger[j])){
        count++;
      }
    }
    if (col!=0){
        fill(palette[col]);
      }else fill(palette[4]);
    //if (Integer.parseInt(nums[i])>80 || count!=0 ){
    //  textSize(100);
    //}else{
     if (int(nums[i])>100 || count!=0 ){
      textSize(50);
    }
    else {textSize(int(nums[i]));}
    text(words[i],x,y);
    //delay(500);
  //}
  i++;
  if (i==2322){
    i=0;
    background(palette[0]);
  }
  //println("i"+i);
  
}