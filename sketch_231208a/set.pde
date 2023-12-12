void Player_set(){
  player_idle = new PImage[5];
  player_kick = new PImage[2];
  player_lose = new PImage[7];
  player_run = new PImage[6];
  player_walk = new PImage[5];
  
  player_idle[0] = loadImage("assets/Player/idle/idle.png");
  player_idle[1] = loadImage("assets/Player/idle/idle1.png");
  player_idle[2] = loadImage("assets/Player/idle/idle2.png");
  player_idle[3] = loadImage("assets/Player/idle/idle3.png");
  player_idle[4] = loadImage("assets/Player/idle/idle4.png");
  
  player_kick[0] = loadImage("assets/Player/kick/kick.png");
  player_kick[1] = loadImage("assets/Player/kick/kick1.png");
  
  player_lose[0] = loadImage("assets/Player/lose/lose.png");
  player_lose[1] = loadImage("assets/Player/lose/lose1.png");
  player_lose[2] = loadImage("assets/Player/lose/lose2.png");
  player_lose[3] = loadImage("assets/Player/lose/lose3.png");
  player_lose[4] = loadImage("assets/Player/lose/lose4.png");
  player_lose[5] = loadImage("assets/Player/lose/lose5.png");
  player_lose[6] = loadImage("assets/Player/lose/lose6.png");
  
  player_run[0] = loadImage("assets/Player/run/run.png");
  player_run[1] = loadImage("assets/Player/run/run1.png");
  player_run[2] = loadImage("assets/Player/run/run2.png");
  player_run[3] = loadImage("assets/Player/run/run3.png");
  player_run[4] = loadImage("assets/Player/run/run4.png");
  player_run[5] = loadImage("assets/Player/run/run5.png");
  
  player_walk[0] = loadImage("assets/Player/walk/walk.png");
  player_walk[1] = loadImage("assets/Player/walk/walk1.png");
  player_walk[2] = loadImage("assets/Player/walk/walk2.png");
  player_walk[3] = loadImage("assets/Player/walk/walk3.png");
  player_walk[4] = loadImage("assets/Player/walk/walk4.png");
  
 
}

void Start_set(){
  start_back1 = loadImage("assets/start_res/back.jpg");
  start_back2 = loadImage("assets/start_res/allback.png");
  start_tile = loadImage("assets/start_res/tile.png");
  PlayerSet = loadImage("assets/player/idle/idle.png");
  logo = loadImage("assets/start_res/logo.png");
  DungGeunMo = createFont("assets/font/DungGeunMo.ttf", 30);
  
   
}
