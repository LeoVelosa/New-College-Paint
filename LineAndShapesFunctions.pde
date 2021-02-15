//Eraser is white line. Also, change stroke for diffrent line sizes
 
 int weight;
 PImage img; 
 int mouseRecordX;
 int mouseRecordY;
 
 //Tool is a global variable used to switch between using tools
 //Drag is a variable to tell us when we are dragging something
 //workspace.beginDraw() allows us to start drawing on the layer workspace
 //workspace.endDraw() allows us to stop drawing on the layer workspace
 //image() displays the layer. image(layer,xCord,yCord). Set x and y cords to 0 99% of time.
 
  
 void lineDrawer(){
   if(tool==1){
    if (drag == true) {
      workspace.beginDraw();
      //The lines size
      workspace.strokeWeight(weight); 
      //The lines color
      workspace.stroke(col);
      //Line and its cords. pmouseX/Y is past position of mouse and mouseX/Y is 
      //current position
      workspace.line(pmouseX, pmouseY, mouseX, mouseY);
      workspace.endDraw();
      image(workspace,0,0);
    }
  }
}

 void circleDrawer(){
   if(tool==2){
         if (drag == true) {
           stroke(col);
           noFill();
           ellipse(mouseRecordX, mouseRecordY, (mouseX-mouseRecordX)*2, (mouseY-mouseRecordY)*2);
         }
   }
   
 }
 
 /*
            //tint(255, 127);
            img=createImage(width, height, RGB);
           img.loadPixels();
           img.updatePixels();
  */
