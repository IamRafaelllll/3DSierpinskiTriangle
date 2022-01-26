class Boxy {
  PVector pos;
  float r;

  Boxy(float x, float y, float z, float Size) {
    pos = new PVector(x, y, z);
    r = Size;
  }

  ArrayList<Boxy> recursion() {
    ArrayList<Boxy> DHLBoxes = new ArrayList<Boxy>();
    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        for (int z = -1; z < 2; z++) {
          int sum = abs(x) + abs(y) + abs(z);
          float newR = r/3;
          if (sum > 1) {
            Boxy AmazonPrime = new Boxy(pos.x+x*newR, pos.y+ y*newR, pos.z+z*newR, newR);
            DHLBoxes.add(AmazonPrime);
          }
        }
      }
    }
    return DHLBoxes;
  }

  void show() {
     pushMatrix();
    translate(pos.x, pos.y, pos.z);
    stroke(255);
    fill(55,55,55);
    box(r);
    popMatrix();
  }
}
