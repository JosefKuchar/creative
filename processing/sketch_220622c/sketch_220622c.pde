void setup() {
   size(800, 800);
   
   for (int i = 0; i < width; i++) {
     for (int j = 0; j < height; j++) {
       boolean leftTop = floor(dist(i,j,0,0) / 50) % 2 == 0;
       boolean rightTop = floor(dist(i,j,width,0) / 50) % 2 == 0;
       boolean leftBottom = floor(dist(i,j,0,height) / 50) % 2 == 0;
       boolean rightBottom = floor(dist(i,j,width,height) / 50) % 2 == 0;
       
       if (leftTop ^ leftBottom ^ rightTop ^ rightBottom) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
}
