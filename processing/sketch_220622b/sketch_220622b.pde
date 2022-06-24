void setup() {
   size(800, 800);
   
   for (int i = 0; i < width; i++) {
     for (int j = 0; j < height; j++) {
       boolean leftTop = floor(atan2(i, j) / (PI / 50)) % 2 == 0;
       boolean leftBottom = floor(atan2(i, j - height) / (PI / 50)) % 2 == 0;
       boolean rightTop = floor(atan2(i - width, j) / (PI / 50)) % 2 == 0;
       boolean rightBottom = floor(atan2(i - width, j - height) / (PI / 50)) % 2 == 0;
       
       if (leftTop ^ leftBottom ^ rightTop ^ rightBottom) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
}
