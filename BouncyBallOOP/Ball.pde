class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 110;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel= PVector.random2D();
    c = color(random(255), random(50), random(100, 255));
    vel.mult(5);
  }

  Ball(float x, float y, int sz){
    diam=sz;
    loc = new PVector(x,y);
    vel = PVector.random2D();
    c=color(random(200), random(250), random(10, 25));
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);
  }
  void run(){
    display();
    move();
  }
  void bounce(){
  if(loc.x-diam/2< 0){
    vel.x= -vel.x;
  }
  if(loc.x+diam/2>width){
    vel.x=-vel.x;
  }
  if(loc.y+diam/2>height){
    vel.y=-vel.y;
  }
  if(loc.y-diam/2<0){
    vel.y=-vel.y;
  }
  }

}