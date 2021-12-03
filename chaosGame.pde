int start, i;
PVector p, v, q;
ArrayList<PVector> vertices = new ArrayList<PVector>();

void setup() {
  fullScreen();
  background(0);
  translate(width/2, height/2);
}

void mouseClicked() {
  fill(255);
  vertices.add(new PVector(mouseX, mouseY));
  ellipse(vertices.get(vertices.size()-1).x, vertices.get(vertices.size()-1).y, 5, 5);
}

void draw() {
  if (start ==1) {
    i = int(random(vertices.size()-1));//randomizer();
    v = vertices.get(i);
    p = vertices.get(vertices.size()-1);
    vertices.set(vertices.size()-1, new PVector(int((p.x+v.x)/2), int((p.y+v.y)/2)));
    q = vertices.get(vertices.size()-1);
    fill(255);
    ellipse(q.x, q.y, 5, 5);
  }
}
void keyPressed() {
  start = 1;
}

/*int randomizer(ArrayList, int) {
  //restrictions on the randomizer
}*/
