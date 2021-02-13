import processing.pdf.*;

  //Bottom
  float BRposX;
  float BRposY;
  float BRwidth;
  float BRheight; 
  
  //Left
  float LRposX;
  float LRposY;
  float LRwidth;
  float LRheight;

  //Right
  float RRposX;
  float RRposY;
  float RRwidth;
  float RRheight;

  //Top
  float TRposX;
  float TRposY;
  float TRwidth;
  float TRheight;
  
  boolean drag;

void setup(){
  //fullScreen();
  size(750,500);
  background(255);
  frameRate(60);
  //Bottom
  BRposX=0;
  BRposY=height*.857;
  BRwidth=width;
  BRheight= height/7; 
  
  //Left
  LRposX=0;
  LRposY=0;
  LRwidth=width/8;
  LRheight= height;

  //Right
  RRposX=width*.875;
  RRposY=0;
  RRwidth=width/8;
  RRheight= height;

  //Top
  TRposX=-1;
  TRposY=-1;
  TRwidth=width+2;
  TRheight= height/20;
}  

  void draw() {
    if (drag == true) {
      line(pmouseX, pmouseY, mouseX, mouseY );
    }
    
    //Bottom
    noStroke();
    fill(235,235,235);
    rect(BRposX, BRposY, BRwidth, BRheight);
   
    
    //Left
    noStroke();
    fill(235,235,235);
    rect(LRposX,LRposY,LRwidth,LRheight);
  
    //Right
    noStroke();
    fill(235,235,235);
    rect(RRposX,RRposY,RRwidth,RRheight);
  
    //Top
    stroke(2);
    fill(161, 202, 255);
    rect(TRposX, TRposY, TRwidth, TRheight);
}
    
    void mousePressed(){
      if(mouseX>LRwidth-LRposX && mouseX<RRposX && mouseY> TRheight-TRposY && mouseY<BRposY){
        drag=true;
      }
    }
    
    void mouseReleased(){
    drag=false;
    }
