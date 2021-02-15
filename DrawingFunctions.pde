// I'm keeping the draw function and mouseClicked functions in their own
// seperate tabs cause you are putting the functions you make into either
// one of these.

  void draw() {
    background(255);
    circleDrawer(); 
    lineDrawer();
    toolBars();
    exitButton();


}

void toolBars(){
    //Bottom
    workspace.beginDraw();
    workspace.noStroke();
    workspace.fill(235,235,235);
    workspace.rect(BRposX, BRposY, BRwidth, BRheight);
   
    //Left
    workspace.noStroke();
    workspace.fill(235,235,235);
    workspace.rect(LRposX,LRposY,LRwidth,LRheight);
  
    //Right
    workspace.noStroke();
    workspace.fill(235,235,235);
    workspace.rect(RRposX,RRposY,RRwidth,RRheight);
  
    //Top
    workspace.fill(161, 202, 255);
    workspace.rect(TRposX, TRposY, TRwidth, TRheight); 
    workspace.endDraw();
    image(workspace,0,0);
}

void exitButton(){
    workspace.beginDraw();
    workspace.noStroke();
    workspace.fill(255, 0, 0);
    workspace.rect(width*.965, TRposY, TRwidth/28, TRheight);
    workspace.textSize(width/25);
    workspace.fill(255, 255, 255);
    workspace.text('x', width*.971, TRheight/1.20);
    workspace.endDraw();
    image(workspace,0,0);
}
