Ball b, c,d,e;                //declare a new ball called b

void setup() {
  size(800, 600);
  b = new Ball();  
  c= new Ball(); 
  d=new Ball(width/2, height/2, 50);
  e=new Ball();
  //initialize b as a new object of the Ball class
}

void draw() {
  background(0);
 // b.display();         //call b's display() method
 // c.display();
 // b.move();
 // c.move();
  b.run();
  c.run();
  d.run();
  e.run();
  b.bounce();
  c.bounce();
  d.bounce();
  e.bounce();
}