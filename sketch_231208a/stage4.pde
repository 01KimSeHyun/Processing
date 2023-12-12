boolean stage3_sets = false;
boolean alpha_trigger = false;
PImage kickboard;
String[] stage4_str = {"앗! 야생의 지쿠터가 나타났다!", "나는 무엇을 할까?"};
String[] stage4_choice = {"몸통 박치기!", "지쿠터 타기", "도망간다"};
int alpha = 255;
void stage4(){
  background(0, alpha);
  if(!alpha_trigger)
    alpha -= 3;
  if(alpha < 0){
    alpha_trigger = true;
    if(!stage3_sets){
    player.x = - height / 7;
    stage3_sets = true;
    }
    stage1_frame = frameCount/frameRate;
    
      image(start_back2, 0, 0, width, height);
      image(start_tile, 0, height - height / 4, width, height/4);
      for ( Cloud c : clouds){
        c.display();
        c.move();
      }
      image(kickboard, width /2, height - height / 4 - height / 7, width / 7, height / 7);
      player.display();
      player.isRunning = true;
      if(player.x < width/2)
        player.speedX = 4;
       else{
         player.speedX = 0;
         player.isRunning = false;
         println(inputWait, pTime, millis());
         text(thisLine, width/2, height/2);
         if (inputWait == false) {
           if (pTime + textInter < millis()) {
              thisLine = "";
              for (int i = 0; i <= charNow; i++) {
                thisLine = thisLine + stage4_str[lineNum].charAt(i);
              }
              charNow++;
              pTime = millis();
              if (charNow == stage4_str[lineNum].length()) {
                inputWait = true;
              }
            }
      }
      if(lineNum == stage4_str.length - 1){
          text(stage4_choice[0], width/3 * 2, height/2);
          text(stage4_choice[1], width/3 * 2, height/2 + height/6);
          text(stage4_choice[2], width/3 * 2, height/2 + height / 6 * 2);
      }
     }
   }
}
void stage4_set(){
  kickboard = loadImage("assets/kickboard.png");
}
