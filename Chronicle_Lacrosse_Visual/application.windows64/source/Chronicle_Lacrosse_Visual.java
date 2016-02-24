import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chronicle_Lacrosse_Visual extends PApplet {

int[] palette={0xff122661,0xff281262,0xff8F7B0D,0xff8F660D,0xff8696C5};
String[] trigger={"rape","raped","lacrosse","brodhead","accusation","sickening","misconduct",
"sexual","toleration","Duke","deliberate","allegations","suspension","team","conduct","charges", 
"student","mistake","guilty","investigation","behavior","report","attorney","innocent","athletic","evidence"
,"report","reports","university"};
int x;
int y;
int i=0;

public void setup(){
  
  background(palette[0]);
}

public void draw(){
  String words[]=loadStrings("LacrosseWordFrequencyWords.txt");
  String nums[]=loadStrings("LacrosseWordFrequencyNums.txt");
  //for (int i=0;i<words.length;i++){
    x=(int)random(100,800);
    y=(int)random(50,700);
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
  public void settings() {  size(1200,800); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chronicle_Lacrosse_Visual" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
