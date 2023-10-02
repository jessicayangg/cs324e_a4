class starS extends star {
  PVector direction;
  float speed;
  
  starS (float x, float y, float size, float dx, float dy, float speed){
    super(x, y, size);
    direction = new PVector(dx, dy);
    //direction.x = dirX;
    //direction.y = dirY;
    this.speed = speed;
    //direction.normalize();
  }
  
  void display(){
    // display tail end of shooting star
    fill(0);
    beginShape();
    vertex(position.x - (size * direction.x), position.y);   
    vertex(position.x, position.y - (size * direction.y));
    vertex(position.x - (4 * size * direction.x), position.y - (4* size * direction.y));
    endShape();
    
    fill(col);
    // display the star based on a given size
    noStroke();
    beginShape();
    vertex(position.x - (size/2), position.y + size);
    vertex(position.x - size, position.y);
    vertex(position.x - (size/2), position.y-size);
    vertex(position.x + (size/2), position.y-size);
    vertex(position.x + size, position.y);
    vertex(position.x + (size/2), position.y + size);
    endShape(CLOSE);
    
  }
  
// move the star based on direction and speed  
void move(){
  position.add(direction.mult(speed));
  direction.normalize();
}
  
  
}
