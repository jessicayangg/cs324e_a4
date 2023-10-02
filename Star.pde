class Star {
  float x, y, size, brightness;
  
  Star() {
    x = random(width);
    y = random(height/2);
    size = random(1, 3);
    brightness = random(200, 255);
  }
  
  void twinkle() {
    brightness = random(200, 255);
  }
  
  void display() {
    fill(brightness);
    noStroke();
    ellipse(x, y, size, size);
  }
}
