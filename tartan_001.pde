// tartan by Rupert Russell
// 19/09/2020


int size = 100;
float noiseScale = 200;
float red, green, blue;

void setup() {
  size(9900, 9900);
  stroke(255);
  noLoop();
}

void draw() {
    
int seed = (int(random(255)));
noiseSeed(seed);
  background(204);
  for (int xPos = 0; xPos < width; xPos = xPos + size) {
    for (int yPos = 0; yPos < height; yPos = yPos + size) {
      fill(0);
      
      
      red = noise(xPos) *noiseScale ;
      green = noise(yPos) *noiseScale;
      blue = noise(xPos) *noiseScale;
      
      // println("red =" + red + " green =" + green + " blue =" + blue);
      
      fill(red,green,blue);
      stroke(red,green,blue);
          
    
      square(xPos, yPos, size);
    }
  }
  save("tartan" + seed + ".png");
  println("saved tartan_" + seed + ".png");
}

void mouseClicked(){
draw();  
}
