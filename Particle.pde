class Particle {
  float x;
  float y;
  float vx;
  float vy;
  float alpha;

  Particle(float x1, float y1) {
    x = x1;
    y = y1;
    vx = random(-0.25, 0.25);
    vy = random(-0.5, 0);
    alpha = 255;
  }

  boolean finished() {
    return alpha < 0;
  }

  void update() {
    x += vx;
    y += vy;
    alpha -= 1;
  }

  void show() {
    noStroke();
    //stroke(255);
    fill(#FFBFDF, alpha);
    ellipse(this.x, this.y, 16, 16);
  }
}
