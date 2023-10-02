class Ring {
  float outerRadius, innerRadius;
  
  Ring(float outerRadius, float innerRadius) {
    this.outerRadius = outerRadius;
    this.innerRadius = innerRadius;
  }
  
  void display(float x, float y) {
    pushMatrix();
    translate(x, y);
    noFill();
    stroke(200);
    ellipse(0, 0, outerRadius * 2, innerRadius * 2);  // Outer ring
    ellipse(0, 0, innerRadius * 2, outerRadius * 2);  // Inner ring
    popMatrix();
  }
}
