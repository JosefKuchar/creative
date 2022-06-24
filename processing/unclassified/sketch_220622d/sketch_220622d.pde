void setup() {
   size(800, 800);
   
   for (int i = 0; i < width; i++) {
     for (int j = 0; j < height; j++) {
       boolean leftTop = floor(dist(i,j,0,0) / 50) % 2 == 0;
       boolean rightTop = floor(dist(i,j,width,0) / 50) % 2 == 0;
       boolean bottom = floor(dist(i,j,width/2,sqrt(width*width-width*width/2)) / 50) % 2 == 0;
       
       
       if (leftTop ^ bottom ^ rightTop) {
         set(i,j,color(0));
       }
     }
   }
   updatePixels();
}
