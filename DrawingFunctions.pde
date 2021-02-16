// I'm keeping the draw function and mouseClicked functions in their own
// seperate tabs cause you are putting the functions you make into either
// one of these.

  void draw() {
    background(255);
    lineDrawer();
    circleDrawer(); 
    toolBars();
    exitButton();
    
    pixelButton();
    brushButton();
    lineButton();
    curveButton();
    squareButton();
    circleButton();
    eraserButton();
    
    color1Button();
    color2Button();
    color3Button();
    color4Button();
    color5Button();
    color6Button();
    color7Button();
    color8Button();
    
    
    workspace.beginDraw();
    workspace.endDraw();
    tint(255,255,255,tinter);
    image(workspace,0,0);
    
    toolbar.beginDraw();
    toolbar.endDraw();
    noTint();
    image(toolbar,0,0);
}

void toolBars(){
    //Bottom
    tint(255,255,255, 255);
    toolbar.beginDraw();
    toolbar.noStroke();
    toolbar.fill(235,235,235);
    toolbar.rect(BRposX, BRposY, BRwidth, BRheight);
   
    //Left
    toolbar.noStroke();
    toolbar.fill(235,235,235);
    toolbar.rect(LRposX,LRposY,LRwidth,LRheight);
  
    //Right
    toolbar.noStroke();
    toolbar.fill(235,235,235);
    toolbar.rect(RRposX,RRposY,RRwidth,RRheight);
  
    //Top
    toolbar.fill(161, 202, 255);
    toolbar.rect(TRposX, TRposY, TRwidth, TRheight); 
    toolbar.endDraw();
}

void exitButton(){
    toolbar.beginDraw();
    toolbar.noStroke();
    toolbar.fill(255, 0, 0);
    toolbar.rect(width*.965, TRposY, TRwidth/28, TRheight);
    toolbar.textSize(width/25);
    toolbar.fill(255, 255, 255);
    toolbar.text('x', width*.971, TRheight/1.20);
    toolbar.endDraw();
}




void pixelButton(){
    //Left
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    
    toolbar.fill(122);
    
    toolbar.rect(TRposX*-1,LRheight/5.6,LRwidth*.95,LRheight/11,10);
    toolbar.textSize(width/40);
    toolbar.fill(255, 255, 255);
    toolbar.text("Pixel", TRposX*-1*50, LRheight/4.25);
    toolbar.endDraw();
 
}


void brushButton(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(152);
    toolbar.rect(TRposX*-1,LRheight/3.63,LRwidth*.95,LRheight/11,10);
    toolbar.textSize(width/45);
    toolbar.fill(255, 255, 255);
    toolbar.text("Brush", TRposX*-1*50, LRheight/3);
    toolbar.endDraw();
}


void lineButton(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(182);
    toolbar.rect(TRposX*-1,LRheight/2.68,LRwidth*.95,LRheight/11,10);
     toolbar.textSize(width/40);
    toolbar.fill(255, 255, 255);
    toolbar.text("Line", TRposX*-1*50, LRheight/2.33);
    toolbar.endDraw();
}

void curveButton(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(192);
    toolbar.rect(TRposX*-1,LRheight/2.12,LRwidth*.95,LRheight/11,10);
    toolbar.textSize(width/45);
    toolbar.fill(255, 255, 255);
    toolbar.text("Curve", TRposX*-1*50, LRheight/1.89);

    
    toolbar.endDraw();
}

void squareButton(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(212);
    toolbar.rect(TRposX*-1,LRheight/1.755,LRwidth*.95,LRheight/11,10);
        toolbar.textSize(width/52);
    toolbar.fill(255, 255, 255);
    toolbar.text("Square", TRposX*-1*50, LRheight/1.6);
    
    toolbar.endDraw();
}

void circleButton(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(192);
    toolbar.rect(TRposX*-1,LRheight/1.5,LRwidth*.95,LRheight/11,10);
    toolbar.textSize(width/45);
    toolbar.fill(255, 255, 255);    
    toolbar.text("Circle", TRposX*-1*50, LRheight/1.375);
    toolbar.endDraw();
}


void eraserButton(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(102);
    toolbar.rect(TRposX*-1,LRheight/1.31,LRwidth*.95,LRheight/11,10);
    toolbar.textSize(width/50);
    toolbar.fill(255, 255, 255);
    toolbar.text("Eraser", TRposX*-1*50, LRheight/1.22);
    toolbar.endDraw();
}


void color1Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(0);
    toolbar.rect(width/7.48, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}

void color2Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(0,0,255);
    toolbar.rect(width/4.4397, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}

void color3Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(0,255,0);
    toolbar.rect(width/3.155, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}

void color4Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(255,255,0);
    toolbar.rect(width/2.446, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}

void color5Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(255,165,0);
    toolbar.rect(width/1.999, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}

void color6Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(255,0,0);
    toolbar.rect(width/1.689, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}
void color7Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(255,192,203);
    toolbar.rect(width/1.4629, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}
void color8Button(){
    toolbar.beginDraw();
    
    toolbar.stroke(1);
    toolbar.fill(255,0,255);
    toolbar.rect(width/1.29, BRposY, BRwidth/11, BRheight);
    toolbar.endDraw();
}
