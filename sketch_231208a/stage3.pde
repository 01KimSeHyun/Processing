
void stage3(){
  stage1_frame = frameCount/frameRate;
  
    image(start_back2, 0, 0, width, height);
    image(start_tile, 0, height - height / 4, width, height/4);
    for ( Cloud c : clouds){
      c.display();
      c.move();
    }
    player.display();
    player.isRunning = true;
    if(player.x < width + height / 7)
      player.speedX = 10;
    if(player.x > width + height / 7)
      state = 4;
      pTime = millis();
}
