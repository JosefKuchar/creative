void setup() {
   size(4000, 4000);
   
   int size = width / 16;
   
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
       boolean leftTop = floor(dist(i,j,width/2,0) / size) % 2 == 0;
       boolean rightTop = floor(dist(i,j,width,height/2) / size) % 2 == 0;
       boolean leftBottom = floor(dist(i,j,0,height/2) / size) % 2 == 0;
       boolean rightBottom = floor(dist(i,j,width/2,height) / size) % 2 == 0;
       
       if (leftTop ^ leftBottom ^ rightTop ^ rightBottom) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
   save("out.png");
}
