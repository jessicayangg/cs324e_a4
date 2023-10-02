class Planet {
  float x, y;
  float size;
  color c;
  float angle;  // For sinusoidal movement
  Moons[] moons;  // Updated to Moons
  Ring ring;
  
  Planet(float x, float size, color c, Moons[] moons, Ring ring) {  // Updated to Moons
    this.x = x;
    this.y = height/2;
    this.size = size;
    this.c = c;
    this.angle = 0;
    this.moons = moons;  // Updated to Moons
    this.ring = ring;
  }
  
  void display() {
    y = height/2 + 100 * sin(angle);  // Sinusoidal movement
    fill(c);
    noStroke();
    ellipse(x, y, size, size);
    ring.display(x, y);  // Display ring around the planet
    for (Moons moon : moons) {  // Updated to Moons
      moon.display(x, y);  // Display moons rotating around the planet
    }
    angle += 0.02;
  }
}
