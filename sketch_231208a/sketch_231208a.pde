int state = 0;
int titleFrame = 0;
int currentFrame = 0;
int player_height;
PImage start_back1;
PImage start_back2;
PImage start_tile;
PImage logo;
PImage PlayerSet;
PImage[] cloudimgs;
PImage[] player_idle;
PImage[] player_kick;
PImage[] player_lose;
PImage[] player_run;
PImage[] player_walk;
String[] cloud_path = {"assets/cloud1.png", "assets/cloud2.png"};
PFont DungGeunMo;
Cloud[] clouds;
Player player;

void setup(){
  size(1000, 800);
  Start_set();
  Player_set();
  stage1_set();
  stage2_set();
  stage4_set();
}

void draw(){
  if(state == 0){

    image(start_back1, 0, 0, width, height);
    image(logo, 0, -30, width, height/2);
 
    textSize(32);
    fill(255);
    textAlign(CENTER, CENTER);
    textFont(DungGeunMo, width / 20);
    text("- Press To Start -", width / 2, height - 50);

  }
  else if(state == 1){
    stage1();
  }
  else if(state == 2){
    stage2();
  }
  else if(state == 3){
    stage3();
  }
  else if(state == 4){
    stage4();
  }
}
void mouseClicked(){
  if(state == 0){
    state = 1;
    stage1_frame = millis();
    pTime = millis();
  } else if(state == 1){
     if(state == 1){
        if (inputWait == true) {
         println(lineNum);
        if(lineNum == stage1_str.length - 1){
           state = 2;
        }
        thisLine = "";
        charNow = 0;
        lineNum += 1;
        if (lineNum == stage1_str.length){
          lineNum = 0;
        }
    inputWait = false;
  }else{
    charNow = stage1_str[lineNum].length()-1;
   }
  }
 } else if(state == 2){
   if(stage2_trigger == true)
     state = 3;
     lineNum = 0;
     thisLine = "";
     charNow = 0;
      pTime = 0;
      inputWait = false;
 } else if(state == 4){
   if (inputWait == true) {
         println(lineNum);
        if(lineNum == stage4_str.length - 1){
           state = 4;
        }
        thisLine = "";
        charNow = 0;
        lineNum += 1;
        if (lineNum == stage4_str.length){
          lineNum = stage4_str.length - 1;
        }
    inputWait = false;
 }
}
}

void keyPressed(){
 
}
