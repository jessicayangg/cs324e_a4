star s1;
starS s2;

void setup(){
  size(500,500);
  s1 = new star(50,50, 5);
  s2 = new starS( 400,400, 20, 5, 5, 1);
}

void draw(){
  background(255);
  s1.display();
  s2.display();
  s2.move();
}
