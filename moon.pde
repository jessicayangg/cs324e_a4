float moonDiameter = 100;
float craterDiameter = 8;
float craterRotation = 0;
float rotationSpeed = 0.050;
color moonColor = color(200, 220, 255);
color craterColor = color(100, 120, 150);

void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  
  fill(moonColor);
  noStroke();
  ellipse(0, 0, moonDiameter, moonDiameter);
  
  pushMatrix();
  rotate(craterRotation);
  fill(craterColor);
  ellipse(moonDiameter / 4, 0, craterDiameter, craterDiameter);
  popMatrix();
  
  craterRotation += rotationSpeed;
}
