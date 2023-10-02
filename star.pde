class star {
  PVector position;
  float freq;
  float size;
  color col;
  
  star(float x, float y, float freq, float size, color col){
    position = new PVector (x, y);
    this.freq = freq;
    this.size = size;
    this.col = col;
  }
  
  star(float x, float y, float size){
    position = new PVector (x, y);
    this.freq = 10;
    this. size = size;
    this.col = color(#F5BE4F);
  }
  
  void display(){
    
  // see where the current frame is in a cycle
  int current = frameCount % 25;
  
  // if the current frame is within our desire frequency, show the star
  if (current < freq) {
    fill(col); 
  }
  // otherwise, hide it aka show the background color instead
  else {
    fill(0); 
  }   
    
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
  
  //void move(){}  
}
