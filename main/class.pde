class Clicker{
  private int x;
  private int y;
  
  private int sizeX;
  private int sizeY;
  private float currentSizeX;
  private float currentSizeY;
  
  private int clickValue;
  private int multi;
  
  private String type;
  
  Clicker(int x, int y, int sizeX, int sizeY, int clickValue, int multi, String type) {
    this.x = x;
    this.y = y;
    this.sizeX = sizeX;
    this. sizeY = sizeY;
    this.currentSizeX = sizeX * 0.75;
    this.currentSizeY = sizeY * 0.75;
    this.clickValue = clickValue;
    this.multi = multi;
    this.type = type;
  }
  
  int getX() { return x; }
  int getY() { return y; }
  int getSizeX() { return sizeX; }
  int getSizeY() { return sizeY; }
  int getClickValue() { return clickValue; }
  int getMulti() { return multi; }
  String getType() { return type; }
  
  void tegnBoks(){
    fill(255);
    //rect(x, y, width/3,height/3*2);
  }
  void tegnCirkel(){
    fill(0);
    float cirkelSizeX = sizeX * 0.75;
    float cirkelSizeY = sizeY * 0.75;
    if (sqrt(pow(mouseX-(x+sizeX), 2)+pow(mouseY-(y+sizeY/2), 2)) <= currentSizeX/2) {
      currentSizeX = lerp(currentSizeX,cirkelSizeX*1.1,0.1);
      currentSizeY = lerp(currentSizeY,cirkelSizeY*1.1,0.1);
    } else {
      currentSizeX = lerp(currentSizeX,cirkelSizeX,0.1);
      currentSizeY = lerp(currentSizeY,cirkelSizeY,0.1);
    }
    circle(x + sizeX, y + sizeY/2, currentSizeX);
  }
}
