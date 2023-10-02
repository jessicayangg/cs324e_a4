Planet planet1;
Planet planet2;
Star[] stars = new Star[200];  // Array to hold Star objects

void setup() {
  size(500, 500);
  
  // Create stars
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  
  // Create moons for each planet with varying distances and sizes
  Moons[] moons1 = { new Moons(50, 10), new Moons(70, 15) };
  Moons[] moons2 = { new Moons(40, 10), new Moons(60, 12), new Moons(80, 14) };
  
  // Create rings for each planet
  Ring ring1 = new Ring(75, 50);
  Ring ring2 = new Ring(60, 40);
  
  // Create planets with different properties, moons, and rings
  planet1 = new Planet(width/3, 50, color(150, 100, 100), moons1, ring1);
  planet2 = new Planet(2*width/3, 30, color(100, 150, 100), moons2, ring2);
}

void draw() {
  background(0);
  
  // Display stars
  for (int i = 0; i < stars.length; i++) {
    if (random(1) < 0.01) stars[i].twinkle();
    stars[i].display();
  }
  
  planet1.display();
  planet2.display();
}
