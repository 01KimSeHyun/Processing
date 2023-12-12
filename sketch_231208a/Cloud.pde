
class Cloud {
  float x, y;
  float diameter;
  float speed = 0.1f;
  int rand = (int) random(2);
  Cloud(float x, float y, float diameter){
    this.x = x;
    this.y = y;
    this.diameter = diameter;
  }
  void display(){
    image(cloudimgs[rand], x, y, width /4, height/4);
  }
  void move(){
    x += speed;
    if(x - diameter/2 > width){
      x = -diameter / 2;
    }
  }
}
