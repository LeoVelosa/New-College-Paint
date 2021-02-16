//Eraser is white line. Also, change stroke for diffrent line sizes
 
 int weight;
 PImage img; 
 int mouseRecordX;
 int mouseRecordY;

 int tinter;
 //Tool is a global variable used to switch between using tools
 //Drag is a variable to tell us when we are dragging something
 //workspace.beginDraw() allows us to start drawing on the layer workspace
 //workspace.endDraw() allows us to stop drawing on the layer workspace
 //image() displays the layer. image(layer,xCord,yCord). Set x and y cords to 0 99% of time.
 
  
 void lineDrawer(){
   if(tool==1){
    if (drag == true) {
      tinter=255;
      workspace.beginDraw();
      //The lines size
      workspace.strokeWeight(10); 
      //The lines color
      workspace.stroke(col);
      //Line and its cords. pmouseX/Y is past position of mouse and mouseX/Y is 
      //current position
      workspace.line(pmouseX, pmouseY, mouseX, mouseY);
      workspace.endDraw();
     // tint(255, 255);
    }
  }
}
int counter;
 void circleDrawer(){
   if(tool==2){
         if (drag == true) {
           counter=1;
           stroke(col);
           noFill();
           ellipse(mouseRecordX, mouseRecordY, (mouseX-mouseRecordX)*2, (mouseY-mouseRecordY)*2);
           tinter=50; 
       }
       if(drag==false){
          if(counter==1){
            workspace.beginDraw();
            workspace.noFill();
            workspace.ellipse(mouseRecordX, mouseRecordY, (mouseX-mouseRecordX)*2, (mouseY-mouseRecordY)*2);
            workspace.endDraw();
            counter=0;
      }
       }
   }   
 }
 
 /*
            //tint(255, 127);
            img=createImage(width, height, RGB);
           img.loadPixels();
           img.updatePixels();
  */
