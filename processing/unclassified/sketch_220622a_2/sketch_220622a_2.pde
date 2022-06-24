void setup() {
   size(800, 800);
   
   for (int i = 0; i < width; i++) {
     for (int j = 0; j < height; j++) {
       boolean left = floor(atan2(i, j) / (PI / 50)) % 2 == 0;
       boolean right = floor(atan2(i - width, j) / (PI / 50)) % 2 == 0;
       
       if (left ^ right) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
}
