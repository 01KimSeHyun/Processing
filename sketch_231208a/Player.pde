
class Player{
  float x, y;
  float speedX, speedY;
  float gravity = 0.5f;
  float jumpPower = -12;
  boolean canJump = true;
  boolean isRunning = false;
  boolean isJumping = false;
  boolean isWalk = false;
  PImage[] idleImage;
  PImage[] kickImage;
  PImage[] loseImage;
  PImage[] runImage;
  PImage[] walkImage;
  int frameRate;
  
  Player(float x, float y, PImage[] idleImage, PImage[] kickImage, PImage[] loseImage, PImage[] runImage, PImage[] walkImage, int frameRate){
    this.x = x;
    this.y = y;
    this.speedX = 0;
    this.speedY = 0;
    this.idleImage = idleImage;
    this.kickImage = kickImage;
    this.loseImage = loseImage;
    this.runImage = runImage;
    this.walkImage = walkImage;
    this.frameRate = frameRate;
  }
  void display(){
    move();
    int frame = frameCount / frameRate % 5;
    if(isJumping){
      if(frame >= 8){
        frame = 0;
      }
     }
    else if(isRunning){
        if(frame >= 6)
          frame = 0;
        image(runImage[frame], x, y, height / 7, height / 7);
    }
    else if(isWalk){
      if(frame > 4){
        frame = 0;
      }
      image(walkImage[frame], x, y, height / 7, height / 7);
    }
    else{
      if(frame >= 5){
        frame = 0;
      }
      image(idleImage[frame], x, y, height / 7, height / 7); 
    }
  }
  void move(){
    x += speedX;
    y += speedY;
    speedY += gravity;
    if ( y > height/2){
      speedY = 0;
      canJump = true;
      isJumping = false;
    }
  }
  void jump(){
    if (canJump){
      speedY = jumpPower;
      canJump = false;
      isJumping = true;
    }
  }
}
