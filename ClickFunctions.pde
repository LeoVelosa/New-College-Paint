import java.util.Queue; 
import java.util.LinkedList; 
// I'm keeping the draw function and mouseClicked functions in their own
// seperate tabs cause you are putting the functions you make into either
// one of these.

 void mouseClicked(){
   
   exitButtonFunction();
   
   pixelButtonFunction();
   brushButtonFunction();
   lineButtonFunction();
   curveButtonFunction();
   squareButtonFunction();
   circleButtonFunction();
   eraserButtonFunction();
   color1ButtonFunction();
   color2ButtonFunction();
   color3ButtonFunction();
   color4ButtonFunction();
   color5ButtonFunction();
   color6ButtonFunction();
   color7ButtonFunction();
   color8ButtonFunction();
 }

// to make a flash just fill in a white square of the rect for the button in the if statement

void exitButtonFunction(){
   if(mouseX>width*.964 && mouseY<TRheight && mouseY>-1 && mouseX<width){
     exit(); 
   }
}



void pixelButtonFunction(){

  if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/5.6 && mouseY<LRheight/3.69){
    rect(TRposX*-1,LRheight/5.6,LRwidth*.95,LRheight/11);
    
  }
 
 
}


void brushButtonFunction(){
  if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/3.67 && mouseY<LRheight/2.69){
    rect(TRposX*-1,LRheight/3.63,LRwidth*.95,LRheight/11,10);

  }  
}


void lineButtonFunction(){
  if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/2.687 && mouseY<LRheight/2.16){
    rect(TRposX*-1,LRheight/2.68,LRwidth*.95,LRheight/11,10);
 
  }
}

void curveButtonFunction(){
  if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/2.13 && mouseY<LRheight/1.78){
    rect(TRposX*-1,LRheight/2.12,LRwidth*.95,LRheight/11,10);

  }
}

void squareButtonFunction(){
    if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/1.76 && mouseY<LRheight/1.515){
      rect(TRposX*-1,LRheight/1.755,LRwidth*.95,LRheight/11,10);
      
    }
}

void circleButtonFunction(){
    if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/1.504 && mouseY<LRheight/1.319){
      rect(TRposX*-1,LRheight/1.5,LRwidth*.95,LRheight/11,10);

    }
}


void eraserButtonFunction(){
    if(mouseX>0 && mouseX<LRwidth*.95 && mouseY>LRheight/1.312 && mouseY<LRheight/1.17){
      rect(TRposX*-1,LRheight/1.31,LRwidth*.95,LRheight/11,10);

    }
}


void color1ButtonFunction(){
    if(mouseX>width/7.48 && mouseX<(width/7.48+BRwidth/11) && mouseY>BRposY && mouseY<height){
      fill(122);
      rect(width/7.48, BRposY, BRwidth/11, BRheight);
    }
}

void color2ButtonFunction(){
    if(mouseX>width/4.4397 && mouseX<(width/4.4397+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/4.4397, BRposY, BRwidth/11, BRheight);
     }

}

void color3ButtonFunction(){
    if(mouseX>width/3.155 && mouseX<(width/3.155+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/3.155, BRposY, BRwidth/11, BRheight);
    }
 
 }

void color4ButtonFunction(){
    if(mouseX>width/2.446 && mouseX<(width/2.446+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/2.446, BRposY, BRwidth/11, BRheight);
    }
}

void color5ButtonFunction(){
    if(mouseX>width/1.999 && mouseX<(width/1.999+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/1.999, BRposY, BRwidth/11, BRheight);
  }
 
 }

void color6ButtonFunction(){
    if(mouseX>width/1.689 && mouseX<(width/1.689+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/1.689, BRposY, BRwidth/11, BRheight);
    }
}
void color7ButtonFunction(){
    if(mouseX>width/1.4629 && mouseX<(width/1.4629+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/1.4629, BRposY, BRwidth/11, BRheight);
    }
}
void color8ButtonFunction(){
    if(mouseX>width/1.29 && mouseX<(width/1.29+BRwidth/11) && mouseY>BRposY && mouseY<height){
      rect(width/1.29, BRposY, BRwidth/11, BRheight);
    }
}










//Not working, do not use, its very slow.
/*
void bucketFunction(){
  color fillColor=get(mouseX,mouseY);
  Queue<Cords> DFS= new LinkedList<Cords>();
//  Queue<Cords> proxyDFS= new LinkedList<Cords>();
  DFS.add(new Cords(mouseX,mouseY));

  while(DFS.size() > 0){
    int size=DFS.size();
    int l=0;
  while(l<size){
    
    int x=DFS.peek().getCordX();
    int y=DFS.peek().getCordY();

    println(x, y);

    set(x,y, color(0));    
    
    if(get(x+1,y-1)== fillColor && !DFS.contains(new Cords(x+1,y-1))){
    DFS.add(new Cords(x+1,y-1));
    }
    
    if(get(x+1,y+1)== fillColor && !DFS.contains(new Cords(x+1,y+1))){
    DFS.add(new Cords(x+1,y+1));
    }
    if(get(x-1,y-1)== fillColor && !DFS.contains(new Cords(x-1,y-1))){
    DFS.add(new Cords(x-1,y-1));    
    }
    if(get(x-1,y+1)== fillColor && !DFS.contains(new Cords(x-1,y+1))){
    DFS.add(new Cords(x-1,y+1));          
    }
    DFS.remove();
    l++;
  }

}

}
*/
