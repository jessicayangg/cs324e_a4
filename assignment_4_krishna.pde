// Define cloud class for drifting clouds
class Cloud {
  float x, y;
  Cloud(float _x, float _y) {
    x = _x;
    y = _y;
  }

  void display() {
    drawCloud(x, y);
    x -= 1;
    if (x + 100 < 0) x = width;
  }
}

// Define a Star class
class Star {
  float x, y, size, brightness;
  
  Star() {
    x = random(width);
    y = random(height/2);  // Only in the upper half for the night sky
    size = random(1, 3);
    brightness = random(200, 255);
  }
  
  void twinkle() {
    brightness = random(200, 255);  // Change brightness randomly for twinkling effect
  }
  
  void display() {
    fill(brightness);
    noStroke();
    ellipse(x, y, size, size);
  }
}

// Create an array of stars and clouds
Star[] stars = new Star[200];
Cloud[] clouds = new Cloud[4];

// Define angle for planet rotation
float angle = 0;

void setup() {
  size(500, 500);
  
  // Initialize stars and clouds with random positions
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  
  for (int i = 0; i < clouds.length; i++) {
    clouds[i] = new Cloud(random(width, width + 500), random(100, 300));
  }
}

void draw() {
  drawSky();
  
  // Draw twinkling stars
  for (int i = 0; i < stars.length; i++) {
    if (random(1) < 0.01) stars[i].twinkle();  // 1% chance to twinkle each frame
    stars[i].display();
  }
  
  drawPlanet(width/3, height/2, 50, color(150, 100, 100), 0.01, true);  // Planet with rings
  drawPlanet(2*width/3, height/3, 30, color(100, 150, 100), 0.02, false);  // Planet without rings
  
  for (int i = 0; i < clouds.length; i++) {
    clouds[i].display();
  }
}

void drawSky() {
  // Set gradient for night sky
  setGradient(color(0, 0, 50), color(0, 0, 10));
}

void setGradient(color topColor, color bottomColor) {
  for (int y = 0; y < height; y++) {
    float lerpAmt = map(y, 0, height, 0, 1);
    color currentColor = lerpColor(topColor, bottomColor, lerpAmt);
    stroke(currentColor);
    line(0, y, width, y);
  }
}

void drawCloud(float x, float y) {
  fill(255, 150);
  noStroke();
  ellipse(x, y, 40, 20);
  ellipse(x + 20, y - 10, 40, 20);
  ellipse(x - 20, y - 10, 40, 20);
  ellipse(x + 10, y - 20, 30, 20);
  ellipse(x - 10, y - 20, 30, 20);
}

void drawPlanet(float x, float y, float radius, color c, float speed, boolean hasRings) {
  pushMatrix();
  translate(x, y);
  rotate(angle);
  
  // Drawing the planet
  fill(c);
  noStroke();
  ellipse(0, 0, radius*2, radius*2);
  
  // Drawing rings if the planet has rings
  if (hasRings) {
    stroke(200);
    noFill();
    ellipse(0, 0, radius*3, radius*1.5);  // Outer ring
    ellipse(0, 0, radius*2.5, radius*1.25);  // Inner ring
  }
  
  popMatrix();
  angle -= speed;  // Counterclockwise rotation
}
