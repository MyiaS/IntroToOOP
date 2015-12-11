Ball[] balls=new Ball[200];

              //declare a new ball called b

void setup() {
  size(800, 600);
  int i =0;
  balls[i] = new Ball(random(25,300));
  i++;
  //initialize b as a new object of the Ball class
}

void draw() {
  background(0);
int i=0;
  balls[i].run();
  balls[i].bounce();
  i++;
 
}