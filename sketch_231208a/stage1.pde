float stage1_frame;
String[] stage1_str = {"키야 날씨 좋다아~", "이런 좋은 날씨에 수업을 가다니..!", ".....", "맞다 나 9시 수업인데", "몇시지..?"};
String thisLine = "";
int lineNum = 0;
int charNow = 0;
long pTime = 0;
int textInter = 100;
boolean inputWait = false;
PFont f;

void stage1(){
  stage1_frame = frameCount/frameRate;
  
    image(start_back2, 0, 0, width, height);
    image(start_tile, 0, height - height / 4, width, height/4);
    for ( Cloud c : clouds){
      c.display();
      c.move();
    }
    player.display();
   if(stage1_frame < 5){
     player.isWalk = true;
     player.speedX = 3;
   }
   else{
     player.speedX = 0;
     player.isWalk = false;
     
     text(thisLine, width/2, height/2);

    if (inputWait == false) {
    if (pTime + textInter < millis()) {
      thisLine = "";
      for (int i = 0; i <= charNow; i++) {
        thisLine = thisLine + stage1_str[lineNum].charAt(i);
      }
      charNow++;
      pTime = millis();
      if (charNow == stage1_str[lineNum].length()) {
        inputWait = true;
      }
    }
  }
  }
}

void stage1_set(){
cloudimgs = new PImage[2];
   cloudimgs[0] = loadImage("assets/cloud1.png");
   cloudimgs[1] = loadImage("assets/cloud2.png");
   clouds = new Cloud[4];
   for(int i = 0; i < clouds.length; i++){
     clouds[i] = new Cloud(random(width), random(height / 2), random(60, 120));
   }
    player = new Player(0, height - height / 4 - height / 7, player_idle, player_kick, player_lose, player_run, player_walk, 10);
}
