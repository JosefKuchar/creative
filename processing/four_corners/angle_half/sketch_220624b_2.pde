void setup() {
   size(4000, 4000);
   
   int size = 31;
   
   for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      float distance = dist(i,j, width/2, height/2);
      color c1 = color(255, 175, 189);
      color c2 = color(255, 195, 160);
      set(i,j,lerpColor(c1, c2, distance / (width/2)));
    }
  }
   
   for (int i = 0; i < width; i++) {
     for (int j = 0; j < height; j++) {
       boolean leftTop = floor(atan2(i-width/2, j) / (PI / size)) % 2 == 0;
       boolean leftBottom = floor(atan2(i-width/2, j - height) / (PI / size)) % 2 == 0;
       boolean rightTop = floor(atan2(i, j - height/2) / (PI / size)) % 2 == 0;
       boolean rightBottom = floor(atan2(i - width, j - height/2) / (PI / size)) % 2 == 0;
       
       if (leftTop ^ leftBottom ^ rightTop ^ rightBottom) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
   save("output.png");
}
