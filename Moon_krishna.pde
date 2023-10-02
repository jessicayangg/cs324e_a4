class Moons {
  float angle;
  float distance;
  float size;
  
  Moons(float distance, float size) {
    this.angle = random(TWO_PI);
    this.distance = distance;
    this.size = size;
  }
  
  void display(float planetX, float planetY) {
    float x = planetX + distance * cos(angle);
    float y = planetY + distance * sin(angle);
    fill(200);
    noStroke();
    ellipse(x, y, size, size);
    angle += 0.01;
  }
}
