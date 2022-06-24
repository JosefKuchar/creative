void setup() {
  size(800, 600 );
  
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float distance = pow(dist(i, j, width / 2, height / 2),0.2);
      float angle = atan2(i - width / 2, j - height / 2);
      
      if (floor(distance*6) % 2 == 0 ^ floor(angle / (PI / 51))  %2 == 0) {
        set(i, j, color(0));
      }
    }
  }
  
  updatePixels();
  save("tst.png");
}
