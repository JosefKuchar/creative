void setup() {
   size(800, 800);
   
   for (int i = 0; i < width; i++) {
     for (int j = 0; j < height; j++) {
       float angle = atan2(i - width / 2, j - height / 2);
       float distance = dist(i, j, width / 2, height / 2) + (noise(angle* 10)+1.0) * 50;
       
       if (floor(distance / 50) % 2 == 0) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
}
