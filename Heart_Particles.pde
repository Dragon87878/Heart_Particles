ArrayList<Particle> heart = new ArrayList<Particle>();
float a = 0, r = 10;


void setup() {
  size(400, 400);
}

void draw() {
  background(0);
  translate(width/2, height/2);

  for (int i = heart.size() - 1; i >= 0; i--) {
    Particle v = heart.get(i);
    v.update();
    v.show();
    if (v.finished()) {
      heart.remove(i);
    }
  }

  float x = r* 16* pow(sin(a), 3);
  float y = -r*(13* cos(a) - 5*cos(2*a) - 2*cos(3*a)- cos(4*a));

  heart.add(new Particle(x, y));
  a += 0.05;
}
