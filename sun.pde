float sunSize = 50;
float[] rayAngles = {-QUARTER_PI, 0, QUARTER_PI, HALF_PI, -HALF_PI, -QUARTER_PI - PI, -PI, QUARTER_PI - PI};
float rotationSpeed = 0.005;
color sunColor;

void setup() {
  size(400, 400);
  sunColor = color(220, 100, 30);
}

void draw() {
  background(255);
  translate(width / 2, height / 2);
  rotateSun();
  drawSun();
}

void rotateSun() {
  for (int i = 0; i < rayAngles.length; i++) {
    rayAngles[i] += rotationSpeed;
  }
}

void drawSun() {
  fill(sunColor);
  ellipse(0, 0, sunSize * 2, sunSize * 2);
  
  stroke(sunColor);
  strokeWeight(4);
  for (float angle : rayAngles) {
    float rayLength = sunSize * 1.5;
    float rayEndX = cos(angle) * rayLength;
    float rayEndY = sin(angle) * rayLength;
    line(0, 0, rayEndX, rayEndY);
  }
}
