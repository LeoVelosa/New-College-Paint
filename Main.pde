  //Make tools work if tool=X. For example, LineDrawer works if tool = 1. Change tool when button clicked 
  int tool;
  // Change col to equal color when color button clicked
  color col;
  //This is where the drawing takes place. Due to us needing a background constantly going through
  //to make the circle not spawn 1m circles when we drag it around, the work around to this is going
  //to be we spawn the circle in the front, reduce opacity of the workspace layer by 50%-25%, so that
  //we can see where the circle is going to appear, dispite the circle being on the bottom layer of
  //the picture. Then we take the cordinates when we stop dragging our mouse, and plot the circle in
  //the same cordinates as circle before we let go. This method will also apply to the rectangle, curve,
  //and selection. This has been completed for the circle function.
  PGraphics workspace;
  PGraphics toolbar;


  void setup(){
  //fullScreen();
  size(750,500);
  background(255);
  frameRate(60);
  //The toolbarCords MUST be in here.
  toolbarCords();
  tool=2;
  col=color(0, 0, 0);
  //Layer must be here. This creates our drawing workspace
  workspace= createGraphics(width, height);
  toolbar= createGraphics(width, height);
  }  


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

//These are just the plotpoints of where the bars go and such. Used for other things, such as exit button.
void toolbarCords(){
  //Bottom
  BRposX=0;
  BRposY=height*.857;
  BRwidth=width;
  BRheight=height/7; 
  
  //Left
  LRposX=0;
  LRposY=0;
  LRwidth=width/8;
  LRheight=height;

  //Right
  RRposX=width*.875;
  RRposY=0;
  RRwidth=width/8;
  RRheight=height;

  //Top
  TRposX=-width/750;
  TRposY=-height/500;
  TRwidth=width+2;
  TRheight=height/20;
}
