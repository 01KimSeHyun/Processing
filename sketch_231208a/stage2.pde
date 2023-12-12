PImage phone;
PImage screen;
PImage stage2_m1;
PImage stage2_m2;
PImage stage2_m3;
boolean stage2_trigger = false;
float stage2_frame;
float screenX = 0;
void stage2(){
  image(start_back2, 0, 0, width, height);
  image(phone, width /4, height - screenX, width/2, height);
  if(height - screenX > height /3){
    screenX += 10;
  }else{
     image(screen, width/4, height - screenX, width/2, height);
     stage2_frame = frameCount/frameRate % 10;
     if(stage2_frame > 5)
       stage2_frame = 0;
     if(stage2_frame > 1)
       image(stage2_m1, width/ 4, 0, width / 10, height /5);
      if(stage2_frame > 2)
        image(stage2_m2, width / 4 + width /10 * 2, 0, width / 10, height / 5);
      if(stage2_frame > 3){
        image(stage2_m3, width / 4 + width / 10 * 4, 0, width / 10, height / 5);
        stage2_trigger = true;
      }
  }
}

void stage2_set(){
  phone = loadImage("assets/stage2/iphone.png");
  screen = loadImage("assets/stage2/screen.png");
  
  stage2_m1 = loadImage("assets/stage2/!.png");
  stage2_m2 = loadImage("assets/stage2/!1.png");
  stage2_m3 = loadImage("assets/stage2/!2.png");
}
